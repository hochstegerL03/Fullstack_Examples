import { createRouter, createWebHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue';
import EstatesView from '../views/EstatesView.vue';
import EstatesOverview from '../subviews/EstatesOverview.vue';
import EstatesDetails from '../subviews/EstatesDetails.vue';
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
      path: '/team',
      name: 'team',
      component: TeamView,
    },
    {
      path: '/estates',
      name: 'estates',
      component: EstatesView,
      children: [
        {
          path: ':id',
          name: 'details',
          component: EstatesDetails,
          props: true,
        },
        {
          path: '',
          name: 'overview',
          component: EstatesOverview,
        },
      ],
    },
  ],
});

export default router;
