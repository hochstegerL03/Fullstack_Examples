import { createRouter, createWebHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue';
import EstatesView from '../views/EstatesView.vue';
import DetailsView from '../views/DetailsView.vue';
import TeamView from '../views/TeamView.vue';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/estates',
      name: 'estates',
      children: [
        {
          path: '/estates',
          component: EstatesView,
        },
        {
          path: '/estates/:id',
          name: 'details',
          component: DetailsView,
        },
      ],
    },
    {
      path: '/team',
      name: 'team',
      component: TeamView,
    },
  ],
});

export default router;
