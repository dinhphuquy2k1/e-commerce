<template>
  <div class="form-list flex-grow-1 d-flex ma-add-product_wrapper">
    <div class="d-flex flex-column flex-grow-1">
      <div class="d-flex flex-row title-box">
        <div class="list-title flex-grow-1 text-start">Thêm sản phẩm</div>
      </div>
      <div class="d-flex flex-row toolbar-box justify-content-between">
        <div class="left-toolbar d-flex flex-row">
          <div class="m-search_form flex-row d-flex align-items-center d-flex">
            <InputText type="search" v-model="value" class="ms-input_search w-100" placeholder="Tìm kiếm"/>
            <div class="icon24 icon search-right search"></div>
          </div>
        </div>
        <div class="right-toolbar d-flex flex-row">
          <Button

              class="ms-btn blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
            <div class="icon-only icon-simple_cart"></div>
            <div class="fw-semibold">Thêm sản phẩm</div>
          </Button>
        </div>
      </div>
      <div class="row gy-4 pb-4">
        <div class="col-xxl-9">
          <Panel header="Thông tin cơ bản" toggleable>
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label">Tên sản phẩm</div>
                <div class="">
                  <InputText placeholder="Tên sản phẩm"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box">
                <div class="label">Mô tả</div>
                <div class="">
                  <Textarea rows="4" cols="30" class="h-100" placeholder="Nhập mô tả"/>
                </div>
                <div class="ms-error-text"></div>
              </div>
            </div>
          </Panel>

          <Panel header="Phương tiện" toggleable class="mt-4 ma-media">
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label d-flex">Hình ảnh sản phẩm
                  <div class="icon16 icon-note text-start"
                       v-tooltip="'Tải lên tối đa 9 hình ảnh. Kích thước hình ảnh tối thiểu: 300×300 px.\nBạn nên sử dụng hình nền trắng làm hình ảnh đầu tiên thay vì sử dụng hình ảnh có các yếu tố khác (chữ, logo, đường viền, khối màu, hình mờ hoặc hình ảnh đồ họa khác).\nĐể thêm chữ vào hình ảnh, hãy đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                </div>
                <div class="description">Bạn nên thêm ít nhất 5 ảnh để minh họa đầy đủ cho sản phẩm của bạn.</div>
                <div class="">
                  <FileUpload name="demo[]" url="/api/upload" @upload="onTemplatedUpload($event)" :multiple="true"
                              accept="image/*" :maxFileSize="5000000 " @select="onSelectedFiles" showUploadButton
                  >
                    <template #header="{ chooseCallback, clearCallback, files }">
                      <div class="flex flex-wrap justify-content-between align-items-center flex-1 gap-2 d-none">
                        <div class="flex gap-2">
                          <Button class="ms-btn light-pink d-flex icon-only justify-content-center ms-btn_search mt-4"
                                  v-tooltip.bottom="{ value: `Yêu thích`, escape: true }">
                            <div class="icon-only icon-heart_black" ref="myButton" @click="chooseCallback()"></div>
                          </Button>
                          <Button @click="clearCallback()" icon="pi pi-times" rounded outlined severity="danger"
                                  :disabled="!files || files.length === 0"></Button>
                        </div>
                        <ProgressBar :value="totalSizePercent" :showValue="false"
                                     :class="['md:w-20rem h-1rem w-full md:ml-auto', { 'exceeded-progress-bar': totalSizePercent > 100 }]"
                        ><span class="white-space-nowrap">{{ totalSize }}B / 1Mb</span></ProgressBar
                        >
                      </div>
                    </template>
                    <template #content="{ files, uploadedFiles, removeUploadedFileCallback, removeFileCallback }">
                      <div class="row text-start gap-3 gx-0">
                        <div class="col-lg-8 ma-item-main-image" @click="$refs.myButton.click()">
                          <div class="image">
                            <Image :src="require('@public/assets/icons/image.svg')" style="color: red" alt="Image"/>
                          </div>
                          <div class="text-center title">Tải lên hình ảnh chính</div>
                          <ul>
                            <li>
                              Kích thước: 300 × 300 px
                            </li>
                            <li>
                              Kích thước tập tin tối đa: 5 MB (Tối đa 9 tập tin)
                            </li>
                            <li>
                              Định dạng: JPG, JPEG, PNG
                            </li>
                          </ul>
                        </div>
                        <div class="col-lg-4 row gap-2">
                          <div class="row gap-3">
                            <div class="col-6 ma-item-image">
                              <div>
                                <Image :src="require('@public/assets/images/background-perspective.png')" alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Chính diện'">
                                Chính diện
                              </div>
                            </div>
                            <div class="col-6 ma-item-image">
                              <div>
                                <Image :src="require('@public/assets/images/side.png')" alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Cạnh bên'">Cạnh bên</div>
                            </div>
                          </div>
                          <div class="row gap-3">
                            <div class="col-6 ma-item-image">
                              <div>
                                <Image :src="require('@public/assets/images/other-angles.png')" alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Các góc độ khác'">Các góc độ khác</div>
                            </div>
                            <div class="col-6 ma-item-image">
                              <div>
                                <Image :src="require('@public/assets/images/using.png')" alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Đang sử dụng'">Đang sử dụng</div>
                            </div>
                          </div>
                        </div>
                        <div class="row gap-3">
                          <div class="col-3 ma-item-image">
                            <div>
                              <Image :src="require('@public/assets/images/variant.png')" alt="Image"/>
                            </div>
                            <div class="title" v-tooltip.top="'Biến thể'">Biến thể</div>
                          </div>
                          <div class="col-3 ma-item-image">
                            <div>
                              <Image :src="require('@public/assets/images/background-perspective.png')" alt="Image"/>
                            </div>
                            <div class="title" v-tooltip.top="'Phối cảnh nền'">Phối cảnh nền</div>
                          </div>
                          <div class="col-3 ma-item-image">
                            <div>
                              <Image :src="require('@public/assets/images/close-up-photo.png')" alt="Image"/>
                            </div>
                            <div class="title" v-tooltip.top="'Ảnh chụp cận'">Ảnh chụp cận</div>
                          </div>
                          <div class="col-3 ma-item-image">
                            <div>
                              <Image :src="require('@public/assets/images/size-and-weight.png')" alt="Image"/>
                            </div>
                            <div class="title" v-tooltip.top="'Kích thước & cân nặng'">Kích thước & cân nặng</div>
                          </div>
                        </div>
                      </div>
                      <div v-if="files.length > 0">
                        <h5>Pending</h5>
                        <div class="flex flex-wrap p-0 sm:p-5 gap-5">
                          <div v-for="(file, index) of files" :key="file.name + file.type + file.size"
                               class="card m-0 px-6 flex flex-column border-1 surface-border align-items-center gap-3">
                            <div>
                              <img role="presentation" :alt="file.name" :src="file.objectURL" width="100" height="50"/>
                            </div>
                            <span class="font-semibold">{{ file.name }}</span>
                            <div>{{ formatSize(file.size) }}</div>
                            <Badge value="Pending" severity="warning"/>
                            <Button icon="pi pi-times" @click="onRemoveTemplatingFile(file, removeFileCallback, index)"
                                    outlined rounded severity="danger"/>
                          </div>
                        </div>
                      </div>

                      <div v-if="uploadedFiles.length > 0">
                        <h5>Completed</h5>
                        <div class="flex flex-wrap p-0 sm:p-5 gap-5">
                          <div v-for="(file, index) of uploadedFiles" :key="file.name + file.type + file.size"
                               class="card m-0 px-6 flex flex-column border-1 surface-border align-items-center gap-3">
                            <div>
                              <img role="presentation" :alt="file.name" :src="file.objectURL" width="100" height="50"/>
                            </div>
                            <span class="font-semibold">{{ file.name }}</span>
                            <div>{{ formatSize(file.size) }}</div>
                            <Badge value="Completed" class="mt-3" severity="success"/>
                            <Button icon="pi pi-times" @click="removeUploadedFileCallback(index)" outlined rounded
                                    severity="danger"/>
                          </div>
                        </div>
                      </div>
                    </template>
                  </FileUpload>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box">
                <div class="label d-flex">Video
                  <div class="icon16 icon-note text-start"
                       v-tooltip="'Video tải lên sẽ được hiển thị trên trang chi tiết sản phẩm. Hãy làm nổi bật 1 hoặc 2 lợi điểm bán hàng chính của sản phẩm trong video.'"></div>
                </div>
                <div class="description">
                  Tỷ lệ khung hình video phải từ 9:16 đến 16:9. Kích thước tập tin tối đa: 100 MB.
                </div>
                <div class="col-6 ma-item-video">
                  <div class="icon">
                     <Image :src="require('@public/assets/icons/video.svg')" alt="Image"/>
                  </div>
                  <div class="title">
                    Video
                  </div>
                </div>
                <div class="ms-error-text"></div>
              </div>
            </div>
          </Panel>
          <Panel header="Giá tiền" toggleable class="mt-4">
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label">Giá tiền</div>
                <div class="">
                  <InputText placeholder="Giá tiền"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="d-flex flex-row gap-4">
                <div class="group-form_box flex-grow-1 col-6">
                  <div class="label">Loại giảm giá</div>
                  <div class="">
                    <Dropdown v-model="selectedCity" :options="cities" optionLabel="name" placeholder="Loại giảm giá"
                              class="ms-category text-start"/>
                  </div>
                  <div class="ms-error-text"></div>
                </div>
                <div class="group-form_box flex-grow-1 col-6">
                  <div class="label">Tỉ lệ giảm giá</div>
                  <div class="">
                    <InputText placeholder="Tỉ lệ giảm giá"></InputText>
                  </div>
                  <div class="ms-error-text"></div>
                </div>
              </div>
              <div class="group-form_box">
                <div class="label">Mô tả</div>
                <div class="">
                  <Textarea rows="4" cols="30" class="h-100" placeholder="Nhập mô tả"/>
                </div>
              </div>
            </div>
          </Panel>
          <Panel header="Chi tiết sản phẩm" toggleable class="mt-4 ma-description-product">
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label d-flex">Mô tả sản phẩm
                  <div class="icon16 icon-note text-start" v-tooltip="'\n'+
