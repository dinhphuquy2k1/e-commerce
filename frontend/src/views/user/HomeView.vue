<template>
  <div class="m-wrapper w-100 d-flex h-100vh flex-column">
    <router-view name="header"></router-view>
    <router-view name="content"></router-view>
    <router-view name="footer"></router-view>
    <ScrollTop/>
    <LiveChat/>
  </div>
</template>

<script>
import ScrollTop from 'primevue/scrolltop';
import LiveChat from "@/components/LiveChat.vue";

export default {
  components: {
    ScrollTop,
    LiveChat,
  }
}
</script>

<style lang="scss">

</style>
