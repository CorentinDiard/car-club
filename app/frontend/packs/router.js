import Vue from 'vue'
import App from '../app.vue'
import Router from 'vue-router'
import Home from '../components/Home.vue'
import Test from '../components/Test.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    { 
      path: '/',
      name: 'home', 
      component: Home
    },
    { 
      path: '/test',
      name: 'test', 
      component: Test
    },
    // { path: '/bar', component: Bar }
  ]
})