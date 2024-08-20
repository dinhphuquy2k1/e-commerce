<template>
  <div class="form-list flex-grow-1 d-flex overflow-auto ms-mass-listing">
    <div class="d-flex flex-column flex-grow-1">
      <div class="d-flex flex-row title-box align-items-center gap-2">
        <div class="icon24 back pointer" @click="this.$router.go(-1)"></div>
        <div class="list-title flex-grow-1 text-start">{{ MESSAGE.MASS_LISTING }}</div>
      </div>
      <div class="flex-1 d-flex row g-3">
        <div class="d-flex flex-column gap-3 col-3" style="max-width: 400px">
          <Panel :collapsed="!isCollapsedItem" :pt="{
                header: (options) => ({
                    class: [
                        {
                            'collapsed': options.state.d_collapsed,
                        }
                    ]
                }),
                }"
          >
            <template #header>
              <div class="d-flex pointer justify-content-between flex1 align-items-center"
                   @click="isCollapsedItem = true">
                <div>
                  <div class="text-head-l text-primary-normal">Bước 1</div>
                  <div class="text-neutral-text1 text-head-l">Tải mẫu về</div>
                </div>
                <div class="icon_down pointer rotate-transition"></div>
              </div>
            </template>
            <div class="text-neutral-text3">
              <div>
                <div class="text-p3-regular">Cách điền mẫu hàng loạt:</div>
                <div class="text-p4-regular">
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>Chọn danh mục phù hợp để tiến hành niêm yết hàng loạt.</div>
                  </div>
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>Chọn thương hiệu cho các sản phẩm niêm yết.</div>
                  </div>
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>Tiến hành tải mẫu và điền thông tin.</div>
                  </div>
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>Tải lên tập tin để tiến hành niêm yết.</div>
                  </div>
                  <div class="d-flex mt-2">
                    <span class="mx-6"></span>
                    <div class="text-primary-normal pointer">Xem hướng dẫn</div>
                  </div>
                </div>
              </div>
              <div class="mt-3">
                <div class="text-p3-regular">Công cụ hiệu quả:</div>
                <div class="text-p4-regular">
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>Tạo URL của hình ảnh trong Trung tâm phương tiện</div>
                  </div>
                </div>
              </div>
              <div class="mt-3">
                <div class="text-p3-regular">Mẹo:</div>
                <div class="text-p4-regular">
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>
                      Một danh mục chính xác có thể giúp sản phẩm có được khả năng hiển thị tốt hơn với người tiêu dùng.
                    </div>
                  </div>
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>
                      Nhập tên sản phẩm/mô tả sản phẩm để lấy đề xuất danh mục cho sản phẩm của bạn.
                    </div>
                  </div>
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>
                      Nhấn vào trường mục nhập để xem toàn bộ cây danh mục.
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </Panel>
          <Panel :collapsed="isCollapsedItem" :pt="{
                header: (options) => ({
                    class: [
                        {
                            'collapsed': options.state.d_collapsed,
                        }
                    ]
                }),
                }">
            <template #header>
              <div class="d-flex justify-content-between pointer flex1 align-items-center"
                   @click="isCollapsedItem = false">
                <div>
                  <div class="text-head-l text-primary-normal">Bước 2</div>
                  <div class="text-neutral-text1 text-head-l">Tải trang tính lên</div>
                </div>
                <div class="icon_down rotate-transition"></div>
              </div>
            </template>
            <div class="text-neutral-text3">
              <div>
                <div class="text-p3-regular">Lưu ý trước khi tải lên:</div>
                <div class="text-p4-regular">
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>Kiểm tra kỹ xem tiêu đề và nội dung trên trang Xem trước có nhất quán không.</div>
                  </div>
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>Dung lượng tập tin không được lớn hơn 5MB và định dạng phải là xlsx.</div>
                  </div>
                </div>
              </div>
              <div class="mt-3">
                <div class="text-p3-regular">Sau khi tập tin được tải lên:</div>
                <div class="text-p4-regular">
                  <div class="d-flex mt-2">
                    <span class="mx-6">·</span>
                    <div>
                      Nhấp vào Đến xem lại để kiểm tra trạng thái sản phẩm đã tải lên.
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </Panel>
        </div>
        <div class="flex-grow-1 col-9">
          <div class="ms-mass_listing_box bg-white rounded-4 p-48" v-if="isCollapsedItem">
            <div class="text-head-l text-neutral-text1">Chọn một danh mục phù hợp với sản phẩm của bạn nhất.</div>
            <div class="text-p3-regular text-neutral-text3 mt-1 mb-24">Một trang tính sẽ được tạo dựa trên danh mục bạn
              chọn.
            </div>
            <Dropdown v-model="selectedCategory" :options="categories" optionLabel="label"
                      :placeholder="MESSAGE.PLEASE_CHOOSE_ONE_OPTION"
                      :emptyMessage="MESSAGE.EMPTY_DROPDOWN"
                      checkmark
                      filter
                      panelClass="ms-dropdown-checkmark"
                      class="ms-category text-start mt-4">
            </Dropdown>
            <div class="mt-8" v-if="selectedCategory">
              <div class="theme-m4b-card theme-m4b-card-direction-horizontal theme-m4b-card-shadow">
                <div class="theme-m4b-card-icon">
                  <img :src="require(`@public/assets/${selectedCategory.media}`)" alt="" width="72" height="72"
                       class="rounded-4">
                </div>
                <div class="theme-m4b-card-box">
                  <div class="theme-m4b-card-box-info">
                    <div>
                      <div class="text-p3-semibold">{{ selectedCategory.label }}</div>
                      <div class="text-body-s-regular text-neutral-text3">{{ selectedCategory.description }}</div>
                    </div>
                  </div>
                </div>
                <span class="theme-m4b-card-close theme-m4b-card-close-icon icon-w24 icon-close"
                      @click="selectedCategory = null">
                  <span class="icon-close-cricle icon-w24"></span>
                </span>
              </div>
            </div>
            <div class="text-head-l text-neutral-text1 mt-5">
              Chọn nhãn hiệu
            </div>
            <div class="text-p3-regular text-neutral-text3 mt-1">Trình bày chính xác sản phẩm và cung cấp thông tin mô
              tả.
            </div>
            <MultiSelect v-model="selectedBrand" :options="brands" optionLabel="brand_name"
                         :placeholder="MESSAGE.PLEASE_SELECT_BRAND"
                         :emptyMessage="MESSAGE.EMPTY_DROPDOWN"
                         checkmark
                         :showToggleAll="false"
                         panelClass="ms-dropdown-checkmark"
                         class="ms-category text-start mt-4">
              <template #footer
              >
                <div class="d-flex gap-2 ms-dropdown_properties-footer">
                  <div class="group-form_box flex-grow-1">
                    <div class="">
                      <InputText v-model="valueBrandSelectAddOption"
                                 :class="{'error': invalidAddBrandOption['brand']}"
                                 :placeholder="MESSAGE.ENTER"></InputText>
                    </div>
                    <div class="ms-error-text" v-if="invalidAddBrandOption['brand']">
                      {{ invalidAddBrandOption['brand'] }}
                    </div>
                  </div>
                  <div>
                    <Button @click="appendOptionToBrandSelect"
                            class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                      <div class="fw-semibold">Thêm</div>
                    </Button>
                  </div>
                </div>
              </template>
            </MultiSelect>
            <Button
                @click="btnAddProduct"
                v-if="selectedCategory"
                class="ms-btn primary d-flex justify-content-center w-100 mt-5 ms-btn_search ps-3 pe-3 gap-2">
              <div class="">{{ MESSAGE.DOWNLOAD_THE_TEMPLATE }}</div>
            </Button>
          </div>
          <div v-else>
            <div class="bg-white rounded-4 p-48 pr-24 pl-24">
              <div class="d-flex gap-4">
                <img :src="require('@public/assets/images/excel-uploading.cddb3f8b.png')" alt="" width="200"
                     height="200">
                <div class="flex-1 overflow-hidden ml-24">
                  <div class="text-h1-bold text-neutral-text1 fw-semibold">Tải tập tin lên để nhập sản phẩm</div>
                  <div class="text-p3-regular mt-1 text-neutral-text3">Điền vào mẫu rồi tải lên để nhập sản phẩm.</div>
                  <div>
                    <div class="d-flex flex-grow-1">
                      <div
                          class="upload-container flex-grow-1 d-flex justify-content-center align-items-center"
                          v-if="!fileSelected">
                        <div class="no-file d-flex file-xlsx">
                        </div>
                      </div>
                      <div class="import-attachment-container flex1"
                           v-if="fileSelected">
                        <div class="file-info d-flex">
                          <div class="d-flex text-truncate">
                            <div class="file-icon text-left "
                                 style="width: 20px;"></div>
                            <div class="file-name text-left">
                              <!--                              {{ this.valuesFile[0].FileSelected.name }}-->
                            </div>
                          </div>
                          <div class="file-size text-left">
                            <!--                            {{-->
                            <!--                              formatSize(this.valuesFile[0].FileSelected.size)-->
                            <!--                            }}-->
                          </div>
                          <div
                              class="file-accepted text-left d-flex justify-content-between">
                            <div class="icon-success" v-if="FileSuccess"></div>
                            <div v-if="FileSuccess">Hợp lệ</div>
                            <div class="icon-unsuccess"
                                 v-if="!FileSuccess"></div>
                            <div v-if="!FileSuccess">Không hợp lệ</div>
                          </div>
                          <div
                              class="change-file blue-text pointer text-left text-link mw-maxcontent justify-content-end">
                            Đổi
                            tệp khác
                          </div>
                        </div>
                        <div class="file-caution" v-if="FileSuccess">
                          <div class="file-caution-img">
                          </div>
                          <div class="file-caution-center mt-20 text-center">
                            Lưu ý
                            <span data-v-6d95cd2a="" data-v-30ce9692=""
                                  style="color: red;">*</span>
                            : Bạn vui lòng chọn sheet danh sách và
                            <br>
                            dòng tiêu đề của sheet đó.
                          </div>
                        </div>
                        <div class="file-error" v-else>
                          <div class="file-error-title red-text"> Lý do không hợp
                            lệ:
                          </div>
                          <div class="file-error-title red-text">- Dung lượng quá
                            lớn
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Dropdown from 'primevue/dropdown';
import MultiSelect from "primevue/multiselect";
import InputText from 'primevue/inputtext';
import Panel from 'primevue/panel';
import Button from "primevue/button";
import {MESSAGE} from "@/common/enums";
import {getBrand, addBrand} from "@/api/brand";
import {getCategory} from "@/api/category";

