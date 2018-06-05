package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DO.Patient_DO;
import DO.T_Patient_DO;
import DO.login_DO;
import DO.nurse_DO;

public class Db_connection {

	Connection conn = null;
	PreparedStatement pstmt = null;

	// Oracle
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521:xc";

	// postgre
	// String jdbc_driver = "org.postgresql.Driver";
	// String jdbc_url = "jdbc:postgresql://localhost:5432/webHtp";

	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "system", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public login_DO selectDB(String id, String pass) {
		connect();
		login_DO ob = new login_DO();
		
		String sql = "select nurse_login.LOGINID,nurse_login.LOGINPW from nurse_login where LOGINID=? and LOGINPW=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);

			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			
			ob.setId(rs.getString("LOGINID"));
			ob.setPass(rs.getString("LOGINPW"));
			
			rs.close();

		} catch (SQLException e) {
			ob = null;
			e.printStackTrace();
		}

		disconnect();

		return ob;
	}
	
	// 신규 주소록 메시지 추가 메서드
	public boolean insertDB(nurse_DO nurse) {
		connect();
		// sql 문자열 , gb_id 는 자동 등록 되므로 입력하지 않는다.

		String sql = "insert into nurse_login values(?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nurse.getId());
			pstmt.setString(2, nurse.getPassword());
			pstmt.setString(3, nurse.getName());
			pstmt.setInt(4, nurse.getTeam());
			pstmt.setString(5, nurse.getPhone());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

//	// 특정 주소록 게시글 가져오는 메서드
//	public Login getDB(int gb_id) {
//		connect();
//
//		String sql = "select * from login";
//		nurse_DO nurse = new nurse_DO();
//
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, gb_id);
//			ResultSet rs = pstmt.executeQuery();
//
//			// 데이터가 하나만 있으므로 rs.next()를 한번만 실행 한다.
//			rs.next();
//			nurse.setId(rs.getInt("id"));
//			nurse.setName(rs.getString("name"));
//			nurse.setPassword(rs.getString("pw"));
//			nurse.setPhone(rs.getString("phone"));
//			nurse.setTeam(rs.getInt("team"));
//			
//
//			rs.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			disconnect();
//		}
//		return nurse;
//	}

	// 전체 주소록 목록을 가져오는 메서드
	
	
	public ArrayList<nurse_DO> getDBList() {
		connect();
		ArrayList<nurse_DO> datas = new ArrayList<nurse_DO>();

		String sql = " select * from nurse_login order by LOGINID asc ";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				nurse_DO nurse = new nurse_DO();

				nurse.setId(rs.getString("LOGINID"));
				nurse.setName(rs.getString("NAME"));
				nurse.setPassword(rs.getString("LOGINPW"));
				nurse.setPhone(rs.getString("PHONE"));
				nurse.setTeam(rs.getInt("TEAM"));				
				datas.add(nurse);

			}
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return datas;
	}
	
	

	public ArrayList<Patient_DO> getDBList1() {
		connect();
		ArrayList<Patient_DO> datas1 = new ArrayList<Patient_DO>();

		String sql = "select patientinfo.NAME,patientinfo.AGE,medical_record.* from patientinfo, medical_record where patientinfo.id = medical_record.id";

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Patient_DO pa = new Patient_DO();

				pa.setId(rs.getInt("ID"));
				pa.setBlood_pressure(rs.getString("BLOOD_PRESSURE"));
				pa.setAge(rs.getString("AGE"));
				pa.setBody_temp(rs.getString("BODY_TEMP"));
				pa.setBpm(rs.getString("BPM"));
				pa.setName(rs.getString("NAME"));
				pa.setPatient_room(rs.getString("PATIENT_ROOM"));
				pa.setRespiration(rs.getString("RESPIRATION"));
				pa.setThe_others(rs.getString("THE_OTHERS"));

				datas1.add(pa);

			}
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return datas1;
	}
	
	public ArrayList<T_Patient_DO> getDBList2() {
		connect();
		ArrayList<T_Patient_DO> datas2 = new ArrayList<T_Patient_DO>();
		
		String sql = "select patientinfo.name,patientinfo.age,medical_record.*,nurse_login.team "
				+ "from patientinfo,medical_record,nurse_login "
				+ "where patientinfo.id = medical_record.id and "
				+ "medical_record.patient_room = '101호' and "
				+ "nurse_login.team = 1 order by patientinfo.id asc";
	
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				T_Patient_DO pp = new T_Patient_DO();

				pp.setId(rs.getInt("ID"));
				pp.setBlood_pressure(rs.getString("BLOOD_PRESSURE"));
				pp.setAge(rs.getString("AGE"));
				pp.setBody_temp(rs.getString("BODY_TEMP"));
				pp.setBpm(rs.getString("BPM"));
				pp.setName(rs.getString("NAME"));
				pp.setPatient_room(rs.getString("PATIENT_ROOM"));
				pp.setRespiration(rs.getString("RESPIRATION"));
				pp.setThe_others(rs.getString("THE_OTHERS"));
				pp.setTeam(rs.getInt("team"));

				datas2.add(pp);

			}
			rs.close();
			
	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return datas2;
	}
	
	public ArrayList<T_Patient_DO> getDBList3() {
		connect();
		ArrayList<T_Patient_DO> datas3 = new ArrayList<T_Patient_DO>();
		
		String sql = "select patientinfo.name,patientinfo.age,medical_record.*,nurse_login.team "
				+ "from patientinfo,medical_record,nurse_login "
				+ "where patientinfo.id = medical_record.id and "
				+ "medical_record.patient_room = '201호' and "
				+ "nurse_login.team = 2 order by patientinfo.id asc";
	
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				T_Patient_DO pp = new T_Patient_DO();

				pp.setId(rs.getInt("ID"));
				pp.setBlood_pressure(rs.getString("BLOOD_PRESSURE"));
				pp.setAge(rs.getString("AGE"));
				pp.setBody_temp(rs.getString("BODY_TEMP"));
				pp.setBpm(rs.getString("BPM"));
				pp.setName(rs.getString("NAME"));
				pp.setPatient_room(rs.getString("PATIENT_ROOM"));
				pp.setRespiration(rs.getString("RESPIRATION"));
				pp.setThe_others(rs.getString("THE_OTHERS"));
				pp.setTeam(rs.getInt("team"));

				datas3.add(pp);

			}
			rs.close();
			
	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return datas3;
	}
	

}
