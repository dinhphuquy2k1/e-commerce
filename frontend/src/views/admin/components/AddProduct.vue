<template>
  <div class="form-list position-relative flex-grow-1 d-flex ma-add-product_wrapper mw-100">
    <TheLoading v-if="isLoading"></TheLoading>
    <div class="d-flex flex-column mw-100 mh-100 w-100">
      <div class="popup-header">
        <div class="h-100 d-flex justify-content-between ms-popup-header align-items-center">
          <div class="left-toolbar d-flex flex-row">
            <div class="d-flex flex-row align-items-center gap-2">
              <div class="icon24 back pointer" @click="this.$router.go(-1)"></div>
              <div class="list-title flex-grow-1 text-start">Thêm sản phẩm</div>
            </div>
          </div>
          <div class="right-toolbar d-flex flex-row">
          </div>
        </div>
      </div>

      <div class=" popup-content flex1 flex-column">
        <div class="flex1">
          <div class="row g-0 h-100 flex1">
            <div class="col-3 position-sticky list-tab-menu">
              <div class="tab-item" v-for="(item, indexParent) in listTabMenu">
                <div class="tab-item-parent" :class="{'active': item.active}"
                     @click="activeTabMenu(indexParent, null, true)">
                  {{ indexParent + 1 }}. {{ item.label }}
                </div>
                <div class="tab-item-child" :class="{'active': child.active}"
                     @click="activeTabMenu(indexParent, indexChild)"
                     v-for="(child, indexChild) in item.children">
                  <span>{{ indexParent + 1 }}.{{ indexChild + 1 }}. {{ child.label }}</span>
                </div>
              </div>
            </div>
            <div class="col-9 h-100 overflow-auto content-body flex1">
              <Panel header="1. Thông tin cơ bản" class="ma-media">
                <div class="d-flex flex-column group-form_list" ref="image">
                  <div class="group-form_box">
                    <div class="label d-flex align-items-center gap-1">
                      <span class="required">*</span>
                      Hình ảnh sản phẩm
                      <div class="icon_question--cricle-13 text-start"
                           v-tooltip="'Tải lên tối đa 9 hình ảnh. Kích thước hình ảnh tối thiểu: 300×300 px.\nBạn nên sử dụng hình nền trắng làm hình ảnh đầu tiên thay vì sử dụng hình ảnh có các yếu tố khác (chữ, logo, đường viền, khối màu, hình mờ hoặc hình ảnh đồ họa khác).\nĐể thêm chữ vào hình ảnh, hãy đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                    </div>
                    <div class="description">Bạn nên thêm ít nhất 5 ảnh để minh họa đầy đủ cho sản phẩm của bạn.</div>
                  </div>
                  <div class="d-flex flex-column flex-grow-1">
                    <div class="position-relative d-flex flex-grow-1">
                      <div class="grid grid-cols-4 grid-rows-3 gap-12 ms-product_images">
                        <div v-for="(item, index) in imageProducts" class="ms-item_image--products_wrapper"
                             @click="chooseImageProduct($event, index)"
                             :class="{'active': item.active, 'ms-media_active': item.imageData}">
                          <FileUpload name="demo[]" url="/api/upload" @upload="onTemplatedUpload($event)"
                                      accept="image/*" :maxFileSize="5000000 "
                                      @select="changeImageProduct($event, index)"
                                      showUploadButton
                          >
                            <template #header="{ chooseCallback, clearCallback, files }">
                              <button :ref="`chooseButton${index}`" @click="chooseCallback()">123</button>
                              <button :ref="`clearButton${index}`" @click="clearCallback()"></button>
                            </template>
                            <template
                                #content="{ files, uploadedFiles, removeUploadedFileCallback, removeFileCallback }">
                              <div class="p-fileupload-empty" data-pc-section="empty">
                                <div v-if="item.imageData" class="d-flex h-100 w-100">
                                  <Image :src="item.image" class="flex-grow-1 w-100 h-100"
                                         alt="Image"
                                         preview>
                                    <template #indicatoricon>
                                      <div class="d-flex gap-2">
                                        <i class="icon-eye"></i>
                                        <div class="icon_remove-white"
                                             @click="removeProductImage($event, index)"></div>
                                      </div>
                                    </template>
                                  </Image>
                                </div>
                                <div v-else class="ms-item_image--products">
                                  <div class="image d-flex align-items-center text-center">
                                    <Image :src="item.icon"
                                           alt="Image"/>
                                  </div>
                                  <div class="title" v-tooltip.top="item.title">{{ item.title }}</div>
                                  <ul v-if="item.description">
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
                              </div>
                            </template>
                          </FileUpload>
                        </div>
                      </div>
                    </div>
                    <div class="ms-error-text" v-if="invalidProduct['image']">{{ invalidProduct['image'] }}</div>
                  </div>
                  <div class="group-form_box">
                    <div class="label d-flex align-items-center">
                      <span class="required">*</span>
                      Tên sản phẩm
                    </div>
                    <div class="" ref="product_name">
                      <InputText v-model="selectedProduct['product_name']" placeholder="Tên sản phẩm"
                                 :class="{'error': invalidProduct['product_name']}"
                      ></InputText>
                    </div>
                    <div class="ms-error-text" v-if="invalidProduct['product_name']">
                      {{ invalidProduct['product_name'] }}
                    </div>
                  </div>
                  <div class="group-form_box" ref="category">
                    <div class="label d-flex align-items-center gap-1">
                      <span class="required">*</span>
                      Hạng mục
                      <div class="icon_question--cricle-13 text-start"
                           v-tooltip="'Đảm bảo rằng bạn chọn danh mục phù hợp. Việc phân loại sai sản phẩm có thể ảnh hưởng đến chất lượng bán hàng.'"></div>
                    </div>
                    <div class="">
                      <TreeSelect v-model="selectedCategory" :options="categories"
                                  @change="changeCategory"
                                  label="name"
                                  panel-class="ms-treeselect_parent"
                                  :class="{'error': invalidProduct['category']}"
                                  placeholder="Vui lòng chọn một hạng mục"/>
                    </div>
                    <div class="ms-error-text" v-if="invalidProduct['category']">
                      {{ invalidProduct['category'] }}
                    </div>
                  </div>
                  <div class="group-form_box group-form_properties" v-if="properties?.properties?.length > 0">
                    <div class="label d-flex align-items-center">
                      Thuộc tính sản phẩm
                      <div class="icon16 icon-note text-start"
                           v-tooltip="'Thêm thuộc tính sản phẩm có thể giúp khách hàng hiểu rõ hơn về sản phẩm đó.'"></div>
                    </div>
                    <div class="row g-0 pb-2 ps-2 pe-2">
                      <div v-for="(property, index) in properties.properties"
                           class="col-lg-4 col-sm-6 gx-3 gy-3 col-xs-12">
                        <div class="group-form_box" v-if="properties.propertyType?.INPUT_TEXT?.value === property.type">
                          <div class="label">{{ property['name'] }}</div>
                          <div class="">
                            <InputText v-model="selectedProperty[index]"
                                       :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"></InputText>
                          </div>
                          <div class="ms-error-text"></div>
                        </div>
                        <div class="group-form_box"
                             v-else-if="properties.propertyType?.SELECT_SINGLE_WITH_ADD_OPTION?.value === property.type || properties.propertyType?.SELECT_SINGLE?.value === property.type">
                          <div class="label d-flex align-items-center">
                            <span class="required" v-if="property.required">*</span>
                            {{ property['name'] }}
                          </div>
                          <div class="">
                            <Dropdown v-model="selectedProperty[index]" :options="property.property_values"
                                      optionLabel="value"
                                      @before-show="beforeShowSelectWithAddOption(index)"
                                      :placeholder="MESSAGE.SELECT_PROPERTY_PLACEHOLDER"
                                      showClear
                                      filter
                                      checkmark
                                      panelClass="ms-dropdown-checkmark"
                                      class="ms-category text-start">
                              <template #footer
                                        v-if="properties.propertyType?.SELECT_SINGLE_WITH_ADD_OPTION?.value === property.type">
                                <div class="d-flex gap-2 ms-dropdown_properties-footer">
                                  <div class="group-form_box">
                                    <div class="">
                                      <InputText v-model="valueSelectAddOption[index]"
                                                 :class="{'error': invalidValueSelectAddOption[index]}"
                                                 :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"></InputText>
                                    </div>
                                    <div class="ms-error-text" v-if="invalidValueSelectAddOption[index]">
                                      {{ invalidValueSelectAddOption[index] }}
                                    </div>
                                  </div>
                                  <Button @click="appendOptionToSingleSelect(index)"
                                          class="ms-btn blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                                    <div class="fw-semibold">Thêm</div>
                                  </Button>
                                </div>
                              </template>
                            </Dropdown>
                          </div>
                          <div class="ms-error-text"></div>
                        </div>
                        <div class="group-form_box"
                             v-else-if="properties.propertyType?.SELECT_MULTIPLE_WITH_ADD_OPTION?.value === property.type || properties.propertyType?.SELECT_MULTIPLE?.value === property.type">
                          <div class="label">{{ property['name'] }}</div>
                          <div class="">
                            <MultiSelect v-model="selectedProperty[index]" :options="property.property_values"
                                         optionLabel="value"
                                         :placeholder="MESSAGE.SELECT_PROPERTY_PLACEHOLDER"
                                         display="chip"
                                         filter
                                         @before-show="beforeShowSelectWithAddOption(index)"
                                         class="ms-category text-start">
                              <template #footer
                                        v-if="properties.propertyType?.SELECT_MULTIPLE_WITH_ADD_OPTION?.value === property.type">
                                <div class="d-flex gap-2 ms-dropdown_properties-footer">
                                  <div class="group-form_box">
                                    <div class="">
                                      <InputText v-model="valueSelectAddOption[index]"
                                                 :class="{'error': invalidValueSelectAddOption[index]}"
                                                 :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"></InputText>
                                    </div>
                                    <div class="ms-error-text" v-if="invalidValueSelectAddOption[index]">
                                      {{ invalidValueSelectAddOption[index] }}
                                    </div>
                                  </div>
                                  <Button @click="appendOptionToMultipleSelect(index)"
                                          class="ms-btn blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                                    <div class="fw-semibold">Thêm</div>
                                  </Button>
                                </div>
                              </template>
                            </MultiSelect>
                          </div>
                          <div class="ms-error-text"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="group-form_box" ref="brand">
                    <div class="label d-flex align-items-center">
                      <span class="required">*</span>
                      Thương hiệu
                    </div>
                    <div class="">
                      <Dropdown v-model="selectedProduct.brand" :options="brands" optionLabel="brand_name"
                                placeholder="Chọn một thương hiệu"
                                :emptyMessage="MESSAGE.EMPTY_DROPDOWN"
                                checkmark
                                filter
                                panelClass="ms-dropdown-checkmark"
                                :class="{'error': invalidProduct['brand']}"
                                class="ms-category text-start">
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
                      </Dropdown>
                    </div>
                    <div class="ms-error-text" v-if="invalidProduct['brand']">
                      {{ invalidProduct['brand'] }}
                    </div>
                  </div>
                </div>
              </Panel>
              <Panel header="2. Chi tiết sản phẩm"
                     class="mt-4 ma-description-product ma-media">
                <div class="d-flex flex-column group-form_list" ref="description">
                  <div class="group-form_box">
                    <div class="label d-flex align-items-center gap-1">
                      <span class="required">*</span>
                      Mô tả sản phẩm
                      <div class="icon_question--cricle-13 text-start" v-tooltip="'\n'+
