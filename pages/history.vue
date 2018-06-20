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
  
          <div class="tile is-parent is-vertical"  style="width: 50%;">
  
           <article class="message is-black">
                 <div class="message-header">상장
                 </div>
  
              <div class="control">
  
                <label for="" class="radio" style="margin-top :5px;">
  
                        <button  class="button is-white" type="aradio" style="margin-top :5px;" v-on:click="imageView('1')">3학년 1학기 상장 (버튼을 클릭해주세요).</button> <br>
                        <button class="button is-white" type="aradio"  style="margin-top :5px;"  v-on:click="imageView('2')">3학년 2학기 상장 (버튼을 클릭해주세요).</button> <br>
                        <button class="button is-white" type="aradio"  style="margin-top :5px;"  v-on:click="imageView('3')">4학년 1학기 상장 (버튼을 클릭해주세요).</button> <br>
  
                      </label>
  
              </div>
  
            </article>
  
            <article class="message is-black">
                 <div class="message-header">단기강좌
                 </div>
  
              <button class="button is-white" type="aradio" style="margin-top :5px;" v-on:click="imageView('4')">3학년 1학기 단기강좌 (버튼을 클릭해주세요).</button> <br>
  
            </article>
  
          </div>
          <div class="tile is-parent"  style="width: 50%;">
  
           <article class="message is-black">
                 <div class="message-header">사진
                 </div>
          
                 <img v-if="pic1==='A'" src="~static/3-1.jpg">
                   <img v-else-if="pic1==='B'" src="~static/3-2.png">
                     <h1 v-else-if="pic1==='C'" class="title is-1">추후 추가 예정</h1>
                       <img v-else-if="pic1==='D'" src="~static/certificate.jpg">
                  
            </article>
  
          </div>

        </div>
      </div>
  
    </div>
  
  
  
  
  
  </section>
</template>
<script>
export default {
  methods: {
    imageView: function(val) {
      if (val == "1") this.pic1 = "A";
      else if (val == "2") this.pic1 = "B";
      else if (val == "3") this.pic1 = "C";
      else if (val == "4") this.pic1 = "D";
    }
  },

  data() {
    return {
      pic1: true
    };
  }
};
</script>