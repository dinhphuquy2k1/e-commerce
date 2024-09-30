<template>
  <div class="ms-shop-grid_wrapper">
    <div class="ms-shop-grid_container row">
      <div class="left-side col-md-3">
        <Sidebar v-model:visible="visibleFilters" class="ms-filter-sidebar">
          <ShopGirdFilter @applyFilter="applyFilter" :filtersParent="filtersParent"/>
        </Sidebar>
        <ShopGirdFilter @applyFilter="applyFilter" v-if="!visibleFilters" :filtersParent="filtersParent"/>
      </div>
      <div class="right-side col-md-9 d-flex flex-column">
        <!--        <div class="header mb-3 d-flex flex-row align-items-center justify-content-between flex-wrap gap-3">-->
        <!--          <div class="ms-filter-box-mobile d-flex align-items-center gap-2 pointer" @click="visibleFilters = true">-->
        <!--            Bộ lọc-->
        <!--            <div class="icon-w24 icon-media-setting"></div>-->
        <!--          </div>-->
        <!--          <div class="m-search_form flex-row d-flex align-items-center d-flex w-50">-->
        <!--            <InputText type="search" v-model="search" class="ms-input_search w-100" placeholder="Tìm kiếm"/>-->
        <!--            <div class="icon24 icon search-right search"></div>-->
        <!--          </div>-->
        <!--          <div class="d-flex flex-row align-items-center gap-2">-->
        <!--            <span class="w-100">{{ $t('order') }}:</span>-->
        <!--            <Dropdown v-model="selectedCity" :options="cities" optionLabel="name" placeholder="Select a City"-->
        <!--                      class="w-full md:w-14rem"/>-->
        <!--          </div>-->
        <!--        </div>-->
        <div class="sub-header d-flex gx-0 gy-0 justify-content-between align-items-center flex-wrap row">
          <div class="left-side d-flex align-items-center text-start gap-3">
            <span class="pl-0 title">{{ $t('sort_by') }}:</span>
            <SelectButton v-model="selectedOrder" :options="orderOptions" aria-labelledby="basic" optionLabel="name"
                          class="flex-1 d-flex"
                          @change="changeOrder">
              <template #option="slotProps">
                <div class="d-flex align-items-center gap-2 justify-content-center flex-1">
                  <div>
                    {{ slotProps.option.name }}
                  </div>
                  <div class="d-flex align-items-center flex-column ms-3" v-if="slotProps.option.type === 2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="10" viewBox="0 0 24 24" fill="#475156"
                         v-if="slotProps.option === selectedOrder && selectedOrder.selected || slotProps.option !== selectedOrder">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                            d="M11.4697 6.96967C11.7626 6.67678 12.2374 6.67678 12.5303 6.96967L20.0303 14.4697C20.3232 14.7626 20.3232 15.2374 20.0303 15.5303C19.7374 15.8232 19.2626 15.8232 18.9697 15.5303L12 8.56066L5.03033 15.5303C4.73744 15.8232 4.26256 15.8232 3.96967 15.5303C3.67678 15.2374 3.67678 14.7626 3.96967 14.4697L11.4697 6.96967Z"
                            fill="#475156"/>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="10" viewBox="0 0 24 24" fill="#475156"
                         v-if="slotProps.option === selectedOrder && !selectedOrder.selected || slotProps.option !== selectedOrder">
                      <path fill-rule="evenodd" clip-rule="evenodd"
                            d="M3.96967 8.46967C4.26256 8.17678 4.73744 8.17678 5.03033 8.46967L12 15.4393L18.9697 8.46967C19.2626 8.17678 19.7374 8.17678 20.0303 8.46967C20.3232 8.76256 20.3232 9.23744 20.0303 9.53033L12.5303 17.0303C12.2374 17.3232 11.7626 17.3232 11.4697 17.0303L3.96967 9.53033C3.67678 9.23744 3.67678 8.76256 3.96967 8.46967Z"
                            fill="#475156"/>
                    </svg>
                  </div>
                  <div class="" v-if="slotProps.option.type === 3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                         transform="rotate(90)">
                      <path opacity="0.2"
                            d="M5.25 14.625C6.28553 14.625 7.125 13.7855 7.125 12.75C7.125 11.7145 6.28553 10.875 5.25 10.875C4.21447 10.875 3.375 11.7145 3.375 12.75C3.375 13.7855 4.21447 14.625 5.25 14.625Z"
                            fill="var(--Primary-500)"/>
                      <path d="M12 10.125V20.25" stroke="var(--Primary-500)" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round"/>
                      <path d="M12 3.75V6.375" stroke="var(--Primary-500)" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round"/>
                      <path
                          d="M12 10.125C13.0355 10.125 13.875 9.28553 13.875 8.25C13.875 7.21447 13.0355 6.375 12 6.375C10.9645 6.375 10.125 7.21447 10.125 8.25C10.125 9.28553 10.9645 10.125 12 10.125Z"
                          stroke="var(--Primary-500)" stroke-width="1.5" stroke-linecap="round"
                          stroke-linejoin="round"/>
                      <path d="M18.75 17.625V20.25" stroke="var(--Primary-500)" stroke-width="1.5"
                            stroke-linecap="round" stroke-linejoin="round"/>
                      <path d="M18.75 3.75V13.875" stroke="var(--Primary-500)" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round"/>
                      <path
                          d="M18.75 17.625C19.7855 17.625 20.625 16.7855 20.625 15.75C20.625 14.7145 19.7855 13.875 18.75 13.875C17.7145 13.875 16.875 14.7145 16.875 15.75C16.875 16.7855 17.7145 17.625 18.75 17.625Z"
                          stroke="var(--Primary-500)" stroke-width="1.5" stroke-linecap="round"
                          stroke-linejoin="round"/>
                      <path d="M5.25 14.625V20.25" stroke="var(--Primary-500)" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round"/>
                      <path d="M5.25 3.75V10.875" stroke="var(--Primary-500)" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round"/>
                      <path
                          d="M5.25 14.625C6.28553 14.625 7.125 13.7855 7.125 12.75C7.125 11.7145 6.28553 10.875 5.25 10.875C4.21447 10.875 3.375 11.7145 3.375 12.75C3.375 13.7855 4.21447 14.625 5.25 14.625Z"
                          stroke="var(--Primary-500)" stroke-width="1.5" stroke-linecap="round"
                          stroke-linejoin="round"/>
                    </svg>
                  </div>
                </div>
              </template>
            </SelectButton>
          </div>
        </div>
        <!--        <div class="sub-header d-flex gx-0 gy-0 justify-content-between align-items-center flex-wrap row">-->
        <!--          <div class="left-side d-flex align-items-center text-start gap-3">-->
        <!--            <span class="pl-0">{{ $t('filter') }}:</span>-->
        <!--            <div class="d-flex flex-1 flex-wrap flex-shrink-1 col-xxl-10 gap-2 gx-0 gy-0">-->
        <!--              <Chip label="Iphone 11" removable/>-->
        <!--              <Chip label="Ipad" removable/>-->
        <!--              <Chip label="Thriller" removable/>-->
        <!--            </div>-->
        <!--            <div class="right-side">tesst</div>-->
        <!--          </div>-->
        <!--        </div>-->
        <div class="main ms-product-list gx-0 gy-0 flex-grow-1 h-100">
          <div class="row gx-3 gy-3 mt-2">
            <div v-if="products.total === 0">
              <div class="d-flex flex-column p-24 justify-content-center align-items-center">
                <div class="icon-empty_table"></div>
                <div>{{ $t('no_results_found') }}</div>
              </div>
            </div>
            <div class="col-xxl-3 col-lg-4 col-sm-6 ms-item position-relative" v-for="item in products.data"
                 :key="item">
              <ProductItem :data="item"></ProductItem>
              <!--              <div class="ms-item-main d-flex flex-column justify-content-between">-->
              <!--                <div class="ms-product_image position-relative">-->
              <!--                  <div class="ms-offer-tag position-absolute top-0 left-0">-->
              <!--                    <Tag value="HOT" class="hot ms-offer-tag_item"></Tag>-->
              <!--                  </div>-->
              <!--                  &lt;!&ndash;                  <Image :src="require('@public/assets/images/products/drone.png')" alt="Image"/>&ndash;&gt;-->
              <!--                  <Image :src="item.medias[0].media_url" alt="Image"/>-->
              <!--                  <div class="ms-product-buttons w-100">-->
              <!--                    <div class="d-flex justify-content-between gap-3">-->
              <!--                      <Button-->
              <!--                          class="ms-btn orange rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"-->
              <!--                          v-tooltip.bottom="{ value: $t('favorite'), escape: true }">-->
              <!--                        <div class="icon-only icon-heart_black"></div>-->
              <!--                      </Button>-->
              <!--                      <Button-->
              <!--                          class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"-->
              <!--                          v-tooltip.bottom="{ value: $t('add_to_cart'), escape: true }">-->
              <!--                        <div class="icon-only icon-simple_cart-black"></div>-->
              <!--                      </Button>-->
              <!--                      <Button-->
              <!--                          class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"-->
              <!--                          v-tooltip.bottom="{ value: $t('view_details'), escape: true }">-->
              <!--                        <div class="icon-only icon-eye"></div>-->
              <!--                      </Button>-->
              <!--                    </div>-->
              <!--                  </div>-->
              <!--                </div>-->
              <!--                <div class="rating d-flex gap-2 flex-wrap mt-3">-->
              <!--                  <div class="star-rating">-->
              <!--                    <Rating v-model="item.rating" readonly :cancel="false"/>-->
              <!--                  </div>-->
              <!--                  <div class="quantity-rating">-->
              <!--                    (52,677)-->
              <!--                  </div>-->
              <!--                </div>-->
              <!--                <div class="ms-offer_name text-start">-->
              <!--                  {{ item.productName }}-->
              <!--                </div>-->
              <!--                <div class="ms-offer_price text-start">-->
              <!--                  <span class="offer-price_origin">25.000.000đ</span>-->
              <!--                  <span class="offer-price_final">{{ formatCurrency({value: Number(item.productPrice)}) }}</span>-->
              <!--                </div>-->
              <!--              </div>-->
            </div>
          </div>
        </div>
        <div class="footer">
          <Paginator :rows="products.perPage" :totalRecords="products.total"
                     v-if="products.total"></Paginator>
        </div>
      </div>
    </div>
  </div>
  <TheLoading :fixed="true" v-if="isLoadingProduct"/>
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
import SelectButton from 'primevue/selectbutton';
import ToggleButton from 'primevue/togglebutton';
import TheLoading from "@/components/TheLoading.vue";
import {mapGetters, mapActions} from "vuex";
import {formatCurrency} from "../../../../common/function";
import ProductItem from '@/components/ProductItem.vue'

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
    SelectButton,
    ToggleButton,
    TheLoading,
    ProductItem,
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
      previousSelectedOrder: null,
      selectedOrder: null,
      orderOptions: [
        {
          name: this.$t('related'),
          type: 1,
          orderType: 1,
          selected: false,
        },
        {
          name: this.$t('newest'),
          type: 1,
          orderType: 2,
          selected: false,
        },
        {
          name: this.$t('best_selling'),
          type: 1,
          orderType: 3,
          selected: false,
        },
        {
          name: this.$t('price'),
          type: 2,
          orderType: 4,
          selected: false,
        },
        {
          name: this.$t('filter'),
          type: 3,
          orderType: 4,
          selected: false,
        },
      ],
      pagination: {
        limit: 20,
        categoryId: null,
        withCategoryChildren: true,
        rangePrice: [0, 999999999],
      },
      visibleFilters: false,
      filtersParent: {},
      selectedCategory: 'Production',
      selectedCategories: null,
    }
  },
  methods: {
    formatCurrency,
    ...mapActions(['getProductWithFilter']),
    async applyFilter(filters, isWithTimeOut = false) {
      let timeOut = isWithTimeOut ? 750 : 0;
      clearTimeout(this.debounce);
      this.debounce = setTimeout(() => {
        if (filters.categoryId) {
          this.$router.push({query: {categoryId: filters.categoryId}});
        }

        Object.keys(filters).forEach(key => {
          this.pagination[key] = filters[key];
        })
        this.handlerFilter();
      }, timeOut);
    },

    handlerFilter() {
      this.pagination.categoryId = this.pagination.categoryId ? this.pagination.categoryId : Number(this.$route.query.categoryId);
      this.getProductWithFilter({
        filters: {
          'filters': this.pagination,
          'order': this.selectedOrder
        }
      });
    },

    changeOrder() {
      if (this.previousSelectedOrder && !this.selectedOrder && this.previousSelectedOrder.type === 2) {
        this.selectedOrder = this.previousSelectedOrder;
        this.selectedOrder.selected = !this.selectedOrder.selected;
      }

      if (this.selectedOrder && this.selectedOrder.type === 3) {
        this.visibleFilters = true;
        this.selectedOrder = null;
      }

      this.handlerFilter();
      this.previousSelectedOrder = this.selectedOrder;
    }
  },

  created() {
    this.handlerFilter();
  },

  computed: {
    ...mapGetters(['products', 'isLoadingProduct']),
  }

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

    .ms-product_image {
      .p-image {
        width: 100%;
        height: 100%;

        img {
          height: 100%;
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

        .ms-filter-box-mobile {
          display: none !important;
        }

        .p-button-group.p-selectbutton {
          display: flex;
          gap: 16px;

          .p-button {
            flex: 1;
            border: 1px solid var(--Gray-100);
            border-radius: 5px;
            padding: 8px 25px;

            &:focus {
              box-shadow: unset;
            }

            &.p-highlight {
              //background: var(--Secondary-700);
              background: var(--Primary-500);

              svg path {
                fill: #ffffff;
                stroke: #ffffff;
                color: #ffffff;
              }
            }

            &:last-child {
              border-color: var(--Primary-500);
              color: var(--Primary-500);
              display: none;
            }
          }
        }
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

@media (max-width: 1200px) {
  .ms-shop-grid_wrapper {
    .ms-shop-grid_container {
      .right-side {
        .sub-header {
          .left-side {
            .title {
              display: none;
            }

            .p-selectbutton.p-button-group {
              gap: 8px;
            }
          }
        }

      }
    }
  }
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
        .sub-header {
          background: var(--Gray-00);
          padding: 0;

          .ms-filter-box-mobile {
            display: block !important;
          }

          .left-side {
            .p-selectbutton.p-button-group {
              .p-button {
                padding: 0 10px;

                &:not(:last-child) {
                  border: unset;
                  border-right: 1px solid var(--Gray-100);
                  border-radius: unset;
                }

                &:first-child {
                  display: none;
                }

                &:last-child {
                  padding: 6px 0;
                  display: block;
                }

                &.p-highlight {
                  background: unset;
                  border-bottom: 1px solid var(--Primary-500);
                  color: var(--Primary-500);

                  svg path {
                    fill: var(--Primary-500);
                    stroke: var(--Primary-500);
                    color: var(--Primary-500);
                  }
                }
              }
            }
          }
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