'Bạn nên liệt kê từ 3 đến 5 lợi điểm bán hàng. Để giúp nội dung mô tả dễ đọc hơn, hãy mô tả từng lợi điểm bán hàng theo từng đoạn không quá 250 ký tự.\n'+
'Đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                    </div>
                    <div class="description">
                      Nên viết mô tả dài ít nhất 500 ký tự và thêm hình ảnh để giúp khách hàng đưa ra quyết định mua
                      hàng.
                    </div>
                    <Editor v-model="selectedProduct.description" editorStyle="height: 320px"
                            :class="{'error': invalidProduct['description']}"
                            placeholder="Nhập mô tả sản phẩm"/>
                    <div class="ms-error-text" v-if="invalidProduct['description']">
                      {{ invalidProduct['description'] }}
                    </div>
                  </div>
                  <div class="group-form_box" v-if="properties?.size_table" ref="sizeTable">
                    <div class="label d-flex align-items-center gap-1">
                      <span class="required">*</span>Bảng kích thước
                      <div class="icon_question--cricle-13 text-start" v-tooltip="'\n'+
'Bạn nên liệt kê từ 3 đến 5 lợi điểm bán hàng. Để giúp nội dung mô tả dễ đọc hơn, hãy mô tả từng lợi điểm bán hàng theo từng đoạn không quá 250 ký tự.\n'+
'Đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                    </div>
                    <div class="d-flex align-items-center gap-3">
                      <div class="d-flex align-items-center">
                        <RadioButton v-model="sizeTable" inputId="useSample" name="sizeTable" value="0"
                                     @change="changeSizeTable"/>
                        <label for="useSample" class="ml-2 pointer">Sử dụng mẫu</label>
                      </div>
                      <div class="d-flex align-items-center">
                        <RadioButton v-model="sizeTable" inputId="upImage" name="sizeTable" value="1"
                                     @change="changeSizeTable"/>
                        <label for="upImage" class="ml-2 pointer">Tải ảnh lên</label>
                      </div>
                    </div>
                    <div class="ms-error-text" v-if="invalidProduct['size_table']">
                      {{ invalidProduct['size_table'] }}
                    </div>

                    <div class="group-form_box mt-3" v-if="Number.parseInt(sizeTable) === 0">
                      <div class="">
                        <Dropdown v-model="selectedProduct.size_id" :options="sizeList" optionLabel="size_name"
                                  optionValue="id"
                                  :placeholder="MESSAGE.SELECT_SIZE_CHART_TEMPLATE"
                                  :emptyMessage="MESSAGE.EMPTY_DROPDOWN"
                                  checkmark
                                  filter
                                  panelClass="ms-dropdown-checkmark"
                                  :class="{'error': invalidProduct['brand']}"
                                  class="ms-category text-start">
                          <template #footer
                          >
                            <div class="d-flex gap-2 ms-dropdown_properties-footer">
                              <div>
                                <Button @click="isSideBarSizeTable = true;"
                                        class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                                  <div class="fw-semibold">Thêm</div>
                                </Button>
                              </div>
                            </div>
                          </template>
                        </Dropdown>
                      </div>
                      <div class="ms-error-text" v-if="invalidProduct['brand']">
                        {{ invalidProduct['brand'] }}
                      </div>
                    </div>
                    <div v-if="Number.parseInt(sizeTable) === 1" class="mt-2">
                      <div class="col-6 ma-item-video" :class="{'ms-media_active': sizeImage}"
                           @click="chooseSizeImage" ref="sizeImage">
                        <FileUpload name="demo[]" url="/api/upload" @upload="onTemplatedUpload($event)"
                                    accept="image/*" :maxFileSize="5000000 " @select="changeSizeImage($event)"
                                    showUploadButton
                        >
                          <template #header="{ chooseCallback, clearCallback, files }">
                            <button :ref="`chooseSizeImage`" @click="chooseCallback()"></button>
                            <button :ref="`clearVideoProduct`" @click="clearCallback()"></button>
                          </template>
                          <template #content="{ files, uploadedFiles, removeUploadedFileCallback, removeFileCallback }">
                            <div class="p-fileupload-empty  w-100 h-100" data-pc-section="empty">
                              <div v-if="sizeImage" class="d-flex h-100 w-100">
                                <Image :src="sizeImageUrl" class="flex-grow-1 w-100 h-100"
                                       image-class="ms-image_upload"
                                       alt="Image"
                                       preview>
                                  <template #indicatoricon>
                                    <div class="d-flex gap-2">
                                      <i class="icon-eye"></i>
                                      <div class="icon_remove-white"
                                           @click="removeSizeImage"></div>
                                    </div>
                                  </template>
                                </Image>
                              </div>
                              <div v-else
                                   class="ms-item_image--products h-100 d-flex align-items-center justify-content-center">
                                <div class="image d-flex align-items-center text-center">
                                  <Image :src="require('@public/assets/icons/image.svg')"
                                         alt="Image"/>
                                </div>
                                <div class="title">Hình ảnh</div>
                              </div>
                            </div>
                          </template>
                        </FileUpload>
                      </div>
                      <div class="ms-error-text" v-if="invalidProduct['sizeImage']">
                        {{ invalidProduct['sizeImage'] }}
                      </div>
                    </div>
                  </div>
                  <div class="group-form_box" ref="video">
                    <div class="label d-flex align-items-center gap-1">Video
                      <div class="icon_question--cricle-13 text-start"
                           v-tooltip="'Video tải lên sẽ được hiển thị trên trang chi tiết sản phẩm. Hãy làm nổi bật 1 hoặc 2 lợi điểm bán hàng chính của sản phẩm trong video.'"></div>
                    </div>
                    <div class="description">
                      Tỷ lệ khung hình video phải từ 9:16 đến 16:9. Kích thước tập tin tối đa: 100 MB.
                    </div>
                    <div class="col-6 ma-item-video" :class="{'ms-media_active': videoProduct}"
                         @click="chooseVideoProduct">
                      <FileUpload name="demo[]" url="/api/upload" @upload="onTemplatedUpload($event)"
                                  accept="video/*" :maxFileSize="5000000 " @select="changeVideoProduct($event)"
                                  showUploadButton
                      >
                        <template #header="{ chooseCallback, clearCallback, files }">
                          <button :ref="`chooseVideoProduct`" @click="chooseCallback()">123</button>
                          <button :ref="`clearVideoProduct`" @click="clearCallback()"></button>
                        </template>
                        <template #content="{ files, uploadedFiles, removeUploadedFileCallback, removeFileCallback }">
                          <div class="p-fileupload-empty  w-100 h-100" data-pc-section="empty">
                            <div v-if="videoProduct" class="d-flex w-100 h-100 position-relative">
                              <video :src="videoProduct" class="w-100 h-100">
                              </video>
                              <div
                                  class="position-absolute ms-box_video w-100 h-100 flex-column d-flex  align-items-center justify-content-center">
                                <div class="icon-pause pointer"></div>
                                <div class="icon_remove-white pointer"></div>
                              </div>
                            </div>
                            <div v-else
                                 class="ms-item_image--products w-100 h-100 d-flex  align-items-center justify-content-center">
                              <div class="image d-flex align-items-center text-center">
                                <Image :src="require('@public/assets/icons/video.svg')"
                                       alt="Image"/>
                              </div>
                              <div class="title" v-tooltip.top="'Video'">Video</div>
                            </div>
                          </div>
                        </template>
                      </FileUpload>
                    </div>
                    <div class="ms-error-text"></div>
                  </div>
                </div>
              </Panel>

              <Panel header="3. Thông tin bán hàng" class="mt-4" :collapsed="!selectedCategory">
                <template #header>
                  <div class="d-flex flex-column justify-content-start text-start ma-custom-panel-header">
                    <div class="title" ref="saleInfo">3. Thông tin bán hàng</div>
                    <div class="description" v-if="!selectedCategory">Vui lòng chọn danh mục trước</div>
                  </div>
                </template>
                <div class="d-flex flex-column group-form_list">
                  <div class="group-form_box">
                    <div class="label d-flex gap-3 mb-1">Kích hoạt biến thể
                      <InputSwitch v-model="selectedProduct.has_variant"/>
                    </div>
                    <div class="sub-description">Bạn có thể thêm biến thể nếu sản phẩm này có nhiều lựa chọn như kích cỡ
                      hoặc màu sắc.
                    </div>
                    <div class="ms-error-text"></div>
                  </div>
                  <div class="group-form_box" v-if="!selectedProduct.has_variant" ref="product_no_variant">
                    <div class="label d-flex align-items-center">
                      <span class="required">*</span>
                      Giá & Số lượng
                    </div>
                    <div class="row theme-arco-table-content-inner gx-0">
                      <div class="col-4 d-flex flex-column mb-2">
                        <div class="label pt-1 pb-1 ps-2 d-flex align-items-center">
                          <span class="required">*</span>
                          Giá bán lẻ
                        </div>
                        <div class="d-flex ps-2">
                          <InputNumber v-model="saleInfomation.retailPrice" inputClass="text-start" class="flex-grow-1"
                                       mode="currency"
                                       :max="999999999"
                                       :class="{'error': invalidProduct['retail_price']}"
                                       currency="VND" locale="vi"/>
                        </div>
                        <!--                    <div class="ms-error-text ps-2" v-if="invalidProduct['retail_price']">-->
                        <!--                      {{ invalidProduct['retail_price'] }}-->
                        <!--                    </div>-->
                      </div>
                      <div class="col-4 d-flex flex-column">
                        <div class="label pt-1 pb-1 d-flex align-items-center ps-3">
                          <span class="required">*</span>
                          Số lượng
                        </div>
                        <div class="d-flex ps-3">
                          <InputNumber v-model="saleInfomation.quantity" inputClass="text-start" class="flex-grow-1"
                                       :class="{'error': invalidProduct['quantity']}"
                                       :max="999999"/>
                        </div>
                        <!--                    <div class="ms-error-text ps-3" v-if="invalidProduct['quantity']">-->
                        <!--                      {{ invalidProduct['quantity'] }}-->
                        <!--                    </div>-->
                      </div>
                      <div class="col-4 d-flex flex-column">
                        <div class="label pt-1 pb-1 d-flex align-items-center ps-3 pe-2">
                          SKU Người bán
                        </div>
                        <div class="d-flex ps-3 pe-2">
                          <InputNumber v-model="saleInfomation.skuSeller" inputClass="text-start" class="flex-grow-1"/>
                        </div>
                      </div>
                    </div>
                    <div class="ms-error-text"></div>
                  </div>
                  <div class="ms-group_variants d-flex flex-column gap-3 justify-content-start" v-else
                       ref="product_has_variant">
                    <div class="ms-variants_wrapper" v-for="(item, key) in listVariant">
                      <div v-if="!listVariant[key].complete">
                        <div class="group-form_box">
                          <div class="label d-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                              <span class="required">*</span>
                              Tên biến thể
                              <div class="icon16 icon-note text-start" v-tooltip="'\n'+
