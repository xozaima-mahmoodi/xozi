<template>
	<div id="app">
    <hr>
    <el-row>
      <el-col :span="6" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 2 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://www.realmadrid.com/img/horizontal_940px/_1vc2455_hor_20191219042102.jpg" class="image">
          <div style="padding: 14px;">
            <span>Zidane's Real Madrid unbeaten at Camp Nou</span>
            <div class="bottom clearfix">
              <time class="time">{{ currentDate }}</time>
              <el-button type="text" class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>

      <el-col :span="6" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 2 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://www.realmadrid.com/img/horizontal_940px/_pca9465_20191219091129.jpg" class="image">
          <div style="padding: 14px;">
            <span>Baskonia-Real Madrid: a tenth Euroleague win could happen in Vitoria</span>
            <div class="bottom clearfix">
              <time class="time">{{ currentDate }}</time>
              <el-button type="text" class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>

      <el-col :span="6" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 2 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://www.realmadrid.com/img/horizontal_940px/_1vc2383_hor_20191218112603.jpg" class="image">
          <div style="padding: 14px;">
            <span>Zidane: "We put in a great performance and the only thing that was missing was a goal"</span>
            <div class="bottom clearfix">
              <time class="time">{{ currentDate }}</time>
              <el-button type="text" class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>

      <el-col :span="6" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 2 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://www.realmadrid.com/img/horizontal_940px/frame-agarron-varane_hor_20191218111601.jpg" class="image">
          <div style="padding: 14px;">
            <span>Neither referee nor VAR system saw two penalties on Varane</span>
            <div class="bottom clearfix">
              <time class="time">{{ currentDate }}</time>
              <el-button type="text" class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>
    <hr>

  </div>
</template>

<script>
export default {
  data() {
    return {
      currentDate: new Date()
    };
  }
}
</script>

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


