<template>
  <section class="container">
  
    <hr>
  
    <section class="hero is-primary">
  
      <div class="hero-body">
  
        <div class="container">
  
          <h1 class="title">
  
            이력
  
          </h1>
  
          <h2 class="subtitle">
  
            상장 및 단기강좌 수료증
  
          </h2>
  
        </div>
  
      </div>
  
    </section>
  
    <div class="box">
  
      <div class="tile is-vertical is-8" style="width:100%;">
  
        <div class="tile">
  
          <div class="tile is-parent is-vertical">
  
            <article class="tile is-child notification is-primary">
  
              <p class="title">상장</p>
  
              <div class="control">
  
                <label for="" class="radio" style="margin-top :5px;">
  
                        <button  class="button is-white" type="aradio" style="margin-top :5px;" v-on:click="pic1">3학년 -1 </button> <br>
  
                        <button class="button is-white" type="aradio"  style="margin-top :5px;"  v-on:click="pic2">3학년 -2 </button> <br>
  
                        <button class="button is-white" type="aradio"  style="margin-top :5px;"  v-on:click="pic3">4학년 -1 </button> <br>
  
                      </label>
  
              </div>
  
            </article>
  
            <article class="tile is-child notification is-warning">
  
              <p class="title">단기 강좌</p>
  
              <button class="button is-white" type="aradio" style="margin-top :5px;">3학년 -1 </button> <br>
  
            </article>
  
          </div>
          <div class="tile is-parent">
  
            <article class="tile is-child notification is-info">
  
              <p class="title">사진 및 설명</p>
  
              <figure class="image is-4by3">
                 <img v-if="pic1" src="https://bulma.io/images/placeholders/640x480.png">
                  <img v-elseif="pic2" src="~static/logo.png">
                   <img v-if="pic3" src="https://bulma.io/images/placeholders/640x480.png">
              </figure>
            </article>
  
          </div>

        </div>
      </div>
  
    </div>
  
  
  
  
  
  </section>
</template>
<script>
export default {

    data(){
      return {pic1:true
      };
    }
  };
</script>