'Bạn nên liệt kê từ 3 đến 5 lợi điểm bán hàng. Để giúp nội dung mô tả dễ đọc hơn, hãy mô tả từng lợi điểm bán hàng theo từng đoạn không quá 250 ký tự.\n'+
'Đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                            </div>
                            <div class="d-flex align-items-center ms-checkbox_label gap-1" v-if="key === 0">
                              <Checkbox v-model="isVariantImage" :binary="true" inputId="variant_image"/>
                              <label for="variant_image">
                                Thêm hình ảnh
                              </label>
                            </div>
                          </div>
                          <div class="d-flex align-items-center">
                            <InputText v-model="listVariant[key].name" :placeholder="MESSAGE.INPUT_PLACEHOLDER_VARIANT"
                                       :class="{'error': invalidVariant[`name${key}`]}" maxlength="50"
                                       @input="changeNameVariant($event, key)"></InputText>
                            <div class="icon-w24 ms-1" style="margin-right: 45px;">
                              <div class="icon_remove pointer" v-if="listVariant.length > 1"
                                   @click="removeVariant(key)"></div>
                            </div>
                          </div>
                          <div class="ms-error-text" v-if="invalidVariant[`name${key}`]">
                            {{ invalidVariant[`name${key}`] }}
                          </div>
                        </div>
                        <div class="group-form_box mt-4">
                          <div class="label d-flex align-items-center">
                            <span class="required">*</span>
                            Tùy chọn
                            <div class="icon16 icon-note text-start" v-tooltip="'\n'+
