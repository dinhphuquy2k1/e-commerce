<template>
  <div class="ms-footer-banner_wrapper">
    <div class="ms-footer-banner_container d-flex justify-content-between">
      <div class="ms-footer-banner-left ms-footer-banner_item">
        <Tag value="Tiết kiệm lên đến 500.000đ" class="best-deal ms-offer-tag_item"></Tag>
        <div class="title text-start">
          Macbook Pro
        </div>
        <div class="description text-start">
          Apple M1 Max Chip. 32GB Unified Memory, 1TB SSD StorageApple M1 Max Chip.Apple M1 Max Chip. 32GB Unified
          Memory, 1TB SSD StorageApple M1 Max Chip.Apple M1 Max Chip. 32GB Unified Memory, 1TB SSD StorageApple M1 Max
          Chip.
        </div>
        <div class="w-100 justify-content-start d-flex">
          <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-3 pe-3">
            <div class="d-flex align-items-center gap-1">
              <div>Mua ngay</div>
              <div class="icon-w20 icon-arrow-right_white"></div>
            </div>
          </Button>
        </div>
      </div>
      <div class="ms-footer-banner_right ms-footer-banner_item flex-grow-1 d-flex">
        <div>
          <Image :src="require('@public/assets/images/products/mac.png')" alt="Image"/>
        </div>
        <div class="ms-price-box d-flex justify-content-center align-items-center">
          <div class="text">30%</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Tag from 'primevue/tag';
import Button from 'primevue/button';
import Image from 'primevue/image';

export default {
  components: {
    Tag,
    Button,
    Image

  },
  data() {
    return {}
  }
}
</script>

<style lang="scss">
.ms-footer-banner_wrapper {
  padding: 0 240px 0 240px;

  .ms-footer-banner_container {
    height: 424px;
    width: 100%;
    background: var(--Primary-100);
    padding: 80px 72px;

    .ms-footer-banner-left {
      max-width: 424px;

      .title {
        color: var(--Gray-900);
        font-size: 48px;
        font-style: normal;
        font-weight: 600;
        padding-top: 12px;
      }

      .description {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        overflow: hidden;
        -webkit-line-clamp: 2;
        text-overflow: ellipsis;
        margin: 22px 0;
      }
    }

    .ms-footer-banner_right {
      max-width: 536px;
      display: flex;
      align-items: center;
      -o-object-fit: cover;
      object-fit: cover;
      justify-content: center;
      width: 100%;
      position: relative;

      .ms-price-box {
        position: absolute;
        top: -50px;
        left: -50px;
        width: 110px;
        height: 110px;
        border-radius: 50%;
        border: 6px solid var(--Gray-00);
        background: var(--Primary-200);

        .text {
          font-size: 20px;
          font-style: normal;
          font-weight: 500;
          color: var(--Gray-900);
        }
      }
    }
  }
}

</style>
<script setup lang="ts">
</script>