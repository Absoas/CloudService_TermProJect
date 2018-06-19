<template>
  <section class="container">
  
    <hr>
  
    <section class="hero is-primary">
  
      <div class="hero-body">
  
        <div class="container">
  
          <h1 class="title">
  
            기술
  
          </h1>
  
          <h2 class="subtitle">
  
            지금까진 배운 기술 , 관심있는 기술
  
          </h2>
  
        </div>
  
      </div>
  
    </section>
  
    <div class="box">
  
      <div class="media-content">
  
        <div class="content">
  
          <p>
  
            <strong>지금까지 배운 기술들 :</strong>
  
            <br>
            
            1. C언어  <br> <a class="button is-primary"  @click="ClkViceo('c')">  >C언어란? (동영상)</a><br><br>
            2. JAVA (Android) <br> <a class="button is-primary" @click="ClkViceo('java')" > >JAVA란? (동영상)</a> <br><br>
            3. javascript (node.js, vue.js , nuxt.js ) <br><a class="button is-primary" @click="ClkViceo('js')">   >JavaScript란? (동영상)</a> <br><br>
     
          </p>
  
          <p>
  
            <strong>관심있는 기술들 :</strong>
  
            <br>
  
          </p>
  
        </div>
  
      </div>
  
    </div>
  
  </section>
</template>

<script>
  export default {
  methods: {
    ClkViceo: function (id) {

      switch(id){
        case 'c': 
            window.open("https://www.youtube.com/embed/HNcOOzo2oU4", "네이버새창",
             "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
        break;

        case 'java':
            window.open("https://www.youtube.com/embed/oLXiRXzhJuI", "네이버새창",
             "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
        break;

        case 'js':
            window.open("https://www.youtube.com/embed/PZIPsKgWJiw?list=PLuHgQVnccGMA4uSig3hCjl7wTDeyIeZVU", "네이버새창",
             "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
        break;
      }
 
       } 
    }
  }


</script>