'Bạn nên liệt kê từ 3 đến 5 lợi điểm bán hàng. Để giúp nội dung mô tả dễ đọc hơn, hãy mô tả từng lợi điểm bán hàng theo từng đoạn không quá 250 ký tự.\n'+
'Đảm bảo bạn sử dụng ngôn ngữ của thị trường mục tiêu.'"></div>
                          </div>
                          <div>
                            <DataTable :value="item.option" :reorderableColumns="true"
                                       class="ms-variants_table" :class="{' ms-variant_image': isVariantImage}"
                                       @rowReorder="onRowReorderVariant($event, key)" v-if="item.option.length > 0">
                              <Column>
                                <template #body="slotProps">
                                  <input type="file" hidden :ref="`ref_variant_image${key}${slotProps.index}`"
                                         @change="changeVariantImage($event, key, slotProps.index)">
                                  <div class="d-flex flex-column" style="max-width: 106px;" v-if="isVariantImage">
                                    <Button v-if="isVariantImage"
                                            @click="chooseVariantImage(key, slotProps.index)"
                                            :class="{'border-0': listVariant[key].option[slotProps.index].image}"
                                            class="ms-btn btn-image outline-primary d-flex flex-column justify-content-center flex-grow-1 me-3 ms-btn_search gap-2">
                                      <div v-if="!listVariant[key].option[slotProps.index].image">
                                        <div class="icon">
                                          <Image :src="require('@public/assets/icons/image.svg')"
                                                 alt="Image"/>
                                        </div>
                                        <div class="">Tải ảnh lên</div>
                                      </div>
                                      <div v-else class="d-flex">
                                        <Image :src="listVariant[key].option[slotProps.index].image"
                                               class="flex-grow-1"
                                               alt="Image"
                                               preview>
                                          <template #indicatoricon>
                                            <div class="d-flex gap-2">
                                              <i class="icon-eye"></i>
                                              <div class="icon_remove-white"
                                                   @click="removeVariantImage($event, key, slotProps.index)"></div>
                                            </div>
                                          </template>
                                        </Image>
                                      </div>
                                    </Button>
                                    <div class="ms-error-text mt-1 mb-2"
                                         v-if="invalidVariant[`image${key}${slotProps.index}`]">
                                      <div class="position-absolute">
                                        {{ invalidVariant[`image${key}${slotProps.index}`] }}
                                      </div>
                                    </div>
                                  </div>
                                </template>
                              </Column>
                              <Column class="flex-grow-1 d-flex align-items-start pe-2">
                                <template #body="slotProps">
                                  <div class="flex-grow-1 d-flex flex-column" :class="{'ms-2': isVariantImage}">
                                    <div class="">
                                      <InputText v-model="item.option[slotProps.index].value"
                                                 :class="{'error': invalidVariant[`${key}${slotProps.index}`]}"
                                                 :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"
                                                 maxlength="50"
                                                 @blur="changeVariantValue(key, slotProps.index)"></InputText>
                                    </div>
                                    <div class="ms-error-text" v-if="invalidVariant[`${key}${slotProps.index}`]">
                                      {{ invalidVariant[`${key}${slotProps.index}`] }}
                                    </div>
                                  </div>
                                </template>
                              </Column>
                              <Column
                                  style="padding-top: 6px !important; padding-right: 12px !important; padding-left: 12px !important;">
                                <template #body="slotProps">
                                  <div class="row-actions flex-row">
                                    <div class="icon_remove pointer"
                                         @click="deleteOptionVariantValue(key, slotProps.index)">
                                    </div>
                                  </div>
                                </template>
                              </Column>
                              <Column rowReorder :reorderableColumn="false" style="padding-top: 6px !important;">
                                <template #rowreordericon>
                                  <div class="p-icon p-datatable-reorderablerow-handle icon_drag_dot" aria-hidden="true"
                                       data-pc-section="rowreordericon"></div>
                                </template>
                              </Column>
                            </DataTable>

                            <div class="mt-2 d-flex flex-grow-1 gap-2">
                              <input type="file" hidden :ref="`ref_variant_image${key}`"
                                     @change="changeVariantImage($event, key)">
                              <div class="d-flex flex-column" style="max-width: 106px;" v-if="isVariantImage">
                                <Button
                                    @click="chooseVariantImage(key)"
                                    class="ms-btn btn-image outline-primary d-flex flex-column justify-content-center me-3 ms-btn_search gap-2">
                                  <div v-if="!itemVariant[key].image">
                                    <div class="icon">
                                      <Image :src="require('@public/assets/icons/image.svg')"
                                             alt="Image"/>
                                    </div>
                                    <div class="">Tải ảnh lên</div>
                                  </div>
                                  <div v-else class="d-flex flex-grow-1">
                                    <Image :src="itemVariant[key].image" class="flex-grow-1"
                                           alt="Image"
                                           preview>
                                      <template #indicatoricon>
                                        <div class="d-flex gap-2">
                                          <i class="icon-eye"></i>
                                          <div class="icon_remove-white"
                                               @click="removeVariantImage($event, key)"></div>
                                        </div>
                                      </template>
                                    </Image>
                                  </div>
                                </Button>
                                <div class="ms-error-text" v-if="invalidVariant[`image${key}`]">
                                  {{ invalidVariant[`image${key}`] }}
                                </div>
                              </div>
                              <div class="d-flex flex-column flex-grow-1">
                                <div class="">
                                  <InputText v-model="itemVariant[key].value"
                                             :class="{'error': invalidVariant[key]}"
                                             maxlength="50"
                                             :placeholder="MESSAGE.INPUT_PROPERTY_PLACEHOLDER"
                                             @blur="changeVariantValue(key)"></InputText>
                                </div>
                                <div class="ms-error-text" v-if="invalidVariant[key]">
                                  {{ invalidVariant[key] }}
                                </div>
                              </div>
                              <div class="me-4 ms-4" style="padding-left: 25px"></div>
                            </div>
                            <Button
                                @click="completeVariant(key)"
                                class="ms-btn secondary primary d-flex justify-content-center ms-btn_search ps-3 pe-3 mt-4 gap-2">
                              <div class="">Xong</div>
                            </Button>
                          </div>
                        </div>
                      </div>
                      <div class="" v-else>
                        <div class="row gy-2 align-items-center">
                          <div class="d-flex flex-column col-10 gap-2">
                            <div>
                              {{ listVariant[key].name }}
                            </div>
                            <div class="d-flex gap-2 flex-wrap">
                              <div v-for="option in listVariant[key].option">
                                <Chip :label="option.value"/>
                              </div>
                            </div>
                          </div>
                          <div class="col-2 d-flex justify-content-center">
                            <Button
                                @click="editVariant(key)"
                                class="ms-btn btn-transparent d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-1 mt-2 mb-2">
                              <div class="">Chỉnh sửa</div>
                            </Button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div>
                      <Button
                          v-if="listVariant.length < 3"
                          @click="addVariant"
                          class="custom-btn text-link ms-btn d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-1 mt-2 mb-2">
                        <div class="icon24 icon-add-blue"></div>
                        <div class="">Thêm biến thể</div>
                      </Button>
                    </div>

                    <div class="group-form_box" v-if="variantsData.length > 0">
                      <div class="label d-flex align-items-center justify-content-between">
                        <div>
                          <span class="required">*</span>
                          Danh sách biến thể
                        </div>
                        <div>
                          <ToggleButton v-model="isBatchEditing" :onLabel="MESSAGE.BATCH_EDITING"
                                        :offLabel="MESSAGE.BATCH_EDITING" class="ms-btn">
                            <template #icon>
                              <div class="icon_up"></div>
                            </template>
                          </ToggleButton>
                        </div>
                      </div>
                      <div class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-5 row-cols-xl-5 gx-3 gy-2"
                           v-if="isBatchEditing">
                        <div class="col" v-for="(variant, index) in listVariant">
                          <div class="">
                            <Dropdown v-model="batchEditingVariant[`variant${index}`]" :options="[{
                          value: 'Tất cả'
                        },... variant.option]" optionLabel="value"
                                      autoOptionFocus
                                      selectOnFocus
                                      placeholder="Trạng thái"
                                      class="ms-category text-start"/>
                          </div>
                        </div>
                        <div class="col">
                          <InputNumber v-model="batchEditingVariant['retailPrice']" inputClass="text-start"
                                       class="flex-grow-1"
                                       mode="currency"
                                       placeholder="Giá bán lẻ"
                                       currency="VND" locale="vi"/>
                        </div>
                        <div class="col">
                          <InputNumber v-model="batchEditingVariant['quantity']" placeholder="Số lượng"
                                       inputClass="text-start" class="flex-grow-1"/>
                        </div>
                        <div class="col">
                          <InputText v-model="batchEditingVariant['skuSeller']"
                                     :placeholder="MESSAGE.SKU_SELLER"></InputText>
                        </div>
                        <div class="col order-md-last">
                          <Button
                              class="ms-btn secondary d-flex justify-content-center w-100 ms-btn_search ps-3 pe-3 gap-2 me-2"
                              @click="applyBatchEditing">
                            <div class="">Áp dụng</div>
                          </Button>
                        </div>
                      </div>
                      <div class="mt-3">
                        <DataTable class="flex1 flex-column ms-list_variant--table"
                                   :value="variantsData"
                                   scrollable
                                   v-if="variantsData.length > 0"
                                   tableStyle="min-width: 100%" rowHover>
                          <Column
                              v-for="(column, index) in Object.keys(variantsData[0]).filter(key => key.startsWith('variant_name_')).map((name, index) => ({ name: variantsData[0][name] }))"
                              :key="index"
                              :field="'variant_option_' + index"
                              :header="column.name"
                              frozen alignFrozen="left"
                              style="min-width: 140px"
                          />
                          <Column field="retail_price" style="min-width: 140px">
                            <template #header>
                              Giá bán lẻ
                            </template>
                            <template #body="slotProps">
                              <div :ref="`variant_retail_price_${slotProps.index}`">
                                <InputNumber v-model="variantsData[slotProps.index].retail_price"
                                             inputClass="text-start"
                                             class="flex-grow-1"
                                             mode="currency"
                                             :class="{'error': invalidProduct[`variant_retail_price_${slotProps.index}`]}"
                                             placeholder="Giá bán lẻ"
                                             currency="VND" locale="vi"/>
                              </div>
                            </template>
                          </Column>
                          <Column field="quantity" style="min-width: 140px">
                            <template #header>
                              Số lượng
                            </template>
                            <template #body="slotProps">
                              <div :ref="`variant_quantity_${slotProps.index}`">
                                <InputNumber v-model="variantsData[slotProps.index].quantity" placeholder="Số lượng"
                                             :class="{'error': invalidProduct[`variant_quantity_${slotProps.index}`]}"
                                             inputClass="text-start" class="flex-grow-1"/>
                              </div>
                            </template>
                          </Column>
                          <Column field="sku_seller" style="min-width: 140px; position: unset;">
                            <template #header>
                              {{ MESSAGE.SKU_SELLER }}
                            </template>
                            <template #body="slotProps">
                              <div :ref="`variant_sku_seller_${slotProps.index}`">
                                <InputText v-model="variantsData[slotProps.index].sku_seller"
                                           :placeholder="MESSAGE.SKU_SELLER"></InputText>
                              </div>
                            </template>
                          </Column>
                        </DataTable>
                      </div>
                      <div class="ms-error-text"></div>
                    </div>
                  </div>

                </div>
              </Panel>

            </div>
          </div>
        </div>
      </div>

      <div class="popup-footer">
        <div class="flex-row">
          <div class="flex-grow-1"></div>
          <div class="d-flex">
            <Button
                @click="$router.push({name: routerBackName})"
                class="ms-btn btn-secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2 me-3">
              <div class="">Hủy</div>
            </Button>
            <Button
                @click="btnAddProduct(true)"
                class="ms-btn primary-outline d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2 me-3">
              <div class="">Lưu & thêm mới</div>
            </Button>
            <Button
                @click="btnAddProduct()"
                class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
              <div class="">Lưu</div>
            </Button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <Dialog v-model:visible="isCropperImage" modal header="Cắt hình ảnh" :style="{ width: '25rem' }">
    <vue-cropper ref="cropper" :src="imageSrc" :autoCrop="true"
                 :aspectRatio="1"
                 :autoCropArea="1"
                 :minCropBoxWidth="100" :minCropBoxHeight="100"
                 :maxCropBoxWidth="300" :maxCropBoxHeight="300"
                 :minContainerWidth="314"
                 :minCanvasWidth="314"
                 :maxCanvasWidth="314"
                 :minCanvasHeight="314"
                 :minContainerHeight="314"
                 :maxContainerHeight="314"
                 :maxContainerWidth="314"
    ></vue-cropper>
    <template #footer>
      <div class="d-flex flex-row">
        <div class="flex1"></div>
        <Button
            class="ms-btn secondary d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-2 me-2"
            @click="isCropperImage = false">
          <div class="">Hủy</div>
        </Button>
        <Button @click="cropImage"
                class="ms-btn primary blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="fw-semibold">Xong</div>
        </Button>
      </div>

    </template>
  </Dialog>
  <Sidebar v-model:visible="isSideBarSizeTable" header="Sidebar" position="right" :dismissable="false"
           style="width: 45vw" class="ms-sizebar_product d-flex" :showCloseIcon="false">
    <template #container="{ closeCallback }">
      <TheLoading v-if="isLoadingSizeTable"/>
      <div class="ms-sizebar_product-header">
        <div class="fw-bold text-xl">Tạo bảng kích thước
        </div>
        <div class="text-gray-3 text-sm">
          Điền thông tin kích cỡ để cung cấp biểu đồ kích cỡ cho khách hàng. Xem cách hiển thị
        </div>
      </div>
      <div class="ms-sizebar_product--wrapper flex-grow-1">
        <div class="ms-sizebar_product--content">
          <form action="">
            <div class="ms-sizebar_product--content_item">
              <h2 class="text-2xl mb-4">Bước 1: Chọn thông tin sẽ được hiển thị trên trang chi tiết sản phẩm của
                bạn</h2>
              <div class="group-form_box mb-4">
                <div class="label d-flex align-items-center mb-1">
                  <span class="required">*</span>
                  Tên biểu đồ kích cỡ
                </div>
                <div class="">
                  <InputText v-model="sizeTableData.size_name" :placeholder="MESSAGE.PLEASE_ENTER"
                             :class="{'error': invalidSizeTable['name']}"></InputText>
                </div>
                <div class="ms-error-text" v-if="invalidSizeTable['name']">
                  {{ invalidSizeTable['name'] }}
                </div>
              </div>

              <div class="group-form_box mb-4">
                <div class="label d-flex align-items-center mb-1">
                  <span class="required">*</span>
                  Tùy chọn
                </div>
                <div class="">
                  <MultiSelect
                      v-model="selectedSizeTableOption"
                      :options="sizeTableOption"
                      optionLabel="label"
                      :selectionLimit="6"
                      :class="{'error': invalidSizeTable['option']}"
                      :placeholder="MESSAGE.SELECT_PROPERTY_PLACEHOLDER"
                      display="chip"
                      class="ms-category text-start"></MultiSelect>
                </div>
                <div class="ms-error-text" v-if="invalidSizeTable['option']">
                  {{ invalidSizeTable['option'] }}
                </div>
              </div>

              <div class="group-form_box mb-4">
                <div class="label d-flex align-items-center gap-3">
                  Một cỡ
                  <InputSwitch v-model="sizeTableData.one_size" @change="changeSizeTableOneSize"/>
                </div>
                <div class="ms-error-text"></div>
              </div>

              <div class="group-form_box">
                <div class="label d-flex align-items-center">
                  Lưu ý
                </div>
                <div class="text-gray-3 text-sm font-regular mb-2">
                  Thông tin này sẽ được hiển thị cho khách hàng để tham khảo.
                </div>
                <div class="">
                  <InputText v-model="sizeTableData.note" :placeholder="MESSAGE.PLEASE_ENTER"></InputText>
                </div>
                <div class="ms-error-text"></div>
              </div>
            </div>
            <div class="ms-sizebar_product--content_item mt-4">
              <h2 class="text-2xl mb-4">Bước 2: Điền bảng kích thước của bạn</h2>
              <div class="theme-arco-table theme-m4b-table theme-arco-table-border theme-arco-table-layout-fixed">
                <div class="theme-arco-spin">
                  <div class="theme-arco-spin-children">
                    <div class="theme-arco-table-container">
                      <DataTable class="flex1 flex-column ms-list_variant--table"
                                 :value="sizeTableData.size_option"
                                 scrollable
                                 @rowReorder="onRowReorderSizeTable"
                                 tableStyle="min-width: 100%" rowHover>
                        <Column style="min-width: 300px">
                          <template #header>
                            <span class="required">*</span>
                            <div>Kích cỡ</div>
                          </template>
                          <template #body="slotProps">
                            <div class="group-form_box">
                              <div class="d-flex align-items-center">
                                <InputText v-model="sizeTableData.size_option[slotProps.index].value"
                                           :class="{'error': invalidSizeTable[`option${slotProps.index}`]}"
                                           :placeholder="MESSAGE.ENTER"></InputText>
                              </div>
                            </div>
                          </template>
                        </Column>
                        <Column :field="column.label" style="min-width: 300px" v-if="selectedSizeTableOption"
                                v-for="(column, indexColumn) in selectedSizeTableOption">
                          <template #header="slotProps">
                            <span class="required">*</span>
                            <div>{{ column.label }} (cm)</div>
                          </template>
                          <template #body="slotProps">
                            <div class="group-form_box" :ref="`option${slotProps.index}${indexColumn}`">
                              <div class="">
                                <InputText v-model="sizeTableData.size_option[slotProps.index][indexColumn]"
                                           :class="{'error': invalidSizeTable[`option${slotProps.index}${indexColumn}`]}"
                                           :placeholder="MESSAGE.ENTER"></InputText>
                              </div>
                              <div class="ms-error-text"
                              >
                              </div>
                            </div>
                          </template>
                        </Column>
                        <Column style="min-width: 80px; max-width: 80px" frozen alignFrozen="right">
                          <template #header>
                            <div>Hành động</div>
                          </template>
                          <template #body="slotProps">
                            <div class="d-flex gap-3 align-items-center">
                              <div class="row-actions flex-row">
                                <Button class="icon_remove ms-btn mw-0 pointer border-0 outline-0"
                                        :disabled="sizeTableData.size_option.length === 1"
                                        @click="deleteRowSizeTable(slotProps.index)">
                                </Button>
                              </div>
                              <div class="p-icon border-0 p-datatable-reorderablerow-handle icon_drag_dot"
                                   aria-hidden="true"
                                   :disabled="sizeTableData.size_option.length === 1"
                                   data-pc-section="rowreordericon"></div>
                            </div>
                          </template>
                        </Column>
                      </DataTable>
                    </div>
                  </div>
                </div>
              </div>

              <Button
                  v-if="!sizeTableData.one_size && this.sizeTableData.size_option.length < 10"
                  @click="addOptionSizeTable"
                  class="ms-btn secondary mt-4 d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2 me-3">
                <div class="fw-semibold">Thêm hàng ({{ this.sizeTableData.size_option.length }}/10)</div>
              </Button>
            </div>
          </form>
        </div>
      </div>
      <div class="ms-sizebar_product--footer">
        <div class="ms-sizebar_product--footer_container">
          <div class="d-flex">
            <Button
                @click="closeCallback"
                class="ms-btn secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2 me-3">
              <div class="fw-semibold">Hủy</div>
            </Button>
            <Button
                @click="btnCompleteSizeTable"
                class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2 me-3">
              <div class="fw-semibold">Xong</div>
            </Button>
          </div>
        </div>
      </div>
    </template>

  </Sidebar>
