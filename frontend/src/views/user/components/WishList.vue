<template>
  <div class="ms-wish-list_wrapper">
    <div class="ms-wish-list_container">
      <div class="title text-start">
        Danh sách yêu thích
      </div>
      <div class="ms-table ms-table-wish-list">
        <DataTable :value="products" tableStyle="min-width: 50rem" rowHover>
          <Column field="code" header="Sản phẩm" style="width: 40%;">
            <template #body="slotProps">
              <div class="ms-wish-list-product d-flex align-items-center gap-3">
                <div class="left-side" style="min-width: 60px;">
                  <Image :src="require('@public/assets/images/products/'+ slotProps.data.image)" width="60px"
                         alt="Image"/>
                </div>
                <div class="right-side truncate-text-3">
                  {{ slotProps.data.name }}
                </div>
              </div>
            </template>
          </Column>
          <Column field="price" header="Giá tiền">
            <template #body="slotProps">
              <div class="ms-price-group d-flex align-items-center gap-3">
                <div class="ms-price-origin">{{ slotProps.data.price }} đ</div>
                <div class="ms-price-discount">{{ slotProps.data.quantity }} đ</div>
              </div>
            </template>
          </Column>
          <Column field="category" header="Trạng thái" style="width: 15%">
            <template #body="slotProps">
              <div class="flex-row">
                <div class="d-flex status-ctn max-content" style="background-color: rgb(229, 250, 237);">
                  <div class="status-dot" style="background-color: rgb(0, 200, 83);"></div>
                  <div class="status-text" style="color: rgb(0, 200, 83);">Còn hàng</div>
                </div>
              </div>
            </template>
          </Column>
          <Column field="quantity" header="Thao tác" style="width: 20%">
            <template #body="slotProps">
              <div class="d-flex align-items-center gap-2">
                <div>
                  <Button
                      class="ms-btn orange d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                    <div class="fw-semibold">Thêm vào giỏ hàng</div>
                    <div class="icon-only icon-simple_cart"></div>
                  </Button>
                </div>
                <div class="icon-w24 icon-close-cricle pointer" v-tooltip.bottom="'Xóa'"></div>
              </div>
            </template>
          </Column>
        </DataTable>
      </div>
    </div>
  </div>
</template>

<script>
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Image from 'primevue/image';
import Button from 'primevue/button';

export default {
  components: {
    DataTable,
    Column,
    Image,
    Button
  },
  data() {
    return {
      products: [
        {
          id: '1000',
          code: 'f230fh0g3',
          name: 'Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear Headphones for Workouts and Running, Triple Black',
          description: 'Product Description',
          image: 'Image.png',
          price: 6500000,
          category: 'Accessories',
          quantity: 24,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
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
      ],
    }
  }
}
</script>

<style lang="scss">
.ms-wish-list_wrapper {
  padding: 72px $padding-base;

  .ms-wish-list_container {
    border-radius: 4px;
    border: 1px solid var(--Gray-100, #E4E7E9);
    background: var(--Gray-00, #FFF);

    .title {
      padding: 20px 24px;
      color: var(--Gray-900);
      font-size: 16px;
      font-weight: 500;
    }

    .ms-table-wish-list {
      .p-datatable .p-datatable-thead > tr > th {
        background: var(--Gray-50);
        color: var(--Gray-700);
        font-style: normal;
        font-weight: 500;
        text-transform: uppercase;
      }

      .p-datatable .p-datatable-tbody > tr > td{
        padding: 16px;
      }

      .ms-price-group {
        .ms-price-origin {
          color: var(--Gray-400);
          font-weight: 400;
          text-decoration: line-through;
        }

        .ms-price-discount {
          color: var(--Gray-900);
        }
      }
    }
  }
}
</style>
