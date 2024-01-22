<template>
  <div class="ms-store_categories-wrapper">
    <div class="ms-store_categories">
      <div class="title">
        Mua sắm với danh mục
      </div>
      <div class="ms-store_categories-main">
        <Carousel :value="products" :numVisible="6" :numScroll="1" :responsiveOptions="responsiveOptions">
          <template #item="slotProps">
            <div class="d-flex flex-column align-items-center justify-content-center store-category_item">
              <div>
                <Image :src="require('@public/assets/images/products/'+ slotProps.data.image)" alt="Image"/>
              </div>
              <div class="mt-4">{{ slotProps.data.name }}</div>
            </div>
          </template>
        </Carousel>
      </div>
    </div>
  </div>
</template>


<script>
import Image from 'primevue/image';
import Carousel from 'primevue/carousel';

export default {
  components: {
    Carousel,
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
        {
          id: '1004',
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
        {
          id: '1005',
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
        {
          id: '1006',
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
        {
          id: '1007',
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
      responsiveOptions: [
        {
          breakpoint: '1400px',
          numVisible: 2,
          numScroll: 1
        },
        {
          breakpoint: '1199px',
          numVisible: 3,
          numScroll: 1
        },
        {
          breakpoint: '767px',
          numVisible: 2,
          numScroll: 1
        },
        {
          breakpoint: '575px',
          numVisible: 1,
          numScroll: 1
        }
      ]
    };
  },
}
</script>

<style lang="scss">
.ms-store_categories-wrapper {
  padding: 0 $padding-base 0 $padding-base;
}

.ms-store_categories {
  .title {
    color: #191C1F;
    text-align: center;
    font-size: 32px;
    font-style: normal;
    font-weight: 600;
    margin-bottom: 40px;
  }

  .ms-store_categories-main {
    .p-carousel-items-container {
      .p-carousel-item {
        .store-category_item {
          padding: 24px 12px;
          margin: 0.5rem;
          border-radius: 4px;
          border: 1px solid #E4E7E9 !important;
          background: #FFF !important;
        }

        .p-image {
          max-width: 148px;
          max-height: 148px;
        }
      }
    }

    .p-carousel-indicators {
      display: none;
    }
  }
}

</style>
