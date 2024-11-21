<template>
  <router-view name="home"></router-view>
  <Toast/>
</template>

<script>
import HomeView from '@/views/user/HomeView.vue'
import Toast from 'primevue/toast';
import {mapActions} from 'vuex';

export default {
  components: {
    HomeView,
    Toast,
  },
  methods: {
    ...mapActions(['setToast']),
  },
  created() {
    this.setToast({toast: this.$toast})
  }
}
</script>

<style lang="scss">
@import url('../public/scss/main.scss');

.p-dropdown, .p-treeselect, .p-multiselect, .p-inputtext:not(.p-inputtextarea, .p-inputnumber-input), .ms-btn {
  line-height: unset;
  height: $input-height;
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
