import { createRouter, createWebHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue';
import SightseeingView from '../views/SightseeingView.vue';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/sightseeing',
      name: 'sightseeing',
      component: SightseeingView,
    },
  ],
});

export default router;
