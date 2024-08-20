<template>
  <div>
    <Menu :model="items">
      <template #item="{ item, props }">
        <router-link v-if="item.to" v-slot="{ href, navigate }" :to="item.to" custom>
          <a v-ripple :href="href" v-bind="props.action" @click="navigate">
            <span :class="item.icon"/>
            <span class="ml-2">{{ item.label }}</span>
          </a>
        </router-link>
      </template>
    </Menu>
  </div>
</template>

<script>
import Menu from 'primevue/menu';

export default {
  components: {
    Menu,
  },
  data() {
    return {
      items: [
        {
          label: 'New',
          icon: 'pi pi-plus',
          to: '/',
        },
        {
          label: 'Search',
          icon: 'pi pi-search',
          to: '/setting',
        }
      ]
    };
  }
}
</script>

<style>

</style>
