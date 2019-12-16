<template>
  <div id="app">

    <el-menu
      style="margin: 0 0 1px 0;"
      :default-active="activeIndex1"
      class="el-menu-demo"
      mode="horizontal"
      @select="handleSelect"
      background-color="#000000"
      text-color="#fff"
      active-text-color="#ffffff">
      <el-menu-item index="1">TIME</el-menu-item>
      <el-menu-item index="2">LOGIN</el-menu-item>
    </el-menu>
    
    
    <el-menu
      :default-active="activeIndex2"
      class="el-menu-demo"
      mode="horizontal"
      @select="handleSelect"
      background-color="#545c64"
      text-color="#fff"
      active-text-color="#ffd04b">
      <el-menu-item index="1">HOME</el-menu-item>
      <el-submenu index="2">
        <template slot="title">TEAMS</template>
        <el-menu-item index="2-1">FOOTBALL</el-menu-item>
        <el-menu-item index="2-2">BASKETBALL</el-menu-item>
        <el-menu-item index="2-3"> VOLLEYBALL</el-menu-item>
        <el-menu-item index="2-3"> HANDBALL</el-menu-item>
        <el-menu-item index="2-3"> BASEBALL</el-menu-item>
      </el-submenu>
      <el-menu-item index="3">NEWS</el-menu-item>
      <el-menu-item index="4">ABOUT US</el-menu-item>
    </el-menu>

  </div>
</template>

<script>
export default {
    data() {
      return {
        activities: [{
          activeIndex: '1',
          activeIndex2: '1'
        }]
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>