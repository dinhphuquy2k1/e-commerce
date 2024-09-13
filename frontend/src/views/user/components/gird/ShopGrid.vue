<template>
  <div class="ms-shop-grid_wrapper">
    <div class="ms-shop-grid_container ms-feature-product-wrapper row">
      <div class="left-side col-md-3">
        <Sidebar v-model:visible="visibleFilters" class="ms-filter-sidebar">
          <ShopGirdFilter @applyFilter="applyFilter" :filtersParent="filtersParent"/>
        </Sidebar>
        <ShopGirdFilter @applyFilter="applyFilter" v-if="!visibleFilters" :filtersParent="filtersParent"/>
      </div>
      <div class="right-side ms-featured_product-container col-md-9 d-flex flex-column">
        <div class="header mb-3 d-flex flex-row align-items-center justify-content-between flex-wrap gap-3">
          <div class="ms-filter-box-mobile d-flex align-items-center gap-2 pointer" @click="visibleFilters = true">
            Bộ lọc
            <div class="icon-w24 icon-media-setting"></div>
          </div>
          <div class="m-search_form flex-row d-flex align-items-center d-flex w-50">
            <InputText type="search" v-model="search" class="ms-input_search w-100" placeholder="Tìm kiếm"/>
            <div class="icon24 icon search-right search"></div>
          </div>
          <div class="d-flex flex-row align-items-center gap-2">
            <span class="w-100">{{ $t('order') }}:</span>
            <Dropdown v-model="selectedCity" :options="cities" optionLabel="name" placeholder="Select a City"
                      class="w-full md:w-14rem"/>
          </div>
        </div>
        <div class="sub-header d-flex gx-0 gy-0 justify-content-between align-items-center flex-wrap row">
          <div class="left-side col-xxl-9 row align-items-center text-start">
            <span class="col-xxl-2 pl-0">{{ $t('filter') }}:</span>
            <div class="d-flex flex-wrap flex-shrink-1 col-xxl-10 gap-2 gx-0 gy-0">
              <Chip label="Iphone 11" removable/>
              <Chip label="Ipad" removable/>
              <Chip label="Thriller" removable/>
            </div>
          </div>
          <div class="right-side col-xxl-3">tesst</div>
        </div>
        <div class="main ms-product-list d-flex gx-0 gy-0 flex-grow-1">
          <div class="row gx-3 gy-3 mt-2">
            <div class="col-xxl-3 col-lg-4 col-sm-6 ms-item position-relative" v-for="item in products"
                 :key="item">
              <div class="ms-item-main d-flex flex-column justify-content-between">
                <div class="ms-product_image position-relative">
                  <div class="ms-offer-tag position-absolute top-0 left-0">
                    <Tag value="HOT" class="hot ms-offer-tag_item"></Tag>
                  </div>
                  <Image :src="require('@public/assets/images/products/drone.png')" alt="Image"/>
                  <div class="ms-product-buttons w-100">
                    <div class="d-flex justify-content-between gap-3">
                      <Button
                          class="ms-btn orange rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                          v-tooltip.bottom="{ value: $t('favorite'), escape: true }">
                        <div class="icon-only icon-heart_black"></div>
                      </Button>
                      <Button
                          class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                          v-tooltip.bottom="{ value: $t('add_to_cart'), escape: true }">
                        <div class="icon-only icon-simple_cart-black"></div>
                      </Button>
                      <Button
                          class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                          v-tooltip.bottom="{ value: $t('view_details'), escape: true }">
                        <div class="icon-only icon-eye"></div>
                      </Button>
                    </div>
                  </div>
                </div>
                <div class="rating d-flex gap-2 flex-wrap mt-3">
                  <div class="star-rating">
                    <Rating v-model="item.rating" readonly :cancel="false"/>
                  </div>
                  <div class="quantity-rating">
                    (52,677)
                  </div>
                </div>
                <div class="ms-offer_name text-start">
                  Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear...
                </div>
                <div class="ms-offer_price text-start">
                  <span class="offer-price_origin">25.000.000đ</span>
                  <span class="offer-price_final">20.000.000đ</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer">
          <Paginator :rows="10" :totalRecords="120"></Paginator>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import InputText from 'primevue/inputtext';
