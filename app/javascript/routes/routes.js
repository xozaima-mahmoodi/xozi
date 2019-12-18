import navmenu from '../components/navmenu.vue'
import showimg from '../components/showimg.vue'
import footer from '../components/footer.vue'

const routes = [
  {
    path: '/navmenu',
    name: 'navmenu',
    component: navmenu
  },{
    path: '/',
    name: 'showimg',
    component: showimg
  },{
    path: '/',
    name: 'footer',
    component: footer
  }
]

export default routes