'Bạn nên liệt kê từ 3 đến 5 lợi điểm bán hàng. Để giúp nội dung mô tả dễ đọc hơn, hãy mô tả từng lợi điểm bán hàng theo từng đoạn không quá 250 ký tự.\n'+
'Đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                </div>
                <div class="description">
                  Nên viết mô tả dài ít nhất 500 ký tự và thêm hình ảnh để giúp khách hàng đưa ra quyết định mua hàng.
                </div>
                <Editor v-model="value" editorStyle="height: 320px" placeholder="Nhập mô tả sản phẩm"/>
                <div class="ms-error-text"></div>
              </div>
            </div>
          </Panel>

          <Panel header="Thông tin bán hàng" toggleable class="mt-4" collapsed>
            <template #header>
              <div class="d-flex flex-column justify-content-start text-start ma-custom-panel-header">
                <div class="title">Thông tin bán hàng</div>
                <div class="description">Vui lòng chọn danh mục trước</div>
              </div>
            </template>
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label">Tên sản phẩm</div>
                <div class="">
                  <InputText placeholder="Tên sản phẩm"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box">
                <div class="label">Mô tả</div>
                <div class="">
                  <Textarea rows="4" cols="30" class="h-100" placeholder="Nhập mô tả"/>
                </div>
                <div class="ms-error-text"></div>
              </div>
            </div>
          </Panel>

          <Panel header="Vận chuyển" toggleable class="mt-4" collapsed>
            <template #header>
              <div class="d-flex flex-column justify-content-start text-start ma-custom-panel-header">
                <div class="title">Vận chuyển</div>
                <div class="description">Vui lòng chọn danh mục trước</div>
              </div>
            </template>
            <div class="d-flex flex-column group-form_list">
              <div class="group-form_box">
                <div class="label">Tên sản phẩm</div>
                <div class="">
                  <InputText placeholder="Tên sản phẩm"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
              <div class="group-form_box">
                <div class="label">Mô tả</div>
                <div class="">
                  <Textarea rows="4" cols="30" class="h-100" placeholder="Nhập mô tả"/>
                </div>
                <div class="ms-error-text"></div>
              </div>
            </div>
          </Panel>
        </div>
        <div class="col-xxl-3">
          <Panel header="Loại sản phẩm" toggleable>
            <p class="m-0">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat.
              Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
              Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
              laborum.
            </p>
          </Panel>
          <Panel header="Trạng thái" toggleable class="mt-4">
            <div class="group-form_box flex-grow-1">
              <div class="label">Trạng thái</div>
              <div class="">
                <Dropdown v-model="selectedCity" :options="cities" optionLabel="name" placeholder="Trạng thái"
                          class="ms-category text-start"/>
              </div>
            </div>
          </Panel>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Panel from 'primevue/panel';
