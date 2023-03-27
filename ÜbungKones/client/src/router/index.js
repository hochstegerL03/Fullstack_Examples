import { createRouter, createWebHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue';
import FlavorsView from '../views/FlavorsView.vue';
import FlavorDetails from '../views/FlavorDetails.vue';
import FlavorSlideShow from '../views/FlavorSlideShow.vue';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/flavors',
      name: 'flavors',
      component: FlavorsView,
      children: [
        {
          path: ':id',
          component: FlavorDetails,
          props: true,
        },
        {
          path: '',
          component: FlavorSlideShow,
          props: true,
        },
      ],
    },
  ],
});

export default router;
