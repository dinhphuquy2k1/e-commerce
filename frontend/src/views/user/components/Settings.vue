<template>
  <div class="ms-settings_wrapper">
    <div class="ms-settings_container row gx-0 gy-0">
      <div class="ms-settings-left_side col-3">
        <router-view name="menu"></router-view>
      </div>
      <div class="ms-settings-right_side col-9">
        <router-view name="content"></router-view>
      </div>
    </div>
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

<style lang="scss">
.ms-settings_wrapper {
  padding: 40px $padding-base;

  .ms-settings_container {
    --bs-gutter-y: 72px;
    --bs-gutter-x: 72px;

    .ms-settings-left_side {

    }

    .ms-settings-right_side {

    }
  }
}
</style>
