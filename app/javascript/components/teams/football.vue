<template>
	<div id="app">
    <hr>
    <el-row>
      <el-col :span="30" v-for="(o, index) in 1" :key="o" :offset="index > 0 ? 2 : 0">
        <el-card :body-style="{ padding: '0px' }">
          <img src="https://e00-marca.uecdn.es/assets/multimedia/imagenes/2019/12/19/15767600216146.jpg" class="image">
          <div style="padding: 14px;">
            <span><b><b><i>FOOTBALL</i></b></b></span>
            <p><b>Football is a family of team sports that involve, to varying degrees,
               kicking a ball to score a goal. Unqualified, the word football normally means the form of football
               that is the most popular where the word is used.
               Sports commonly called football include association football
               (known as soccer in some countries); gridiron football
               (specifically American football or Canadian football);
               Australian rules football; rugby football (either rugby league or rugby union);
               and Gaelic football. These various forms of football are known as football codes.
               There are a number of references to traditional, ancient, or prehistoric ball games played in many 
               different parts of the world. Contemporary codes of football can be traced back to the
               codification of these games at English public schools during the 19th century. 
               The expansion of the British Empire allowed these rules of football to spread to areas of 
               British influence outside the directly controlled Empire.
               By the end of the 19th century, distinct regional codes were already developing: 
               Gaelic football, for example, deliberately incorporated the rules of local traditional 
               football games in order to maintain their heritage.[9] In 1888, The Football League was 
               founded in England, becoming the first of many professional football competitions. 
               During the 20th century, several of the various kinds of football grew to become some of 
               the most popular team sports in the world.
               The various codes of football share certain common elements and can be grouped into two main classes 
               of football: carrying codes like American football, Canadian football, rugby union and 
               rugby league, where the ball is moved about the field while being held in the hands or thrown, 
               and kicking codes such as Association football and Gaelic football, where the ball is moved primarily 
               with the feet, and where handling is strictly limited.

               Common rules among the sports include:
               Two teams of usually between 11 and 18 players; some variations that have fewer players
               (five or more per team) are also popular.
               A clearly defined area in which to play the game.
               Scoring goals or points by moving the ball to an opposing team's end of the field and either into 
               a goal area, or over a line.
               Goals or points resulting from players putting the ball between two goalposts.
               The goal or line being defended by the opposing team.
               Players being required to move the ball—depending on the code—by kicking, 
               carrying, or hand-passing the ball.
               Players using only their body to move the ball.
               In all codes, common skills include passing, tackling, evasion of tackles, catching and kicking. 
               In most codes, there are rules restricting the movement of players offside, and players scoring 
               a goal must put the ball either under or over a crossbar between the goalposts.
               The Chinese competitive game cuju, as stated by FIFA,
               is the earliest form of football for which there is scientific evidence and 
               appears in a military manual dated to the second and third centuries BC. 
               It existed during the Han dynasty and possibly the Qin dynasty, in the second and 
               third centuries BC.[15] The Japanese version of cuju is kemari, and was developed 
               during the Asuka period.[16] This is known to have been played within the Japanese imperial 
               court in Kyoto from about 600 AD. In kemari several people stand in a circle and kick a 
               ball to each other, trying not to let the ball drop to the ground (much like keepie uppie).
               The Ancient Greeks and Romans are known to have played many ball games, some of which involved the use 
               of the feet. The Roman game harpastum is believed to have been adapted from a Greek team game known 
               as (Episkyros)[17][18] or (phaininda),[19] which is mentioned by a Greek playwright, 
               Antiphanes (388–311 BC) and later referred to by the Christian theologian Clement of 
               Alexandria (c. 150 – c. 215 AD). These games appear to have resembled rugby football.
               The Roman politician Cicero describes the case of a man who was killed whilst having a 
               shave when a ball was kicked into a barber's shop. Roman ball games already knew the air-filled ball, 
               the follis.[25][26] Episkyros is recognised as an early form of football by FIFA.

               There are a number of references to traditional, ancient, or prehistoric ball games, 
               played by indigenous peoples in many different parts of the world. For example, in 1586, 
               men from a ship commanded by an English explorer named John Davis, went ashore to play a form 
               of football with Inuit (Eskimo) people in Greenland.[28] There are later accounts of an Inuit 
               game played on ice, called Aqsaqtuk. Each match began with two teams facing each other in parallel lines, 
               before attempting to kick the ball through each other team's line and then at a goal. In 1610, 
               William Strachey, a colonist at Jamestown, Virginia recorded a game played by Native Americans, 
               called Pahsaheman.[citation needed] On the Australian continent several tribes of indigenous people 
               played kicking and catching games with stuffed balls which have been generalised by historians as 
               Marn Grook (Djab Wurrung for "game ball"). The earliest historical account is an anecdote 
               from the 1878 book by Robert Brough-Smyth, The Aborigines of Victoria, in which a man called 
               Richard Thomas is quoted as saying, in about 1841 in Victoria, Australia, that he had witnessed 
               Aboriginal people playing the game: "Mr Thomas describes how the foremost player will drop kick a 
               ball made from the skin of a possum and how other players leap into the air in order to catch it." 
               Some historians have theorised that Marn Grook was one of the origins of Australian rules football.

               The Māori in New Zealand played a game called Ki-o-rahi consisting of teams of seven players play 
               on a circular field divided into zones, and score points by touching the 'pou' (boundary markers) 
               and hitting a central 'tupu' or target.</b></p>
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


