<template>
  <div id="app">
    <Nav/>
     <router-view />
     <Footer/>
    <p>{{ message }}</p>
  </div>
</template>

<script>
import Nav from './components/navmenu.vue'
import Footer from './components/footer.vue'


export default {
  data: function () {
    return {
      message: "Hello Xozi!"
    }
  },

  components: {
  Nav,
  Footer
  }
}
</script>


<style scoped>
p {
  font-size: 4em;
  text-align: center;
  color:blue;
}
</style>