</template>

<script>
import Panel from 'primevue/panel';
import Button from 'primevue/button';
import InputText from 'primevue/inputtext';
import Textarea from 'primevue/textarea';
import Dropdown from 'primevue/dropdown';
import Editor from 'primevue/editor';
import MultiSelect from 'primevue/multiselect';
import TreeSelect from 'primevue/treeselect';
import Image from 'primevue/image';
import FileUpload from 'primevue/fileupload';
import InputNumber from 'primevue/inputnumber';
import InputSwitch from 'primevue/inputswitch';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Dialog from 'primevue/dialog';
import Checkbox from 'primevue/checkbox';
import Chip from 'primevue/chip';
import ToggleButton from 'primevue/togglebutton';
import Sidebar from 'primevue/sidebar';
import RadioButton from 'primevue/radiobutton';
import VueCropper from 'vue-cropperjs';
import TheLoading from "@/components/TheLoading.vue";
import 'cropperjs/dist/cropper.css';
import {getCategory} from '@/api/category'
import {getCategoryProperty} from '@/api/category-property'
import {MESSAGE} from "@/common/enums";
import {formatCurrency} from "@/common/function";
import {uploadImage} from "@/api/image";
import {addProduct} from "@/api/product";
import {getBrand, addBrand} from "@/api/brand";
import {getSize, addSize} from "@/api/size";

