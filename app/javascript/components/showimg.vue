<template>
  <div id="app">

    <el-carousel :interval="4000" type="card" height="400px">
      <el-carousel-item v-for="item in 1" :key="item">
        <img src="https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/1398/07/07/1398070709312737818520494.jpg" class="image">
        <h3 class="medium">{{ item }}</h3>
      </el-carousel-item>

      <el-carousel-item v-for="item in 1" :key="item">
        <img src="https://cdn.presstv.com/photo/20160816/636d5344-e566-4da6-8e46-c46b25ef2a0e.jpg" class="image">
        <h3 class="medium">{{ item }}</h3>
      </el-carousel-item>

      <el-carousel-item v-for="item in 1" :key="item">
        <img src="https://media.gettyimages.com/photos/mohamed-salah-of-liverpool-celebrates-after-scoring-his-sides-first-picture-id944388156?s=612x612" class="image">
        <h3 class="medium">{{ item }}</h3>
      </el-carousel-item>

      <el-carousel-item v-for="item in 1" :key="item">
        <img src="https://sport.shafaqna.com/wp-content/uploads/2018/10/%D8%B1%D9%88%D9%86%D8%A7%D9%84%D8%AF%D9%88-2.jpg" class="image">
        <h3 class="medium">{{ item }}</h3>
      </el-carousel-item>

      <el-carousel-item v-for="item in 1" :key="item">
        <img src="https://newsmedia.tasnimnews.com/Tasnim/Uploaded/Image/1398/07/09/1398070909370691518541794.jpg" class="image">
        <h3 class="medium">{{ item }}</h3>
      </el-carousel-item>

      <el-carousel-item v-for="item in 1" :key="item">
        <img src="https://asansport.com/blog/wp-content/uploads/2019/05/basketball-900x600.jpg" class="image">
        <h3 class="medium">{{ item }}</h3>
      </el-carousel-item>



    </el-carousel>
    <Ls/>
  </div>
</template>
<script>
import Ls from './lastteams'
export default {
  components: {Ls}
}
</script>
<style>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 200px;
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }

  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
</style>