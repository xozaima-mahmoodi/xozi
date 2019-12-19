<template>
	<div id="app">
    <el-row>
      <el-col :span="5" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 0 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://www.realmadrid.com/img/ultrapanoramica_1500px/alegria-benzema-ramos-marcelo_fcl9659_ultra_20191218085708.jpg" class="image">
          <div style="padding: 14px;">
            <span>FOOTBALL</span>
            <div class="bottom clearfix">
              <time class="time">{{ currentDate }}</time>
              <el-button type="text" class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>

      <el-col :span="5" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 0 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://www.realmadrid.com/img/horizontal_940px/bestteamrandolph_940_20191203111042.jpg" class="image">
          <div style="padding: 14px;">
            <span>BASKETBALL</span>
            <div class="bottom clearfix">
              <time class="time">{{ currentDate }}</time>
              <el-button type="text" class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>

      <el-col :span="5" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 0 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://cdn.presstv.com/photo/20160816/636d5344-e566-4da6-8e46-c46b25ef2a0e.jpg" class="image">
          <div style="padding: 14px;">
            <span>VOLLEYBALL</span>
            <div class="bottom clearfix">
              <time class="time">{{ currentDate }}</time>
              <el-button type="text" class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>

      <el-col :span="5" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 0 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://www.gannett-cdn.com/-mm-/15558b270bca2dea9e41f0c562a7ff8ff3555c17/c=0-15-1022-592/local/-/media/2016/08/07/USATODAY/USATODAY/636061902018812550-handball-08-07.JPG?width=660&height=373&fit=crop&format=pjpg&auto=webp" class="image">
          <div style="padding: 14px;">
            <span>HANDBALL</span>
            <div class="bottom clearfix">
              <time class="time">{{ currentDate }}</time>
              <el-button type="text" class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>


  </div>
</template>

<style>
  .time {
    font-size: 13px;
    color: #999;
  }
  
  .bottom {
    margin-top: 13px;
    line-height: 12px;
  }

  .button {
    padding: 0;
    float: right;
  }

  .image {
    width: 100%;
    display: block;
  }

  .clearfix:before,
  .clearfix:after {
      display: table;
      content: "";
  }
  
  .clearfix:after {
      clear: both
  }
</style>

<script>
export default {
  data() {
    return {
      currentDate: new Date()
    };
  }
}
</script>