export default {
  components: {
    Dropdown,
    MultiSelect,
    InputText,
    Panel,
    Button,
  },

  data() {
    return {
      valueBrandSelectAddOption: null,
      invalidAddBrandOption: [],
      brands: [],
      categories: [],
      selectedBrand: null,
      selectedCategory: null,
      isCollapsedItem: true,
    }
  },

  methods: {
    /**
     * Click thêm mới option thương hiệu
     */
    async appendOptionToBrandSelect() {
      this.invalidAddBrandOption = [];
      if (this.valueBrandSelectAddOption === null || this.valueBrandSelectAddOption.trim() === "") {
        this.invalidAddBrandOption['brand'] = MESSAGE.PLEASE_FILL_IN_THIS_FIELD;
      }
      if (Object.keys(this.invalidAddBrandOption).length > 0) {
        return;
      }

      if (this.brands.filter(item => item.brand_name === this.valueBrandSelectAddOption).length === 0) {
        this.selectedBrand = {
          brand_name: this.valueBrandSelectAddOption
        }
        await addBrand(this.selectedBrand).then(res => {
          this.valueBrandSelectAddOption = null;
          this.brands.push(this.selectedBrand)
        }).catch(error => {
          console.log(error)
        })
      }
    },

    /**
     * Lấy danh sách thương hiệu
     */
    loadBrand() {
      getBrand().then(res => {
        this.brands = res.data
      }).catch(error => {
        console.log(error)
      })
    },

    /**
     *
     */
    loadCategory() {
      getCategory().then(res => {
        this.categories = res.data
      }).catch(error => {
        console.log(error)
      })
    }
  },

  created() {
    this.loadBrand();
    this.loadCategory();
  },

  computed: {
    MESSAGE() {
      return MESSAGE
    }
  }

}
</script>

<style lang="scss">
.ms-mass-listing {
  .ms-mass_listing_box {

  }

  .p-panel {
    .p-panel-header {
      background: #fff;
      border: none;
      border-bottom: 1px solid #e0e0e0;

      &.collapsed {
        background-color: var(--theme-arco-color-bg-bg1);
        border-radius: 4px;
        border: none;
      }
    }

    .p-panel-content {
      border: none;
    }
  }
}
</style>
