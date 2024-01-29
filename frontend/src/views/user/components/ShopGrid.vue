<template>
  <div class="ms-shop-grid_wrapper">
    <div class="ms-shop-grid_container ms-feature-product-wrapper row">
      <div class="left-side col-xxl-3">
        <Panel header="Danh mục" toggleable class="ms-category">
          <div v-for="category in categories" :key="category.key" class="d-flex gap-2 align-items-center">
            <RadioButton v-model="selectedCategory" :inputId="category.key" name="dynamic" :value="category.name"/>
            <label :for="category.key" class="ml-2">{{ category.name }}</label>
          </div>
        </Panel>

        <Panel header="Giá tiền" toggleable class="ms-price">
          <div class="w-100">
            <Slider v-model="sliderPirce" range class="w-100" max="99999999"/>
            <div class="row mt-2 gy-3">
              <div class="col-xxl-6 d-flex gap-2 flex-column">
                <div class="label text-start">Giá tối thiểu</div>
                <InputText placeholder="Giá tối thiểu" v-model="sliderPirce"/>
              </div>
              <div class="col-xxl-6 d-flex gap-2 flex-column">
                <div class="label text-start">Giá tối đa</div>
                <InputText placeholder="Giá tối đa" v-model="sliderPirce"/>
              </div>
            </div>
            <div class="d-flex flex-column mt-3" style="gap: 12px;">
              <div v-for="category in sliderPriceOptions" :key="category.key" class="d-flex gap-2 align-items-center">
                <RadioButton v-model="selectedCategory" :inputId="category.key" name="dynamic" :value="category.name"/>
                <label :for="category.key" class="ml-2">{{ category.name }}</label>
              </div>
            </div>
          </div>
        </Panel>

        <Panel header="Thương hiệu" toggleable class="ms-brand">
          <div class="row gy-2">
            <div v-for="category of categories" :key="category.key" class="d-flex gap-2 align-items-center col-xxl-6">
              <Checkbox v-model="selectedCategories" :inputId="category.key" name="category" :value="category.name"/>
              <label :for="category.key">{{ category.name }}</label>
            </div>
          </div>
        </Panel>

        <Panel header="Đánh giá" toggleable class="ms-rating">
          <div class="row gy-2">
            <div v-for="(item, index) in ratings" :key="item" class="d-flex gap-2 align-items-center col-xxl-12">
              <Checkbox v-model="selectedCategories" :inputId="item" name="category" :value="item"/>
              <Rating v-model="ratings[index]" readonly :cancel="false"/>
            </div>
          </div>
        </Panel>

      </div>
      <div class="right-side ms-featured_product-container col-xxl-9 d-flex flex-column">
        <div class="header mb-3 d-flex flex-row align-items-center justify-content-between flex-wrap">
          <div class="m-search_form flex-row d-flex align-items-center d-flex w-50">
            <InputText type="search" v-model="value" class="ms-input_search w-100" placeholder="Tìm kiếm"/>
            <div class="icon24 icon search-right search"></div>
          </div>
          <div class="d-flex flex-row align-items-center gap-2">
            <span class="w-100">Sắp xếp:</span>
            <Dropdown v-model="selectedCity" :options="cities" optionLabel="name" placeholder="Select a City"
                      class="w-full md:w-14rem"/>
          </div>
        </div>
        <div class="sub-header d-flex gx-0 gy-0 justify-content-between align-items-center flex-wrap row">
          <div class="left-side col-xxl-9 row align-items-center text-start">
            <span class="col-xxl-2 pl-0">Bộ lọc:</span>
            <div class="d-flex flex-wrap flex-shrink-1 col-xxl-10 gap-2 gx-0 gy-0">
              <Chip label="Iphone 11" removable/>
              <Chip label="Ipad" removable/>
              <Chip label="Thriller" removable/>
            </div>
          </div>
          <div class="right-side col-xxl-3">tesst</div>
        </div>
        <div class="main ms-product-list d-flex gx-0 gy-0 flex-grow-1">
          <div class="row">
            <div class="col-lg-3 col-md-4 ms-item gy-3 position-relative" v-for="item in products" :key="item">
              <div class="ms-item-main d-flex flex-column justify-content-between">
                <div class="ms-offer-tag">
                  <Tag value="HOT" class="hot ms-offer-tag_item"></Tag>
                </div>
                <div class="ms-product_image position-relative">
                  <Image :src="require('@public/assets/images/products/drone.png')" alt="Image"/>
                  <div class="ms-product-buttons w-100">
                    <div class="d-flex justify-content-between gap-3">
                      <Button
                          class="ms-btn orange rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                          v-tooltip.bottom="{ value: `Yêu thích`, escape: true }">
                        <div class="icon-only icon-heart_black"></div>
                      </Button>
                      <Button
                          class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                          v-tooltip.bottom="{ value: `Thêm vào giỏ hàng`, escape: true }">
                        <div class="icon-only icon-simple_cart-black"></div>
                      </Button>
                      <Button
                          class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                          v-tooltip.bottom="{ value: `Xem chi tiết`, escape: true }">
                        <div class="icon-only icon-eye"></div>
                      </Button>
                    </div>
                  </div>
                </div>
                <div class="rating d-flex gap-2 flex-wrap mt-3">
                  <div class="star-rating">
                    <Rating v-model="rating" readonly :cancel="false"/>
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
    Dropdown
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
      selectedCategory: 'Production',
      selectedCategories: null,
      categories: [
        {name: 'Accounting', key: 'A'},
        {name: 'Marketing', key: 'M'},
        {name: 'Production', key: 'P'},
        {name: 'Research', key: 'R'}
      ],
      ratings: [
        5,
        4,
        3,
        2,
      ],
      sliderPirce: [20000000, 60000000],
      sliderPriceOptions: [
        {name: 'Dưới 1 triệu', key: 'A'},
        {name: 'Từ 2 triệu đến 3 triệu', key: 'M'},
        {name: 'Từ 3 triệu đến 4 triệu', key: 'P'},
        {name: 'Từ 6 triệu đến 8 triệu', key: 'O'},
        {name: 'Từ 15 triệu đến 20 triệu', key: 'O'},
        {name: 'Từ 20 triệu đến 100 triệu', key: 'O'},
        {name: 'Trên 100 triệu', key: 'O'},
      ],
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
  }
}
</script>

<style lang="scss">
.ms-shop-grid_wrapper {
  padding: 40px $padding-base;

  .ms-shop-grid_container {

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
}
</style>
