<template>
  <header class="m-header w-100 d-flex justify-content-between align-items-center">
    <div class="m-header-logo">
      <img :src="require('@public/assets/icons/logo.svg')" alt="">
    </div>
    <div class="m-header-menu d-flex gap-3">
      <div v-for="item in menus">
        {{item}}
      </div>
    </div>
    <div class="m-header-search">
      <div class="m-search_form flex-row d-flex flex-grow-1 align-items-center">
        <InputText type="search" class="ms-input_search" placeholder="Tìm kiếm"/>
        <div class="icon24 icon search-right search"></div>
      </div>
    </div>
    <div class="group-profile">

    </div>
  </header>
</template>

<script>
import InputText from 'primevue/inputtext';
import Dropdown from 'primevue/dropdown';

export default {
  components: {
    Dropdown,
    InputText
  },
  data() {
    return {
      menus: [
          'Men',
          'Women',
          'Kids',
          'Shop',
          'Contact us'
      ]
    }
  },
}
</script>


<style lang="scss" scoped>
.m-header {
  flex-shrink: 0;
  background: #FFFFFF;
  height: 80px;
  .m-search_form {
    max-width: 665px;
    background: #fff;
    border-radius: 4px;
    height: 40px;

    .ms-btn_search {
      border-radius: 0px 4px 4px 0px;
    }

    .ms-search_form-group {
      height: 40px;
      border: 1px solid #e0e0e0;
      border-top-left-radius: 4px;
      border-bottom-left-radius: 4px;
    }

    .ms-search_form-group:focus-within {
      border: 1px solid #0073e6;
    }
  }
}
</style>