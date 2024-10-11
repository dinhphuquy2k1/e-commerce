<template>
  <div class="ms-ads">
    <div class="pointer">
      <img src="http://localhost:30001/storage/ads/xiaomi-1200x200.png" alt="">
    </div>
  </div>
</template>

<script>
export default {}
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