import Button from 'primevue/button';
import InputText from 'primevue/inputtext';
import Textarea from 'primevue/textarea';
import Dropdown from 'primevue/dropdown';
import Editor from 'primevue/editor';
import Image from 'primevue/image';
import FileUpload from 'primevue/fileupload';

export default {
  components: {
    Button,
    InputText,
    Panel,
    Textarea,
    Dropdown,
    Editor,
    FileUpload,
    Image
  },
  data() {
    return {
      value: '',
      selectedCity: null,
      cities: [
        {name: 'New York', code: 'NY'},
        {name: 'Rome', code: 'RM'},
        {name: 'London', code: 'LDN'},
        {name: 'Istanbul', code: 'IST'},
        {name: 'Paris', code: 'PRS'}
      ],
      files: [],
      totalSize: 0,
      totalSizePercent: 0,
    }
  },
  methods: {
    onRemoveTemplatingFile(file, removeFileCallback, index) {
      removeFileCallback(index);
      this.totalSize -= parseInt(this.formatSize(file.size));
      this.totalSizePercent = this.totalSize / 10;
    },
    onClearTemplatingUpload(clear) {
      clear();
      this.totalSize = 0;
      this.totalSizePercent = 0;
    },
    onSelectedFiles(event) {
      this.files = event.files;
      this.files.forEach((file) => {
        this.totalSize += parseInt(this.formatSize(file.size));
      });
    },
    uploadEvent(callback) {
      this.totalSizePercent = this.totalSize / 10;
      callback();
    },
    onTemplatedUpload() {
      this.$toast.add({severity: 'info', summary: 'Success', detail: 'File Uploaded', life: 3000});
    },
    formatSize(bytes) {
      const k = 1024;
      const dm = 3;
      const sizes = this.$primevue.config.locale.fileSizeTypes;

      if (bytes === 0) {
        return `0 ${sizes[0]}`;
      }

      const i = Math.floor(Math.log(bytes) / Math.log(k));
      const formattedSize = parseFloat((bytes / Math.pow(k, i)).toFixed(dm));

      return `${formattedSize} ${sizes[i]}`;
    },
    handleElementClick() {
      this.$nextTick(() => {
        const button = this.$refs.myButton;
        button.click();

      });

    },

    test() {
      alert(1)
    }
  }
}
</script>

