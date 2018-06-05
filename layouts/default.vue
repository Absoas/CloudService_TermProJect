<template>
  <div>
    <nav class="navbar">
      <div class="navbar-brand">
        <nuxt-link to="/" class="navbar-item">
          <figure class="image is-32x32">
            <img src="~static/dogfoot.jpg" alt="">
          </figure>
        </nuxt-link>
  
      </div>
      <div class="navbar-menu is-active">
        <div class="navbar-end">
          <nuxt-link to="/" class="navbar-item">
            <a class="button is-danger">소개</a>
         </nuxt-link>
          <nuxt-link to="/tech" class="navbar-item">기술</nuxt-link>
          <nuxt-link to="/history" class="navbar-item">이력</nuxt-link>
        </div>
      </div>
    </nav>
    <nuxt/>
  
    <hr>
  
  
    <footer class="footer has-text-centered">
      <div>2018년 목원대학교 김용빈의 포트폴리오 웹사이트입니다.</div>
    </footer>
  </div>
</template>

<style>
  
</style>
