<template>
  <router-view name="home"></router-view>
</template>

<script>
import HomeView from '@/views/user/HomeView.vue'

export default {
  components:{
    HomeView
  }
}
</script>

<style lang="scss">
@import url('../public/scss/main.scss');

.p-dropdown, .p-treeselect, .p-multiselect, .p-inputtext, .ms-btn {
  line-height: unset;
  height: $input-select-height;
}

nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