export default {
  computed: {
    MESSAGE() {
      return MESSAGE
    }
  },
  components: {
    TheLoading,
    Button,
    InputText,
    Panel,
    Textarea,
    Dropdown,
    Editor,
    FileUpload,
    Image,
    TreeSelect,
    MultiSelect,
    InputSwitch,
    InputNumber,
    DataTable,
    Column,
    VueCropper,
    Dialog,
    Checkbox,
    Chip,
    ToggleButton,
    RadioButton,
    Sidebar,
  },
  data() {
    return {
      selectedProduct: {},
      invalidProduct: [],
      isLoading: false,
      value: '',
      brands: [],
      valueBrandSelectAddOption: null,
      invalidAddBrandOption: [],
      selectedCategory: null,
      cities: [
        {name: 'New York', code: 'NY'},
        {name: 'Rome', code: 'RM'},
        {name: 'London', code: 'LDN'},
        {name: 'Istanbul', code: 'IST'},
        {name: 'Paris', code: 'PRS'}
      ],
      selectedProperty: [],
      valueSelectAddOption: [],
      invalidValueSelectAddOption: [],
      categories: [],
      properties: [],
      videoProduct: null,
      selectedSizeTableOption: null,
      sizeList: [],
      listTabMenu: [
        {
          label: 'Thông tin cơ bản',
          ref: 'image',
          active: true,
          children: [
            {
              label: 'Hình ảnh sản phẩm',
              ref: 'image',
              active: true,
            },
            {
              label: 'Tên sản phẩm',
              ref: 'product_name',
            },
            {
              label: 'Hạng mục',
              ref: 'category',
            },
            {
              label: 'Thương hiệu',
              ref: 'brand',
            },
          ],
        },
        {
          label: 'Chi tiết sản phẩm',
          ref: 'description',
          children: [
            {
              label: 'Mô tả sản phẩm',
              ref: 'description',
            },
            {
              label: 'Video',
              ref: 'video',
            },

          ],
        },
        {
          label: 'Thông tin bán hàng',
          ref: 'saleInfo',
          children: [],
        },
      ],
      sizeTableOption: [
        {
          label: 'Chiều dài váy',
        },
        {
          label: 'Vòng 1',
        },
        {
          label: 'Hông',
        },
        {
          label: 'Chiều rộng vai',
        },
        {
          label: 'Eo',
        },
        {
          label: 'Chiều dài tay áo',
        },
        {
          label: 'Chiều rộng cổ áo',
        },
        {
          label: 'Độ sâu đường viền cổ trước',
        },
        {
          label: 'Chiều rộng đáy',
        },
        {
          label: 'Chiều cao cổ tay áo',
        },
        {
          label: 'Chiều cao đường xẻ',
        },
        {
          label: 'Chiều cao',
        },
        {
          label: 'Cân nặng',
        },
        {
          label: 'Vòng dưới ngực',
        },
        {
          label: 'Chiều dài thân trên',
        },
      ],
      invalidSizeTable: [],
      sizeTable: null,
      sizeTableData: {
        size_name: null,
        size_option: [
          {
            value: null,
          }
        ]
      },
      isSideBarSizeTable: false,
      isLoadingSizeTable: false,
      sizeImage: null,
      sizeImageUrl: null,
      indexSelectedImageProduct: null,
      imageProducts: [
        {
          image: null,
          imageData: null,
          active: true,
          title: 'Tải lên hình ảnh chính',
          description: [
            'Kích thước: 300 x 300 px',
            'Kích thước tệp tin tối đa: 5MB(Tối đa 9 tập tin)',
            'Định dạng: JPG, JPEG, PNG'
          ],
          icon: require("@public/assets/icons/image.svg"),
        },
        {
          image: null,
          imageData: null,
          active: false,
          title: 'Chính diện',
          icon: require("@public/assets/images/background-perspective.png"),
        },
        {
          image: null,
          imageData: null,
          active: false,
          title: 'Cạnh bên',
          icon: require("@public/assets/images/side.png"),
        },
        {
          image: null,
          imageData: null,
          active: false,
          title: 'Các góc độ khác',
          icon: require("@public/assets/images/other-angles.png"),
        },
        {
          image: null,
          imageData: null,
          active: false,
          title: 'Đang sử dụng',
          icon: require("@public/assets/images/using.png"),
        },
        {
          image: null,
          imageData: null,
          active: false,
          title: 'Biến thể',
          icon: require("@public/assets/images/variant.png"),
        },
        {
          image: null,
          imageData: null,
          active: false,
          title: 'Phối cảnh nền',
          icon: require("@public/assets/images/background-perspective.png"),
        },
        {
          image: null,
          imageData: null,
          active: false,
          title: 'Ảnh chụp cận',
          icon: require("@public/assets/images/close-up-photo.png"),
        },
        {
          image: null,
          imageData: null,
          active: false,
          title: 'Kích thước và cân nặng',
          icon: require("@public/assets/images/size-and-weight.png"),
        },

      ],
      routerBackName: 'manage_product',
      isCropImageProduct: false,
      totalSize: 0,
      saleInfomation: {
        retailPrice: null,
        quantity:
            null,
        skuSeller:
            null,
      },
      variantsData: [],
      batchEditingVariant: [],
      isBatchEditing: false,
      listVariant: [
        {
          id: 0,
          name: null,
          option: []
        }
      ],
      itemVariant: [
        {
          id: 0,
          value: null,
          image: null,
          imageData: null,
        },
      ],
      isVariantImage: false,
      isCropperImage: false,
      selectedVariant: null,
      imageSrc: null,
      invalidVariant: [],
      totalSizePercent: 0,
    }
  },
  methods: {
    onRemoveTemplatingFile(file, removeFileCallback, index) {
      removeFileCallback(index);
      this.totalSize -= parseInt(this.formatSize(file.size));
      this.totalSizePercent = this.totalSize / 10;
    },

    /**
     * Click nút xong bảng kích thước
     */
    btnCompleteSizeTable() {
      if (this.validateSizeTable()) {
        this.isLoadingSizeTable = true;
        addSize(this.sizeTableData).then(res => {
          this.selectedProduct.size_id = res.data.size_id;
          this.sizeTableData.id = res.data.size_id;
          this.sizeList.push(this.sizeTableData);
          this.isSideBarSizeTable = false;
        }).catch(error => {
          console.log(error)
        }).finally(() => {
          setTimeout(() => {
            this.isLoadingSizeTable = false;
          }, 350);
        })
      }
    },

    /**
     * Validate form bảng kích thước
     * @returns {boolean}
     */
    validateSizeTable() {
      this.invalidSizeTable = [];
      if (this.sizeTableData.size_name === null || this.sizeTableData.size_name.trim() === "") {
        this.invalidSizeTable['name'] = MESSAGE.PLEASE_ENTER
      }
      if (!this.selectedSizeTableOption) {
        this.invalidSizeTable['option'] = MESSAGE.PLEASE_CHOOSE
      }


      let scrollToSizeTable = null;
      this.sizeTableData.size_option.forEach((item, index) => {
        if (item.value === null || item.value.trim() === "") {
          this.invalidSizeTable[`option${index}`] = true;
        }
        if (this.selectedSizeTableOption) {
          this.selectedSizeTableOption.forEach((column, i) => {
            if (this.sizeTableData.size_option[index][i] === null || this.sizeTableData.size_option[index][i] === "" || !this.sizeTableData.size_option[index][i]) {
              this.invalidSizeTable[`option${index}${i}`] = true
              scrollToSizeTable = `option${index}${i}`
            }
          })
        }
      })
      if (scrollToSizeTable) {
        this.$refs[scrollToSizeTable][0].scrollIntoView({behavior: 'smooth', block: 'center'});
      }
      return Object.keys(this.invalidSizeTable).length <= 0;
    },

    /**
     * Sự kiện chọn sử dụng ảnh hay mẫu cho phần bảng kích thước
     */
    async changeSizeTable() {
      switch (Number.parseInt(this.sizeTable)) {
        case 0:
          this.selectedProduct.use_sample_size = true;
          await this.loadSize();
          if (this.sizeList.length === 0) {
            this.isSideBarSizeTable = true;
          }
          break;
        case 1:
          this.selectedProduct.use_sample_size = false;
          break;
      }
    },

    /**
     *
     */
    chooseSizeImage() {
      if (!this.sizeImage) {
        this.$refs['chooseSizeImage'].click()
      }
    },

    /**
     * Sự kiện thay đổi hình ảnh kích thước
     * @param event
     */
    changeSizeImage(event) {
      this.sizeImage = event.files[0];
      this.sizeImageUrl = URL.createObjectURL(event.files[0]);
    },

    /**
     * Xóa ảnh kích thước
     * @param event
     */
    removeSizeImage(event) {
      event.stopPropagation()
      this.sizeImage = null;
    },

    /**
     * Click nút chọn video
     * @param event
     */
    chooseVideoProduct(event) {
      if (!this.videoProduct) {
        this.$refs['chooseVideoProduct'].click()
      }
    },

    /**
     * Sự kiện thay đổi video
     * @param event
     */
    changeVideoProduct(event) {
      this.videoProduct = URL.createObjectURL(event.files[0]);
    },

    /**
     * click chọn ảnh sản phẩm
     * @param event
     * @param index
     */
    chooseImageProduct(event, index) {
      if (this.imageProducts[index].image || !this.imageProducts[index].active) {
        event.preventDefault()
      } else {
        this.$refs[`chooseButton${index}`][0].click()
      }
    },

    /**
     * Xóa ảnh sản phẩm đã tải
     * @param event
     * @param index
     */
    removeProductImage(event, index) {
      event.stopPropagation()
      for (let i = index; i < this.imageProducts.length; i++) {
        if (i + 1 < this.imageProducts.length) {
          this.imageProducts[i].image = this.imageProducts[i + 1].image;
          this.imageProducts[i].imageData = this.imageProducts[i + 1].imageData;
          this.imageProducts[i + 1].active = !!this.imageProducts[i].image
        }
      }
    },

    /**
     * Sự kiện thay đổi ảnh sản phẩm
     * @param event
     * @param index
     */
    changeImageProduct(event, index) {
      this.imageProducts[index].image = event.files[0];
      const file = event.files[0];
      const reader = new FileReader();
      reader.onload = (event) => {
        this.imageSrc = event.target.result;
        this.isCropImageProduct = true;
        this.isCropperImage = true;
      };
      reader.readAsDataURL(file);
      this.indexSelectedImageProduct = index;
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

    /**
     * Sự kiện trước khi show drowdown add option
     * @param index
     */
    beforeShowSelectWithAddOption(index) {
      this.valueSelectAddOption[index] = this.invalidValueSelectAddOption[index] = null;
    },

    /**
     * Sự kiện thêm option vào select single
     */
    appendOptionToSingleSelect(index) {
      let option = this.validateAddOption(index)
      if (option) {
        this.selectedProperty[index] = option;
      }
    },

    /**
     * validate khi add option
     * @param index
     * @returns {{updated_at: null, created_at: null, id: null, value: *, property_id}|null}
     */
    validateAddOption(index) {
      this.invalidValueSelectAddOption[index] = null;
      let value = this.valueSelectAddOption[index];
      if (value === null || value === "" || value.trim() === "") {
        return null;
      }
      if (this.properties.properties[index].property_values.filter(item => item.value.toLocaleString() === value.toLocaleString()).length > 0) {
        this.invalidValueSelectAddOption[index] = MESSAGE.INVALID_OPTION_SELECT;
        return null;
      }
      let option = {
        'id': null,
        'property_id': this.properties.properties[index].id,
        'value': this.valueSelectAddOption[index],
        'created_at': null,
        'updated_at': null,
      }
      this.properties.properties[index].property_values.push(option);
      this.valueSelectAddOption[index] = null;
      return option;
    },

    /**
     * Sự kiện thêm option vào select multiple
     * @param index
     */
    appendOptionToMultipleSelect(index) {
      let option = this.validateAddOption(index)
      if (option) {
        if (!this.selectedProperty[index]) {
          this.selectedProperty[index] = [];
        }
        this.selectedProperty[index].push(option);
      }
    },

    /**
     * Click nút thêm biến thể
     */
    addVariant() {
      this.itemVariant.push(
          {
            id: this.itemVariant.length,
            value: null,
            name: null,
          }
      )
      this.listVariant.push(
          {
            id: this.listVariant.length,
            name: null,
            option: []
          }
      )
    },

    /**
     * Click button chỉnh sửa biến thể
     * @param key
     */
    editVariant(key) {
      this.listVariant[key].complete = false;
    },

    /**
     * Click icon xóa biến thể
     * @param key
     */
    removeVariant(key) {
      this.listVariant.splice(key, 1);
    },

    /**
     * Click nút áp dụng chỉnh sửa hàng loạt cho các biến thể
     */
    applyBatchEditing() {
      let conditions = []
      this.listVariant.forEach((item, i) => {
        let index = item.option.findIndex((option) => {
          return option.value === this.batchEditingVariant[`variant${i}`].value
        })
        if (index >= 0) {
          conditions.push({
            'field': `variant_option_${i}`,
            'value': this.batchEditingVariant[`variant${i}`].value,
          })
        }
      })

      this.variantsData.forEach((item, index) => {
        // áp dụng cho các sản phẩm đã chọn
        if (conditions.length > 0) {
          let check = true;
          conditions.forEach((condition) => {
            if (this.variantsData[index][condition.field] !== condition.value) {
              check = false;
            }
          })
          if (check) {
            this.variantsData[index]['retail_price'] = this.batchEditingVariant['retailPrice'];
            this.variantsData[index]['quantity'] = this.batchEditingVariant['quantity'];
            this.variantsData[index]['sku_seller'] = this.batchEditingVariant['skuSeller'];
          }
        }
        // áp dụng cho tất cả
        else {
          this.variantsData[index]['retail_price'] = this.batchEditingVariant['retailPrice'];
          this.variantsData[index]['quantity'] = this.batchEditingVariant['quantity'];
          this.variantsData[index]['sku_seller'] = this.batchEditingVariant['skuSeller'];
        }
      })
    },

    /**
     * xử lý list biến thể
     * @param arr
     * @returns {*[]}
     */
    generateVariants(arr) {
      let result = [];

      const generate = (current, index) => {
        // nếu duyệt hết các biến thể thì thêm biến thể
        if (index === arr.length) {
          result.push({...current});
          return;
        }

        const {name, option} = arr[index];

        // duyệt từng option của biến thể
        for (const opt of option) {
          current[`variant_name_${index}`] = name;
          current[`variant_option_${index}`] = opt.value;
          current[`quantity`] = null;
          current[`retail_price`] = null;
          current[`sku_seller`] = null;
          current[`image_data`] = opt.imageData;
          // gọi hàm để lấy các giá trị option trong biến thể kế tiếp
          generate(current, index + 1);
        }
      };

      generate({}, 0);
      return result;
    },

    /**
     * Sự kiện nhập tên biến thể
     * @param event
     * @param key
     */
    changeNameVariant(event, key) {
      clearTimeout(this.debounce);
      this.debounce = setTimeout(() => {
        delete this.invalidVariant[`name${key}`]
        // thay đổi giá trị
        if (this.listVariant[key].name !== "") {
          if (this.listVariant.filter((item, k) => item.name != null && item.name.toLocaleLowerCase() === this.listVariant[key].name.toLocaleLowerCase() && k !== key).length > 0) {
            this.invalidVariant[`name${key}`] = MESSAGE.INVALID_EXITS_VARIANT_NAME;
          }
        }
      }, 750)
    },

    /**
     * Click button "Xong" của từng biến thể
     * @param key
     */
    completeVariant(key) {
      if (this.validateVariant(key)) {
        this.listVariant[key].complete = true;
      }
    },

    /**
     * Validate biến thể
     * @returns {boolean}
     */
    validateVariant(key) {
      delete this.invalidVariant[`name${key}`]
      delete this.invalidVariant[key]
      if (this.listVariant[key].name === null || this.listVariant[key].name === "" || (this.isVariantImage && this.listVariant[key].name === "")) {
        this.invalidVariant[`name${key}`] = MESSAGE.INVALID_EMPTY_VARIANT_NAME;
      }
      this.listVariant[key].option.forEach((item, index) => {
        delete this.invalidVariant[`image${key}${index}`]
        if (item === "") {
          this.invalidVariant[`${key}${index}`] = MESSAGE.INVALID_EMPTY_VARIANT;
        }
        // kiểm tra giá trị đã tồn tại chưa
        else if (this.listVariant[key].option.filter((item, k) => item.value != null && item.value.toLocaleLowerCase() === this.listVariant[key].option[index].value.toLocaleLowerCase() && k !== index).length > 0) {
          this.invalidVariant[`${key}${index}`] = MESSAGE.INVALID_EXITS_VARIANT;
        }

        if (this.isVariantImage && !item.image) {
          this.invalidVariant[`image${key}${index}`] = MESSAGE.ADD_PRODUCT_IMAGE;
        }
      })

      if (this.itemVariant[key].value === null && this.listVariant[key].option.length === 0) {
        this.invalidVariant[key] = MESSAGE.INVALID_EMPTY_VARIANT;
      }

      if (this.itemVariant[key].value !== null) {
        if (this.isVariantImage && !this.itemVariant[key].image) {
          this.invalidVariant[`image${key}`] = MESSAGE.ADD_PRODUCT_IMAGE;
        }
      }

      if (this.listVariant[key].option.filter(item => item.value != null && this.itemVariant[key].value != null && item.value.toLocaleLowerCase() === this.itemVariant[key].value.toLocaleLowerCase()).length > 0) {
        this.invalidVariant[key] = MESSAGE.INVALID_EXITS_VARIANT;
      }

      return Object.keys(this.invalidVariant).length <= 0;
    },

    /**
     * Sự kiện thay đổi thứ tự hàng biến thể
     * @param event
     * @param index
     */
    onRowReorderVariant(event, index) {
      this.listVariant[index].option = event.value;
    },

    /**
     * Sự kiện nhập giá trị của biến thể
     * @param key
     * @param index
     */
    changeVariantValue(key, index = null) {
      delete this.invalidVariant[`${key}${index}`]
      // thay đổi giá trị
      if (index != null) {
        //check rỗng
        if (this.listVariant[key].option[index].value === "") {
          this.invalidVariant[`${key}${index}`] = MESSAGE.INVALID_EMPTY_VARIANT;
        }
        // kiểm tra giá trị đã tồn tại chưa
        else if (this.listVariant[key].option.filter((item, k) => item.value != null && item.value.toLocaleLowerCase() === this.listVariant[key].option[index].value.toLocaleLowerCase() && k !== index).length > 0) {
          this.invalidVariant[`${key}${index}`] = MESSAGE.INVALID_EXITS_VARIANT;
        }
      }
      // thêm mới
      else {
        delete this.invalidVariant[key]
        if (this.listVariant[key].option.filter(item => item.value != null && item.value.toLocaleLowerCase() === this.itemVariant[key].value.toLocaleLowerCase()).length > 0) {
          this.invalidVariant[key] = MESSAGE.INVALID_EXITS_VARIANT;
        } else {
          setTimeout(() => {
            this.listVariant[key].option.push({
              id: this.listVariant.length,
              value: this.itemVariant[key].value,
              image: this.itemVariant[key].image,
            })
            this.itemVariant[key] = {
              id: this.itemVariant[key].id,
              value: null,
              name: null,
            };
          }, 350);
        }
      }
    },

    /**
     * Xóa biến thể
     * @param key
     * @param index
     */
    deleteOptionVariantValue(key, index) {
      this.listVariant[key].option.splice(index, 1);
    },

    /**
     * Click nút tải ảnh lên
     * @param key
     * @param index
     */
    chooseVariantImage(key, index = null) {
      if (index != null && this.listVariant[key].option[index].image) {
        return;
      }
      const ref = index != null ? `ref_variant_image${key}${index}` : `ref_variant_image${key}`;
      this.$refs[ref][0].click()
    },

    /**
     * xóa ảnh đã tải
     * @param event
     * @param key
     * @param index
     */
    removeVariantImage(event, key, index = null) {
      event.stopPropagation()
      if (index != null) {
        this.listVariant[key].option[index].image = null;
      } else {
        this.itemVariant[key].image = null;
      }
    },

    /**
     *
     * @param event
     * @param key
     * @param index
     * @returns {Promise<void>}
     */
    async changeVariantImage(event, key, index = null) {
      const ref = index != null ? `ref_variant_image${key}${index}` : `ref_variant_image${key}`;
      const file = this.$refs[ref][0].files[0];
      const reader = new FileReader();
      reader.onload = (event) => {
        this.imageSrc = event.target.result;
        if (index != null) {
          this.selectedVariant = this.listVariant[key].option[index];
          this.selectedVariant.index = index;
        } else {
          this.selectedVariant = this.itemVariant;
        }
        this.selectedVariant.key = key;
        this.isCropperImage = true;
      };
      await reader.readAsDataURL(file);
    },

    /**
     * Click cắt ảnh
     */
    cropImage() {
      // cắt ảnh sản phẩm
      if (this.isCropImageProduct) {
        this.imageProducts[this.indexSelectedImageProduct].image = this.$refs.cropper.getCroppedCanvas().toDataURL('image/jpeg');
        this.imageProducts[this.indexSelectedImageProduct].imageData = this.$refs.cropper.getCroppedCanvas();
        if (this.indexSelectedImageProduct + 1 < this.imageProducts.length) {
          this.imageProducts[this.indexSelectedImageProduct + 1].active = true;
        }
        this.isCropImageProduct = false;
      }
      // cắt ảnh biến thể
      else {
        let ref = '';
        if (this.selectedVariant.index != null) {
          ref = `ref_variant_image${this.selectedVariant.key}${this.selectedVariant.index}`;
          this.listVariant[this.selectedVariant.key].option[this.selectedVariant.index].image = this.$refs.cropper.getCroppedCanvas().toDataURL();
          this.listVariant[this.selectedVariant.key].option[this.selectedVariant.index].imageData = this.$refs.cropper.getCroppedCanvas();
        } else {
          ref = `ref_variant_image${this.selectedVariant.key}`;
          this.itemVariant[this.selectedVariant.key].image = this.$refs.cropper.getCroppedCanvas().toDataURL();
          this.itemVariant[this.selectedVariant.key].imageData = this.$refs.cropper.getCroppedCanvas();
        }
        this.$refs[ref][0].value = null;
        this.selectedVariant = null;
      }
      this.isCropperImage = false;
    },

    /**
     * Click button thêm hàng cho bảng kích thước
     * @param index
     */
    addOptionSizeTable(index) {
      if (this.sizeTableData.size_option.length < 10) {
        this.sizeTableData.size_option.push({
          value: null,
        })
      }
    },

    /**
     * Sự kiện click button swich một cỡ
     */
    changeSizeTableOneSize() {
      this.sizeTableData.size_option = [
        {
          value: null,
        }
      ]
    },

    /**
     * Sự kiện click button xóa hàng bảng kích thước
     * @param index
     */
    deleteRowSizeTable(index) {
      this.sizeTableData.size_option.splice(index, 1);
    },

    /**
     * Sự kiện sắp xếp hàng table kích thước
     * @param event
     */
    onRowReorderSizeTable(event) {
      this.sizeTableData.size_option = event.value;
    },

    /**
     * Click button thêm sản phẩm
     */
    async btnAddProduct(saveNew = false) {
      if (this.validateProduct()) {
        const formData = new FormData();
        for (const item of this.imageProducts) {
          if (item.image) {
            await new Promise((resolve, reject) => {
              item.imageData.toBlob(blob => {
                if (blob) {
                  formData.append('medias[]', blob);
                  resolve();
                } else {
                  reject('toBlob() failed');
                }
              }, 'image/png');
            });
          }
        }
        for (const item of [...this.variantsData]) {
          await new Promise((resolve, reject) => {
            item.image_data.toBlob(blob => {
              if (blob) {
                formData.append('variantImages[]', blob);
                resolve();
              } else {
                reject('toBlob() failed');
              }
            }, 'image/png');
          });
        }
        formData.append('product', JSON.stringify(this.selectedProduct))
        formData.append('category_id', Object.keys(this.selectedCategory)[0])
        formData.append('properties', JSON.stringify(this.selectedProperty));
        formData.append('size_id', JSON.stringify(this.selectedProduct.size_id));
        if (this.selectedProduct.has_variant) {
          formData.append('variants', JSON.stringify(this.variantsData))
        } else {
          formData.append('variant', JSON.stringify(this.saleInfomation))
        }

        if (this.sizeImage) {
          formData.append('sizeImage', this.sizeImage)
        }
        this.isLoading = true;
        let isSuccess = false;
        addProduct(formData).then(res => {
          if (saveNew) {
            this.clearForm();
          } else {
            isSuccess = true;
          }
        }).catch(error => {
          console.log(error)
        }).finally(() => {
          setTimeout(() => {
            this.isLoading = false;
            this.$router.push({name: this.routerBackName});
          }, 350);
        })
      } else {
        console.log(this.invalidProduct)
      }
    },

    /**
     *
     */
    clearForm() {
      this.selectedProduct = {};
      this.listVariant = [
        {
          id: 0,
          name: null,
          option: []
        }
      ];
      this.selectedCategory = this.selectedVariant = this.sizeTable = null;
      this.isVariantImage = false;
      this.properties = [];
      this.imageProducts.forEach((item, index) => {
        this.imageProducts[index].image = this.imageProducts[index].imageData = null;
        this.imageProducts[index].active = false;
      })
      this.imageProducts[0].active = true;
      this.isSideBarSizeTable = false;
      this.refs.image.scrollIntoView({behavior: 'smooth', block: 'center'});
    },

    /**
     * validate dữ liệu product
     */
    validateProduct: function () {
      let scrollToInvalidProduct = null;
      this.invalidProduct = [];

      if (!this.imageProducts[0].image) {
        this.invalidProduct['image'] = MESSAGE.PLEASE_UPLOAD_ONE_IMAGE;
        scrollToInvalidProduct = scrollToInvalidProduct ?? 'image';
      }

      if (!this.selectedProduct.product_name || this.selectedProduct.product_name.trim() === "") {
        this.invalidProduct['product_name'] = MESSAGE.PLEASE_FILL_IN_THIS_FIELD;
        scrollToInvalidProduct = scrollToInvalidProduct ?? 'product_name';
      }
      if (!this.selectedCategory) {
        this.invalidProduct['category'] = MESSAGE.PLEASE_CHOOSE_ONE_OPTION;
        scrollToInvalidProduct = scrollToInvalidProduct ?? 'category';
      }

      if (!this.selectedProduct.brand) {
        this.invalidProduct['brand'] = MESSAGE.PLEASE_CHOOSE_ONE_OPTION;
        scrollToInvalidProduct = scrollToInvalidProduct ?? 'brand';
      }

      if (!this.selectedProduct.description) {
        this.invalidProduct['description'] = MESSAGE.PLEASE_FILL_IN_THIS_FIELD;
        scrollToInvalidProduct = scrollToInvalidProduct ?? 'description';
      }

      if (this.properties.size_table) {
        if (this.sizeTable === null) {
          this.invalidProduct['size_table'] = MESSAGE.PLEASE_CHOOSE_ONE_OPTION;
          scrollToInvalidProduct = scrollToInvalidProduct ?? 'sizeTable';
        } else {
          // bảng kích thước
          if (Number.parseInt(this.sizeTable) === 0 && !this.selectedProduct.size_id) {
            this.invalidProduct['description'] = MESSAGE.PLEASE_FILL_IN_THIS_FIELD;
            scrollToInvalidProduct = scrollToInvalidProduct ?? 'sizeTable';
          }
          // hình ảnh bảng kích thước
          if (Number.parseInt(this.sizeTable) === 1 && !this.sizeImage) {
            this.invalidProduct['sizeImage'] = MESSAGE.SIZE_IMAGE;
            scrollToInvalidProduct = scrollToInvalidProduct ?? 'sizeTable';
          }
        }
      }

      // có biến thể
      if (this.selectedProduct.has_variant) {
        this.listVariant.forEach((item, key) => {
          this.validateVariant(key);
        });
        if (Object.keys(this.invalidVariant).length > 0) {
          this.invalidProduct['variants'] = true;
          scrollToInvalidProduct = scrollToInvalidProduct ?? 'product_has_variant';
        } else {
          this.selectedProduct.max_price = this.selectedProduct.min_price = this.variantsData[0].retail_price;
          this.variantsData.forEach((item, index) => {
            this.selectedProduct.max_price = this.selectedProduct.max_price < item.retail_price ? item.retail_price : this.selectedProduct.max_price;
            this.selectedProduct.min_price = this.selectedProduct.min_price > item.retail_price ? item.retail_price : this.selectedProduct.min_price;
            if (item.quantity === null) {
              this.invalidProduct[`variant_quantity_${index}`] = true;
              scrollToInvalidProduct = scrollToInvalidProduct ?? `variant_quantity_${index}`;
            }
            if (item.retail_price === null) {
              this.invalidProduct[`variant_retail_price_${index}`] = true;
              scrollToInvalidProduct = scrollToInvalidProduct ?? `variant_retail_price_${index}`;
            }
          })
        }
      }
      // không có biến thể
      else {
        if (!this.saleInfomation.retailPrice) {
          this.invalidProduct['retail_price'] = MESSAGE.PLEASE_FILL_IN_THIS_FIELD;
          scrollToInvalidProduct = scrollToInvalidProduct ?? 'product_no_variant';
        }
        if (!this.saleInfomation.quantity) {
          this.invalidProduct['quantity'] = MESSAGE.PLEASE_FILL_IN_THIS_FIELD;
          scrollToInvalidProduct = scrollToInvalidProduct ?? 'product_no_variant';
        }
      }
      if (scrollToInvalidProduct) {
        this.$refs[scrollToInvalidProduct].scrollIntoView({behavior: 'smooth', block: 'center'});
      }
      return Object.keys(this.invalidProduct).length <= 0;
    },

    /**
     * Sự kiện chọn hạng mục
     */
    changeCategory() {
      // lấy ra id hạng mục
      let idCategory = Object.keys(this.selectedCategory)[0];
      getCategoryProperty(idCategory).then(res => {
        this.properties = res.data
      }).catch(error => {
        console.log(error)
      })
    },

    /**
     *
     * @param indexParent
     * @param indexChild
     * @param isParent
     */
    activeTabMenu(indexParent, indexChild = null, isParent = false) {
      this.listTabMenu.forEach(item => {
        item.active = false;
        item.children.forEach(child => {
          child.active = false;
        })
      });
      if (isParent) {
        this.$refs[this.listTabMenu[indexParent].ref].scrollIntoView({behavior: 'smooth', block: 'center'})
        this.listTabMenu[indexParent].active = true;
        if (this.listTabMenu[indexParent].children.length > 0) {
          this.listTabMenu[indexParent].children[0].active = true;
        }
      } else {
        this.$refs[this.listTabMenu[indexParent].children[indexChild].ref].scrollIntoView({
          behavior: 'smooth',
          block: 'center'
        })
        this.listTabMenu[indexParent].active = true;
        this.listTabMenu[indexParent].children[indexChild].active = true;
      }
    },

    /**
     * Lấy dữ liệu danh mục sản phẩm
     */
    loadCategory() {
      getCategory().then(res => {
            this.categories = res.data;
          }
      )
          .catch(error => {
            console.log(error)
          })
    },

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
        this.selectedProduct.brand = {
          brand_name: this.valueBrandSelectAddOption
        }
        await addBrand(this.selectedProduct.brand).then(res => {
          this.valueBrandSelectAddOption = null;
          this.brands.push(this.selectedProduct.brand)
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
     * Lấy danh sách bảng kích thước
     */
    async loadSize() {
      await getSize().then(res => {
        this.sizeList = res.data
      }).catch(error => {
        console.log(error)
      })
    }
  },
  created() {
    this.loadCategory();
    this.loadBrand();
  },
  watch: {
    listVariant: {
      handler(newVal, oldVal) {
        this.variantsData = this.generateVariants(newVal)
      },
      deep: true,
    }
  }
}
</script>

<style lang="scss">
.ma-add-product_wrapper {
  max-width: 100%;
  padding: 0 24px;

  .popup-content {
    padding: 0;
    background-color: #fff;

    .list-tab-menu {
      width: 232px;
      border-right: 1px solid #c1c1c1;
      height: 100%;
      padding: 16px 8px 0 !important;
      color: #707070;

      .tab-item {
        margin-bottom: 15px;
        cursor: pointer;

        .tab-item-parent {
          height: 19px;
          margin-bottom: 4px;
          padding-left: 10px;

          &.active {
            font-weight: 600;
            color: #ff6d00;
          }
        }

        .tab-item-child {
          height: 36px;
          padding: 10px 0 10px 20px;
          display: flex;
          align-items: center;

          &:hover {
            border-radius: 4px;
            background-color: #fbe9e7;
            color: #ff6d00;
          }

          &.active {
            font-weight: 600;
            border-radius: 4px;
            background-color: #fbe9e7;
            color: #ff6d00;
          }
        }
      }
    }

    .p-panel {
      .p-panel-header {
        border: unset;
      }

      .p-panel-content {
        border: unset;
      }
    }

    .content-body {
      padding: 12px 12px 16px 16px;
    }
  }

  .popup-header {
    padding: 0;
    height: 60px;
    background: unset;
    min-height: 60px;

    .ms-popup-header {
      min-height: 60px;
    }

  }

  .p-panel {
    border-radius: 8px;
    background-color: #fff;

    .ma-custom-panel-header {
      .description, .sub-description {
        color: rgba(0, 0, 0, .55);
        font-size: 14px;
        font-weight: 400;
        margin-top: 3px;
      }

    }

    .sub-description {
      font-size: 12px;
      color: rgba(0, 0, 0, .55);
      font-weight: 400;
      margin-top: 3px;
    }

    .theme-arco-table-content-inner {
      border: 1px solid #e0e0e0;
      border-radius: 4px;

      .label {
        background-color: #f5f5f5;
      }
    }

    .ms-group_variants {
      .ms-variants_wrapper {
        background-color: #f5f5f5;
        padding: 16px;
        border-radius: 4px;
      }
    }

    .ms-list_variant--table {
      .p-datatable-wrapper {
        border: 1px solid rgba(0, 0, 0, .1);
        border-radius: 4px;

        .p-datatable-table {
          .p-datatable-thead {
            tr {
              th {
                background-color: #f5f5f5 !important;
                box-sizing: border-box;
                color: rgba(0, 0, 0, .92);
                font-weight: 600;
                line-height: 1.5715;
                text-align: left;
                padding: 6px;
                border: unset;
                font-size: 12px;
              }
            }
          }

          .p-datatable-tbody {
            tr {

              td {
                border: unset !important;
                padding: 6px !important;
                border-radius: unset !important;
                background: #fff;
              }

              &:hover {
                td {
                  background-color: rgba(0, 0, 0, .08) !important;
                }
              }
            }
          }
        }
      }
    }

    .ms-variants_table {
      .p-datatable-wrapper {
        .p-datatable-table {

          .p-datatable-thead {
            display: none;
          }

          tr {
            display: flex;
            background: unset !important;
            margin-bottom: 10px;

            td {
              height: unset !important;
              padding: unset !important;
              border: unset !important;

              &:last-child {
                background: unset !important;
              }
            }
          }
        }
      }

      &.ms-variant_image {
        .p-datatable-wrapper {
          .p-datatable-table {
            tr {
              display: flex;
              background: unset !important;

              td {
                height: 106px;

                .btn-image {
                  max-height: 106px;
                }
              }
            }

          }
        }
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

.ms-sizebar_product {
  background-color: #f5f5f5;
  color: rgba(33, 37, 51, 1);

  .ms-sizebar_product-header {
    padding: 32px 24px 0;
    min-height: 60px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    flex-shrink: 0;
    border-bottom: 1px solid transparent;
  }


  .ms-sizebar_product--wrapper {
    padding: 16px 24px;
    overflow: auto;

    .ms-sizebar_product--content {
      box-sizing: content-box;
      color: rgba(0, 0, 0, .92);
      flex: 1;

      .ms-sizebar_product--content_item {
        padding: 24px;
        border-radius: 8px;
        background-color: rgba(255, 255, 255, 1);
      }
    }
  }

  .ms-sizebar_product--footer {
    border-top: 1px solid transparent;
    box-sizing: border-box;
    flex-shrink: 0;

    .ms-sizebar_product--footer_container {
      padding: 24px;
      display: flex;
      justify-content: flex-end;
      align-items: center;
    }
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

    .p-fileupload {
      width: 100%;
      height: 100%;

      .p-fileupload-content {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;

        .ms-box_video {
          &:hover {
            background-color: #000;
            border-radius: 4px;
            opacity: .5;
          }
        }

        .ms-item_image--products {
          display: flex;
          flex-direction: column;
          gap: 10px;
        }
      }
    }

    .icon {
      margin-bottom: 8px;
    }

    &.ms-media_active {
      border: 1px solid rgba(0, 0, 0, .14);
    }

    &:not(.ms-media_active):hover {
      cursor: pointer;
      border-color: rgb(0, 153, 149);
      border-radius: 4px;
    }
  }

  .p-fileupload {
    display: flex;
    justify-content: center;

    .p-image {
      flex: 1;
    }

    .p-fileupload-buttonbar {
      display: none;
    }

    .p-fileupload-content {
      padding: unset;
      border: unset;
    }
  }

  .ms-product_images {
    .ms-item_image--products_wrapper {
      display: flex;
      border: 1px dashed rgba(0, 0, 0, .14);
      border-radius: 4px;
      flex-direction: column;
      align-items: center;
      background-color: #f5f5f5;
      color: rgba(0, 0, 0, .55);
      justify-content: center;
      height: 106px;
      overflow: hidden;
      width: 106px;

      &.active {
        background: #fff;

        .ms-item_image--products {
          background: #fff;
        }
      }

      .p-fileupload {
        width: 100%;
        height: 100%;
        display: flex;
        padding-bottom: 10px;

        .p-fileupload-content {
          flex: 1;
          display: flex;

          .p-fileupload-empty {
            width: 100%;
            display: flex;
            align-items: center;

            img {
              width: 100% !important;
              height: 100% !important;
            }
          }
        }
      }

      .ms-item_image--products {
        background-color: #f5f5f5;
        display: flex;
        width: 100%;
        flex-direction: column;
        align-items: center;
        padding: 10px;

        ul {
          font-size: 12px;
          padding-left: 2rem;
        }

        img {
          width: 64px;
          height: 64px;
        }

        .title {
          display: -webkit-box;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
          -webkit-line-clamp: 1;
        }
      }

      &.ms-media_active {
        border: 1px solid #fff;
      }

      &.active:not(.ms-media_active):hover {
        cursor: pointer;
        border-color: rgb(0, 153, 149);
      }
    }

    & > .ms-item_image--products_wrapper:first-child {
      background: #fff;

      .ms-item_image--products {
        background: #fff;
      }

      grid-row-start: span 2;
      grid-column-start: span 2;
      width: 224px;
      height: 224px;

      img {
        width: 24px;
        height: 24px;
      }

    }

  }

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
</style>