<style lang="scss">
.ma-add-product_wrapper {
  .p-panel {
    border-radius: 8px;
    background-color: #fff;

    .ma-custom-panel-header {
      .description {
        color: rgba(0, 0, 0, .55);
        font-size: 14px;
        font-weight: 400;
        margin-top: 3px;
      }
    }

    .p-panel-header {
      font-size: 16px;
      color: #000;
      font-weight: 700;
      background: #fff;
      border-bottom: unset;
      padding: 24px;
    }

    .p-panel-content {
      padding: 0 24px 24px 24px;
    }
  }
}

.ma-description-product {
  .p-editor-container .p-editor-toolbar.ql-snow {
    display: flex;
    justify-content: start;
    background: #fff;
    border-bottom: unset;
  }

  .ql-formats {
    .ql-picker-label {
      display: flex;
      justify-content: start;
    }
  }

  .ql-editor.ql-blank::before {
    font-style: unset;
    font-size: 14px;
    color: rgb(0, 0, 0, 0.3);
  }
}

.ma-media {

  .ma-item-video {
    width: 106px;
    height: 108px;
    background-color: #f5f5f5;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    border-radius: 4px;
    border: 1px dashed rgba(0, 0, 0, .14);

    .icon{
      margin-bottom: 8px;
    }

    &:hover {
      cursor: pointer;
      border-color: rgb(0, 153, 149);
    }
  }

  .p-fileupload {
    .p-fileupload-buttonbar {
      display: none;
    }

    .p-fileupload-content {
      padding: unset;
      border: unset;

      .ma-item-main-image {
        align-items: center;
        background-color: #fff;
        border: 1px dashed rgba(0, 0, 0, .14);
        border-radius: 4px;
        color: rgba(0, 0, 0, .55);
        display: flex;
        flex-direction: column;
        height: 224px;
        justify-content: center;
        width: 228px;

        .title {
          color: rgba(0, 0, 0, .92);
          font-weight: 500;
          margin-bottom: 8px;
          margin-top: 4px;
        }

        ul {
          margin-left: 30px;
          line-height: 18px;

          li {
            font-size: 12px;
          }
        }

        &:hover {
          cursor: pointer;
          border-color: rgb(0, 153, 149);
        }
      }

      .ma-item-image {
        width: 106px;
        height: 108px;
        background-color: #f5f5f5;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        border-radius: 4px;
        border: 1px dashed rgba(0, 0, 0, .14);

        &:hover {
          cursor: pointer;
          border-color: rgb(0, 153, 149);
        }

        .title {
          display: -webkit-box;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
          -webkit-line-clamp: 1;
        }
      }
    }
  }
}
</style>
