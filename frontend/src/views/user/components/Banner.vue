<template>
  <div class="ms-banner d-flex">
    <Galleria :value="configs.banners" :numVisible="4" :circular="true" containerClass="flex-1"
              :showItemNavigators="true"
              :autoPlay="true" :transitionInterval="7000"
              :showThumbnailNavigators="false">
      <template #item="slotProps">
        <SpinSetting></SpinSetting>
        <img :src="slotProps.item.medias[0].url" :alt="slotProps.item.name"
             class="w-6 shadow-2" v-if="slotProps.item.medias.length > 0"/>
      </template>
      <template #thumbnail="slotProps">
        <div class="d-flex align-items-center flex-column flex-1 justify-content-center">
          <div class="title">{{ slotProps.item.title }}</div>
          <div class="description">{{ slotProps.item.description }}</div>
        </div>
      </template>
    </Galleria>
  </div>
</template>

<script>
import Carousel from 'primevue/carousel';
import Button from 'primevue/button';
import Galleria from 'primevue/galleria';
import SpinSetting from './SpinSetting.vue';
import {mapGetters, mapActions} from 'vuex';

export default {
  components: {
    Carousel,
    Button,
    Galleria,
    SpinSetting,
  },
  computed: {
    ...mapGetters(['configs']),
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

  .p-galleria-content {
    .p-galleria-item-wrapper {
      position: relative;

      img {
        width: 100%;
        max-height: 450px;
        height: auto;
        border-radius: 10px;
      }
    }

    .p-galleria-thumbnail-wrapper {
      margin-top: 10px;

      .p-galleria-thumbnail-items {
        .p-galleria-thumbnail-item {
          padding-right: 10px;

          .p-galleria-thumbnail-item-content {
            display: flex;
            height: 100%;
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