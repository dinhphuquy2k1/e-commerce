<template>
  <div class="ms-ads position-relative mt-4">
    <div class="pointer">
      <img src="http://localhost:30001/storage/ads/xiaomi-1200x200.png" alt="">
      <SpinSetting></SpinSetting>
    </div>
  </div>
</template>

<script>
import SpinSetting from "@/views/user/components/home/SpinSetting.vue";
export default {
  components: {
    SpinSetting,
  },
}
</script>

<style lang="scss">
.ms-ads {
  padding: 0 var(--padding-base) 0 var(--padding-base);

  img {
    width: 100%;
    object-fit: contain;
  }
}

@media (max-width: 768px) {
  .ms-ads {
    display: none;
  }
}
</style>
