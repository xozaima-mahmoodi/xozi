<template>
  <div id="app">
    <Nav/>
     <router-view />
    <p>{{ message }}</p>
  </div>
</template>

<script>
import Nav from './components/navmenu.vue'
export default {
  data: function () {
    return {
      message: "Hello Xozi!"
    }
  },

  components: {
  Nav,
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
