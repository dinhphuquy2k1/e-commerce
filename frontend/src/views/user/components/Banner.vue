<template>
  <div class="ms-banner d-flex">
    <Galleria :value="products" :numVisible="4" :circular="true" containerClass="flex-1"
              :showItemNavigators="true" :showThumbnailNavigators="false">
      <template #item="slotProps">
        <img src="http://localhost:30001/storage/banner/mobile-t2-1200x375.png" :alt="slotProps.item.name"
             class="w-6 shadow-2"/>
      </template>
      <template #thumbnail="slotProps">
        <div class="">
          <div class="title">Viettel T2-4G</div>
          <div class="description">Sóng mọi nơi</div>
        </div>
      </template>
    </Galleria>
  </div>
</template>

<script>
import Carousel from 'primevue/carousel';
import Button from 'primevue/button';
import Galleria from 'primevue/galleria';

export default {
  components: {
    Carousel,
    Button,
    Galleria,
  },
  data() {
    return {
      products: [],

    };
  },
  mounted() {
    this.products = [
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
        image: 'image 5.png',
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
        image: 'image 5.png',
        price: 29,
        category: 'Clothing',
        quantity: 25,
        inventoryStatus: 'INSTOCK',
        rating: 5
      },
    ]
  },

  methods: {}
}
</script>

<style lang="scss">
.ms-banner {
  padding: 24px var(--padding-base) 24px var(--padding-base);
  max-height: 550px;
  height: 550px;

  .p-galleria-content {
    .p-galleria-item-wrapper {
      img {
        width: 100%;
        max-height: 450px;
        height: 450px;
      }
    }

    .p-galleria-thumbnail-wrapper {
      margin-top: 10px;

      .p-galleria-thumbnail-items {
        .p-galleria-thumbnail-item {
          padding-right: 10px;

          .p-galleria-thumbnail-item-content {
            //border: 1px solid;
            border-radius: 8px;
            background-color: var(--Gray-50);
            box-shadow: 0px 8px 24px 0px rgba(25, 28, 31, 0.12);
            width: 100%;
            padding: 10px 15px;
            text-align: center;
            color: #666;

            .title {
              font-weight: 600;
            }

            .description {
              font-size: 12px;
            }
          }

          &.p-galleria-thumbnail-item-end {
            padding-right: 0;
          }

          &.p-galleria-thumbnail-item-current {
            .p-galleria-thumbnail-item-content {
              color: var(--primary);
              background-color: var(--Secondary-700);
            }
          }
        }
      }
    }
  }
}
</style>