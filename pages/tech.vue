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

           <div class="tile">
              <div class="tile is-parent is-vertical">
               <article class="tile is-child notification is-danger">
                <p class="title">지금까지 배운 기술들 :</p>
                <p class="subtitle">  1. <img src="~static/c.jpg" width="50dp" height="50dp" alt="">  C언어  <br><br>
               
                 <a class="button is-black"  @click="ClkViceo('c')">  >C언어란? (동영상)</a></p>

                <p class="subtitle">  2. <img src="~static/java.png" width="50dp" height="50dp" alt="">  JAVA (Android) <br><br>
                 
                  <a class="button is-black" @click="ClkViceo('java')" > >JAVA란? (동영상)</a> </p>
          
                <p class="subtitle">  3.    <img src="~static/javascript.jpg" width="50dp" height="50dp" alt="">  javascript (node.js, vue.js , nuxt.js ) <br><br>
                  <a class="button is-black" @click="ClkViceo('js')">   >JavaScript란? (동영상)</a> </p>
               </article>
       
               <article class="tile is-child notification is-warning">
                 <p class="title">관심있는 기술들 :</p>
                 <p class="subtitle">1.  <img src="~static/cc.png" width="50dp" height="50dp" alt="">  C#  <br><br> 
                 <a class="button is-black"  @click="ClkViceo('c#')">  >C#이란? (동영상)</a></p>

                 <p class="subtitle">2.    <img src="~static/Python.png" width="50dp" height="50dp" alt="">Python <br><br> 
                <a class="button is-black" @click="ClkViceo('Python')" > >Python란? (동영상)</a></p>
               </article>
              </div>
           </div>
        </div>
      </div>
  
    </div>
      <article class="message">
            <div class="message-header">
                점유율 현황
            </div>
            <div class="message-body">
                <div id="chartArea"></div>
            </div>
        </article>
  </section>
</template>

<script>
import Graph from "~/plugins/Graph";

export default {
  methods: {
    ClkViceo: function(id) {
      switch (id) {
        case "c":
          window.open(
            "https://www.youtube.com/embed/HNcOOzo2oU4",
            "",
            "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes"
          );
          break;

        case "java":
          window.open(
            "https://www.youtube.com/embed/oLXiRXzhJuI",
            "",
            "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes"
          );
          break;

        case "js":
          window.open(
            "https://www.youtube.com/embed/PZIPsKgWJiw?list=PLuHgQVnccGMA4uSig3hCjl7wTDeyIeZVU",
            "",
            "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes"
          );
          break;

        case "c#":
          window.open(
            "https://www.youtube.com/embed/XJdPcjs8cAw",
            "",
            "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes"
          );
          break;

        case "Python":
          window.open(
            "https://www.youtube.com/embed/XyGWW2W-wgc",
            "",
            "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes"
          );
          break;
      }
    }
  },
    mounted() {
            if (process.client) { Graph('chartArea'); }
        }
};
</script>