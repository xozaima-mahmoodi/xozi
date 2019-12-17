import navmenu from '../components/navmenu.vue'
import showimg from '../components/showimg.vue'

const routes = [
  {
    path: '/navmenu',
    name: 'navmenu',
    component: navmenu
  },{
    path: '/',
    name: 'showimg',
    component: showimg
  }
]

export default routes