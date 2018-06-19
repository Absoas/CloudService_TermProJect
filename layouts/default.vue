<template>
  <div>
  
    <div class="container">
  
      <span>
  
          <nuxt-link to="/" >
  
              <img src="~static/logo.png" width="150" height="50">
  
          </nuxt-link>
        
      </span>
      
      <div id= "colorChange" class="right">

         <span class="margin"> <nuxt-link to="/" > <button id="btn1" @click="change('btn1','btn2','btn3')"  class="button is-primary" >소개</button> </nuxt-link> </span> 
         <span class="margin"> <nuxt-link to="/tech" > <button  id="btn2" @click="change('btn2','btn1','btn3')" class="button is-white" >기술</button> </nuxt-link> </span>
         <span class="margin"> <nuxt-link to="/history"> <button id="btn3" @click="change('btn3','btn1','btn2')" class="button is-white" >이력</button> </nuxt-link> </span>
  
      </div>
   
    </div>
  
    <nuxt/>
  
    <hr>
    <footer class="footer has-text-centered">
  
      <div>2018년 목원대학교 <strong>김용빈</strong>의 포트폴리오 웹사이트입니다.</div>
  
    </footer>
  
  </div>
</template>

<script>
  export default {
  methods: {
    change: function (val1,val2,val3) {
        document.getElementById(val1).className = "button is-primary";
        document.getElementById(val2).className = "button is-white";
        document.getElementById(val3).className = "button is-white";
    }
  }
}

</script>

<style>
  .right {
  
    float: right;
    margin-top: 15px;
  
  }
  .margin{
    margin:5px;
  }
</style>

