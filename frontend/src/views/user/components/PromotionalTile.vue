<template>
  <div class="ms-promotion-tile_wrapper">
    <div class="ms-promotion-tile_container">
      <div class="row gy-2 ms-box-wrapper">
        <div class="col-xxl-3 col-xl-4 col-lg-6 ms-box-container">
          <div class="text-start title">FLASH SALE TODAY</div>
          <div class="ms-box-item d-flex" v-for="item in products" :key="item">
            <div class="ms-box-item_left">
              <Image :src="require('@public/assets/images/products/Image.png')" alt="Image"/>
            </div>
            <div class="ms-box-item_right d-flex flex-column align-items-between justify-content-between">
              <div class="title text-start">Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear</div>
              <div class="price text-start">20.000.000đ</div>
            </div>
          </div>
        </div>
        <div class="col-xxl-3 col-xl-4 col-lg-6 ms-box-container">
          <div class="text-start title">FLASH SALE TODAY</div>
          <div class="ms-box-item d-flex" v-for="item in products" :key="item">
            <div class="ms-box-item_left">
              <Image :src="require('@public/assets/images/products/Image.png')" alt="Image"/>
            </div>
            <div class="ms-box-item_right d-flex flex-column align-items-between justify-content-between">
              <div class="title text-start">Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear</div>
              <div class="price text-start">20.000.000đ</div>
            </div>
          </div>
        </div>
        <div class="col-xxl-3 col-xl-4 col-lg-6 ms-box-container">
          <div class="text-start title">FLASH SALE TODAY</div>
          <div class="ms-box-item d-flex" v-for="item in products" :key="item">
            <div class="ms-box-item_left">
              <Image :src="require('@public/assets/images/products/Image.png')" alt="Image"/>
            </div>
            <div class="ms-box-item_right d-flex flex-column align-items-between justify-content-between">
              <div class="title text-start">Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear</div>
              <div class="price text-start">20.000.000đ</div>
            </div>
          </div>
        </div>
        <div class="col-xxl-3 col-xl-4 col-lg-6 ms-box-container">
          <div class="text-start title">FLASH SALE TODAY</div>
          <div class="ms-box-item d-flex" v-for="item in products" :key="item">
            <div class="ms-box-item_left">
              <Image :src="require('@public/assets/images/products/Image.png')" alt="Image"/>
            </div>
            <div class="ms-box-item_right d-flex flex-column align-items-between justify-content-between">
              <div class="title text-start">Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear</div>
              <div class="price text-start">20.000.000đ</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Image from 'primevue/image';

export default {
  components: {
    Image
  },
  data() {
    return {
      products: [
        {
          id: '1000',
          code: 'f230fh0g3',
          name: 'Bamboo Watch',
          description: 'Product Description',
          image: 'Image.png',
          price: 65,
          category: 'Accessories',
          quantity: 24,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
        {
          id: '1001',
          code: 'nvklal433',
          name: 'Black Watch',
          description: 'Product Description',
          image: 'Image.png',
          price: 72,
          category: 'Accessories',
          quantity: 61,
          inventoryStatus: 'INSTOCK',
          rating: 4
        },
        {
          id: '1002',
          code: 'zz21cz3c1',
          name: 'Blue Band',
          description: 'Product Description',
          image: 'Image.png',
          price: 79,
          category: 'Fitness',
          quantity: 2,
          inventoryStatus: 'LOWSTOCK',
          rating: 3
        },
        {
          id: '1003',
          code: '244wgerg2',
          name: 'Blue T-Shirt',
          description: 'Product Description',
          image: 'Image.png',
          price: 29,
          category: 'Clothing',
          quantity: 25,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
      ],
    }
  }
}
</script>

<style lang="scss">
.ms-promotion-tile_wrapper {
  padding: 0 $padding-base;

  .ms-promotion-tile_container {
    padding: 72px 0;

    .ms-box-container {
      display: flex;
      flex-direction: column;
      gap: 16px;

      .title {
        color: var(--Gray-900, #191C1F);
        font-size: 16px;
        font-style: normal;
        font-weight: 600;
      }

      .ms-box-item {
        border-radius: 3px;
        border: 1px solid var(--Gray-100, #E4E7E9);
        background: var(--Gray-00, #FFF);
        padding: 12px;
        gap: 12px;

        .title {
          display: -webkit-box;
          -webkit-box-orient: vertical;
          overflow: hidden;
          -webkit-line-clamp: 2;
          text-overflow: ellipsis;
          font-size: 14px;
          font-style: normal;
          font-weight: 400;
        }

        .price {
          font-size: 14px;
          font-style: normal;
          font-weight: 600;
          color: var(--Secondary-500, #2DA5F3);
        }
      }
    }

  }
}
</style>