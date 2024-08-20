<template>
  <div class="form-list flex-grow-1 d-flex overflow-auto">
    <div class="d-flex flex-column flex-grow-1">
      <div class="d-flex flex-row title-box">
        <div class="list-title flex-grow-1 text-start">{{ MESSAGE.BATCH_TOOLS }}</div>
      </div>
      <div class="flex-1 d-flex">
        <div class=" bg-white rounded-8 px-24 flex1 py-32 flex flex-wrap">
          <div class="row g-4">
            <div class="col-lg-6 ms-setting-account_items" v-for="item in settings">
              <router-link :to="item.route" class="d-flex gap-3 align-items-center item">
                <div class="ms-setting-account_items--left d-flex h-100 w-40">
                  <div class="d-flex h-100"><img :src="item.image" alt="" width="40" height="40"></div>
                </div>
                <div class="ms-setting-account_items--right d-flex flex-column h-100">
                  <div class="title fs-5">{{ item.title }}</div>
                  <div class="description">
                    {{ item.description }}
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {MESSAGE} from "../../../common/enums";

export default {
  computed: {
    MESSAGE() {
      return MESSAGE
    }
  },
  components: {},
  data() {
    return {
      settings: [
        {
          title: 'Xuất bản hàng loạt sản phẩm',
          route: '/admin/product/batch/mass-listing',
          description: 'Để xuất bản nhiều sản phẩm trong một lô, chỉ cần chọn hạng mục, tải xuống mẫu, nhập tất cả thông tin sản phẩm của bạn và tải lên lại mẫu',
          image: require("@public/assets/images/batch_export_product.png"),
        },
        {
          title: 'Chỉnh sửa hàng loạt sản phẩm',
          route: '/admin/profile/account-setting/payment',
          description: 'Để chỉnh sửa nhiều sản phẩm trong một lô, chỉ cần tải xuống thông tin sản phẩm trong một mẫu, chỉnh sửa và sau đó tải lên lại',
          image: require("@public/assets/images/batch_product.png"),
        },
        {
          title: 'Chỉnh sửa hàng loạt hình ảnh sản phẩm',
          route: '/admin/product/batch/edit-images',
          description: 'Chỉnh sửa hình ảnh cho một lô sản phẩm',
          image: require("@public/assets/images/batch_image_product.png"),
        },
        {
          title: 'Quản lý biểu đồ kích cỡ hàng loạt',
          route: '/admin/product/batch/sizes',
          description: 'Quản lý các mẫu kích cỡ đã lưu và các sản phẩm được liên kết đến biểu đồ.',
          image: require("@public/assets/images/batch_size.png"),
        },
      ],
    }
  }
}
</script>

<style lang="scss">
.ms-setting-account_items {
  .item {
    padding: 16px 20px;
    border: 1px solid #e0e0e0;
    border-radius: 4px;
    cursor: pointer;
    height: 124px;

    .title {
      display: -webkit-box;
      -webkit-box-orient: vertical;
      overflow: hidden;
      text-overflow: ellipsis;
      -webkit-line-clamp: 1;
    }

    .description {
      display: -webkit-box;
      -webkit-box-orient: vertical;
      overflow: hidden;
      text-overflow: ellipsis;
      -webkit-line-clamp: 2;
      color: rgba(0, 0, 0, .55);
    }
  }
}
</style>
