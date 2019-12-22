import Showimg from '../components/showimg.vue'
import Lastteams from '../components/lastteams.vue'
import Lastnews from '../components/lastnews.vue'
import Football from '../components/teams/football.vue'

const routes = [
  {
    path: '/',
    name: 'showimg',
    component: Showimg
  },{
    path: '/',
    name: 'lastteams',
    component: Lastteams
  },{
    path: '/',
    name: 'lastnews',
    component: Lastnews
  },{
    path: '/components/teams/football.vue',
    name: 'football',
    component: Football
  }
]

export default routes