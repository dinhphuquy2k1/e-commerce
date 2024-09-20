<template>
  <div class="ms-browsing-history-item_wrapper">
    <div class="header d-flex justify-content-between align-items-center">
      <div class="left-side">
        {{ header }}
      </div>
      <div class="right-side d-flex">
        <Button class="ms-btn white ms-btn_search text-center color-primary-500" v-if="viewAll">
          <div class="d-flex align-items-center gap-1">
            <div>{{ $t('view_all') }}</div>
            <div class="icon-w20 icon-arrow-right_orange"></div>
          </div>
        </Button>
      </div>
    </div>
    <div class="content">
      <div class="row g-3">
        <div v-for="item in products" class="col-xl-3 col-lg-4 col-sm-6" v-if="products.length > 0">
          <ProductItem :data="item"></ProductItem>
        </div>
        <div v-else class="description">
          {{ $t('no_data') }}
        </div>
      </div>
      <div class="ms-paginator" v-if="withPagination && products.length > 0">
        <Paginator :rows="10" :totalRecords="120"></Paginator>
      </div>
    </div>
  </div>
</template>

<script>
import ProductItem from '@/components/ProductItem.vue'
import Paginator from 'primevue/paginator';
import Button from 'primevue/button';

export default {
  props: {
    header: {
      default: '',
    },
    withPagination: {
      default: true,
    },
    viewAll: {
      default: false,
    },
    pagination: {
      default: {
        pageSize: 4,
        pageIndex: 1,
      }
    },
  },
  components: {
    ProductItem,
    Paginator,
    Button,
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
        }, {
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
        }, {
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
        }, {
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
      ]
    }
  },
}
</script>

<style lang="scss">
.ms-browsing-history-item_wrapper {
  .header {
    padding: 16px 24px;
    border-radius: 4px 4px 0 0;
    border: 1px solid var(--Gray-100);
    background: var(--Gray-00);

    .left-side {
      font-weight: 500;
      color: var(--Gray-900);
      text-transform: uppercase;
    }
  }

  .content {
    padding: 24px;
    border-radius: 0 0 4px 4px;
    border: 1px solid var(--Gray-100);
    border-top: unset;
    background: var(--Gray-00);

    .ms-paginator {
      nav {
        padding: 15px 0 0;

        .p-paginator {
          border-top: unset !important;
          padding: unset;

          .p-paginator-pages {
            display: flex;
            gap: 8px;

            .p-paginator-page {
              width: 40px;
              height: 40px;
              min-width: 0;
              border-radius: 50%;
              color: var(--Gray-900);

              &.p-highlight {
                background: var(--Primary-500);
                color: var(--Gray-00);
              }

            }
          }
        }
      }
    }

  }
}
</style>
