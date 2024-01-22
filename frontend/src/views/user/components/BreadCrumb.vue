<template>
  <div class="ms-bread-crumb_wrapper d-flex align-items-center">
    <Breadcrumb :home="home" :model="items" class="flex-grow-1"/>
  </div>
</template>

<script>
import Breadcrumb from 'primevue/breadcrumb';

export default {
  components: {
    Breadcrumb
  },
  data() {
    return {
      home: {
        icon: 'pi pi-home',
        label: 'Trang chủ',
      },
      items: [
        {label: 'Electronics'},
        {label: 'Computer'},
        {label: 'Accessories'},
        {label: 'Keyboard'},
        {label: 'Wireless'}
      ]
    }
  }
}
</script>

<style lang="scss">
.ms-bread-crumb_wrapper {
  padding: 0 $padding-base;
  background: var(--Gray-50);
  height: 72px;

  .p-breadcrumb {
    background: unset;
    border: unset;
    padding: 0;
    ol, ul, dl{
      padding: unset;
      margin: unset;
    }
    .p-breadcrumb-list {
      gap: 8px;
    }

    .p-breadcrumb-list .p-menuitem:last-child .p-menuitem-text {
      color: var(--Secondary-500, #2DA5F3);
    }

    .p-menuitem-icon.pi-home {
      width: 20px;
      height: 20px;
      background-image: url('@public/assets/icons/House.svg');
    }

    .p-icon {
      width: 12px;
      height: 12px;
    }

    .p-menuitem-link {
      text-decoration: none;
      font-size: 14px;
      font-style: normal !important;
      font-weight: normal;
      color: var(--Gray-600);
      display: flex;
      align-items: center;
      gap: 8px;

      .p-menuitem-text {
        color: var(--Gray-600);
        font-size: 14px;
        font-style: normal;
        line-height: unset !important;
      }
    }
  }
}
</style>