import Panel from 'primevue/panel';
import RadioButton from 'primevue/radiobutton';
import Checkbox from 'primevue/checkbox';
import Slider from 'primevue/slider';
import Rating from 'primevue/rating';
import Chip from 'primevue/chip';
import Image from 'primevue/image';
import Paginator from 'primevue/paginator';
import Dropdown from 'primevue/dropdown';
import Sidebar from 'primevue/sidebar';
import ShopGirdFilter from "@/views/user/components/gird/ShopGirdFilter.vue";
import Button from 'primevue/button';
import Tag from 'primevue/tag';

export default {
  components: {
    InputText,
    Panel,
    RadioButton,
    Checkbox,
    Slider,
    Rating,
    Chip,
    Image,
    Paginator,
    Dropdown,
    Button,
    Tag,
    Sidebar,
    ShopGirdFilter,
  },
  data() {
    return {
      selectedCity: null,
      cities: [
        {name: 'New York', code: 'NY'},
        {name: 'Rome', code: 'RM'},
        {name: 'London', code: 'LDN'},
        {name: 'Istanbul', code: 'IST'},
        {name: 'Paris', code: 'PRS'}
      ],
      search: null,
      visibleFilters: false,
      filtersParent: {},
      selectedCategory: 'Production',
      selectedCategories: null,
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
        }, {
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
    }
  },
  methods: {
    applyFilter(filters, isWithTimeOut = false) {
      let timeOut = isWithTimeOut ? 750 : 0;
      clearTimeout(this.debounce);
      this.debounce = setTimeout(() => {
        if (JSON.stringify(filters) !== JSON.stringify(this.filtersParent)) {
          this.filtersParent = filters;
        }
      }, timeOut);
    },
  },
}
</script>

<style lang="scss">
.ms-shop-grid_wrapper, .ms-filter-sidebar {
  padding: 40px var(--padding-base);

  .ms-shop-grid_container, .ms-shop-gird_desktop {

    .p-panel-header {
      border: unset;
      background: #FFF;
      border-radius: unset;
      padding: 12px 0;
    }

    .p-panel {
      border-top: 1px solid var(--gray-300, #DEE2E7);
    }

    .p-panel:first-child {
      border: unset;
    }

    .p-panel .p-panel-header .p-panel-title {
      font-size: 16px;
      font-style: normal;
      font-weight: 500;
      text-transform: uppercase;
      color: var(--Gray-900);
    }

    .p-panel-content {
      border: unset;
      padding: 0;
      padding-bottom: 24px;
    }

    .left-side {
      .ms-category, .ms-price {
        .p-panel-content {
          display: flex;
          flex-direction: column;
          gap: 12px;
        }
      }

      .ms-category {
        .p-panel-header {
          padding-top: unset;
        }
      }

      .ms-brand {
        .p-panel-content {
          display: flex;
          flex-direction: row;
          flex-wrap: wrap;
          justify-content: space-between;
          gap: 12px;
        }
      }

    }

    .right-side {
      .header {
        .m-search_form {
          border: 1px solid var(--Gray-100);
          border-radius: 4px;
        }

        .ms-filter-box-mobile {
          display: none !important;
        }

        .m-search_form:focus-within {
          border: 1px solid #0073e6;
        }
      }

      .sub-header {
        padding: 12px 24px;
        border-radius: 4px;
        background: var(--Gray-50, #F2F4F5);
      }
    }

  }

  .footer {
    nav {
      padding-left: unset;
      padding-right: unset;
      padding-top: 15px;

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

.ms-filter-sidebar {
  padding: unset;
}

@media (max-width: 768px) {
  .ms-shop-grid_wrapper {
    .ms-shop-grid_container {
      .left-side {
        .ms-shop-gird_desktop {
          display: none;
        }
      }

      .right-side {
        .header {
          .ms-filter-box-mobile {
            display: flex !important;
          }

          .m-search_form {
            display: none !important;
          }
        }
      }
    }
  }

}
</style>
