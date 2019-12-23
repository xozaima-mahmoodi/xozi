<template>
  <div id="app">
    <el-menu
      style="margin: 0 0 0px 0;"
      :default-active="activeIndex1"
      class="el-menu-demo"
      mode="horizontal"
      @select="handleSelect"
      background-color="#000000"
      text-color="#fff"
      active-text-color="#ffffff"
    >
      <el-menu-item index="1">TIME</el-menu-item>
      <el-menu-item index="2">
        <el-popover
        placement="right"
        width="900"
        trigger="click">
        <el-input placeholder="Please input" v-model="input">username</el-input>
        <el-input placeholder="Please input" v-model="pass">password</el-input>
                <el-button @click="submit">login</el-button>
        <el-button slot="reference">LOGIN</el-button>
        </el-popover>
      </el-menu-item>
      
    </el-menu>

    <el-menu
      :default-active="activeIndex2"
      class="el-menu-demo"
      mode="horizontal"
      @select="handleSelect"
      background-color="#545c64"
      text-color="#fff"
      active-text-color="#ffd04b"
    >
      <el-menu-item index="1">HOME</el-menu-item>
      <el-submenu index="2">
        <template slot="title">TEAMS</template>
        <router-link to="./components/teams/football.vue"><el-menu-item index="2-1">FOOTBALL</el-menu-item></router-link>
        
        <el-menu-item index="2-2">BASKETBALL</el-menu-item>
        <el-menu-item index="2-3">VOLLEYBALL</el-menu-item>
        <el-menu-item index="2-3">HANDBALL</el-menu-item>
        <el-menu-item index="2-3">BASEBALL</el-menu-item>
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
      input: '',
            pass: '',

      activities: [
        {
          activeIndex: "1",
          activeIndex2: "1"
        }
      ]
    };
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
    submit () {
      
    }
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>