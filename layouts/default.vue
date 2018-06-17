<template>
  <div>
    <div class="container">
    

    <span>
        <nuxt-link to="/" >
            <img src="~static/logo.png" width="150" height="50">
        </nuxt-link>
    </span>


    <span class="right"> <nuxt-link to="/history"> <button class="button is-white">이력</button> </nuxt-link> </span>
    <span class="right"> <nuxt-link to="/tech" > <button  class="button is-white" >기술</button> </nuxt-link> </span>
    <span class="right"> <nuxt-link to="/" > <button  class="button is-white">소개</button> </nuxt-link> </span>

    </div>
  <nuxt/>
  <hr>
  
    <footer class="footer has-text-centered">
      <div>2018년 목원대학교 김용빈의 포트폴리오 웹사이트입니다.</div>
    </footer>
  </div>
</template>



<style>
.right {
  float: right;
}
</style>
