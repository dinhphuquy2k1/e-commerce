<template>
  <div class="m-wrapper w-100 d-flex h-100vh flex-column">
    <router-view name="header"></router-view>
    <router-view name="content"></router-view>
    <router-view name="footer"></router-view>
  </div>
</template>

<script>

export default {
  components: {}
}
</script>

<style lang="scss">

</style>
