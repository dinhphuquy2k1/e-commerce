<template>
  <div class="form-list flex-grow-1 flex-column d-flex mw-100">
    <div class="d-flex flex-row title-box">
      <div class="list-title flex-grow-1 text-start">Quản lý đơn hàng</div>
    </div>
    <div class="d-flex flex-row toolbar-box justify-content-between">
      <div class="left-toolbar d-flex flex-row gap-2">
        <div class="m-search_form flex-row d-flex align-items-center d-flex">
          <InputText type="search" class="ms-input_search w-100" placeholder="Tìm kiếm"/>
          <div class="icon24 icon search-right search"></div>
        </div>
        <div class="filter-group">
          <Button
              @click = "isShowSearch = true"
              class="ms-btn btn-secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
            <div class="icon24 filter"></div>
            <div class="">Bộ lọc</div>
          </Button>
        </div>
      </div>
      <!--      <div class="right-toolbar d-flex flex-row">-->
      <!--        <Button-->
      <!--            class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">-->
      <!--          <div class="icon24 add-white"></div>-->
      <!--          <div class="fw-semibold">Thêm sản phẩm</div>-->
      <!--        </Button>-->
      <!--      </div>-->
    </div>
    <div class="box list-content flex-grow-1 flex-row mw-100">
      <DataTable paginator :rows="10" :rowsPerPageOptions="[5, 10, 20, 50]" class="flex1 flex-column mw-100"
                 :class="{ 'loading': isLoadingOrder }" :loading="isLoadingOrder"
                 scrollable
                 :value="isLoadingOrder ? Array.from({ length: 8 }, () => ({ ...{} })) : orders.data"
                 @rowDblclick="onRowSelect($event.data)" tableStyle="min-width: 100%" rowHover>
        <template #paginatorstart>
          <Button type="button" icon="pi pi-refresh" text/>
        </template>
        <template #paginatorend>
          bản ghi/trang
        </template>
        <template #empty>
          <div class="d-flex flex-column p-24 justify-content-center align-items-center">
            <div class="icon-empty_table"></div>
            <div>Không tìm thấy kết quả nào</div>
          </div>
        </template>
        <Column selectionMode="multiple" headerStyle="min-width: 3rem"></Column>
        <Column field="DepartmentCode" style="min-width: 250px" header="Đơn hàng">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoadingOrder"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" style="min-width: 160px" dataKey="id" header="Người mua">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoadingOrder"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" style="min-width: 180px" dataKey="id" header="Mặt hàng">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoadingOrder"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column dataKey="id" header="Trạng thái đơn hàng" style="min-width: 250px">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoadingOrder">
              <div class="d-flex status-ctn max-content" v-if="data['is_exist']"
                   style="background-color: rgb(229, 250, 237);">
                <div class="status-dot" style="background-color: rgb(0, 200, 83);"></div>
                <div class="status-text" style="color: rgb(0, 200, 83);">Đang sử dụng</div>
              </div>
              <div class="d-flex status-ctn max-content" v-else
                   style="background-color: rgb(254, 243, 231);">
                <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                <div class="status-text" style="color: rgb(243, 141, 21);">Không sử dụng</div>
              </div>
            </div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" dataKey="id" style="min-width: 200px" header="Phương thức vận chuyển">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoadingOrder"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" style="min-width: 150px" dataKey="id" header="Tổng">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoadingOrder"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column frozen alignFrozen="right" style="min-width: 100px; text-align: center;" header="Thao tác">
          <template #body="slotProps">
            <div class="row-actions flex-row" v-if="!isLoadingOrder">
              <div class="item" @click="onRowSelect(slotProps.data)">
                <div class="v-popover popover">
                  <div class="trigger">
                    <div class="icon24 edit"></div>
                  </div>
                </div>
              </div>
              <div class="item" @click="deleteRowSelect(slotProps.data)">
                <div class="v-popover popover">
                  <div class="icon24 delete"></div>
                </div>
              </div>
            </div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>

      </DataTable>
    </div>
  </div>
  <Sidebar v-model:visible="isShowSearch" header="Sidebar" position="right" :dismissable="false"
           style="width: 432px" class="ms-sizebar_product d-flex" :showCloseIcon="false">
    <template #container="{ closeCallback }">
      <TheLoading v-if="isLoadingSizeTable"/>
      <div class="ms-sizebar_product-header">
        <div class="fw-bold text-xl">Bộ lọc
        </div>
        <div class="text-gray-3 text-sm">
        </div>
      </div>
      <div class="ms-sizebar_product--wrapper flex-grow-1">
        <div class="ms-sizebar_product--content">
          <form action="">
            <div class="group-form_box mb-4">
              <div class="label d-flex align-items-center mb-1">
                Trạng thái đơn hàng
              </div>
              <div class="">
                <div class="d-flex align-items-center mt-2">
                  <RadioButton v-model="sizeTable" inputId="useSample" name="sizeTable" value="0"
                               @change="changeSizeTable"/>
                  <label for="useSample" class="ml-2 pointer">Đang chờ vận chuyển</label>
                </div>
                <div class="d-flex align-items-center mt-2">
                  <RadioButton v-model="sizeTable" inputId="useSample" name="sizeTable" value="0"
                               @change="changeSizeTable"/>
                  <label for="useSample" class="ml-2 pointer">Đang chờ lấy hàng</label>
                </div>
              </div>
              <div class="ms-error-text">
              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
            </div>
            <div class="group-form_box mb-4">
              <div class="">
                <Dropdown v-model="invalidSizeTable" :options="[]" optionLabel="value"
                          autoOptionFocus
                          selectOnFocus
                          :placeholder="MESSAGE.TRANSFER_OPTION"
                          class="ms-category text-start"/>
              </div>
              <div class="ms-error-text">

              </div>
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
              <div class="fw-semibold">Áp dụng</div>
            </Button>
          </div>
        </div>
      </div>
    </template>

  </Sidebar>
</template>

<script>
import InputText from 'primevue/inputtext';
import Button from "primevue/button";
import Skeleton from "primevue/skeleton";
import DataTable from "primevue/datatable";
import Sidebar from 'primevue/sidebar';
import RadioButton from 'primevue/radiobutton';
import Dropdown from 'primevue/dropdown';
import Column from "primevue/column";
import {getOrder} from "@/api/order";
import {mapActions, mapGetters} from "vuex";
import {MESSAGE} from "../../../common/enums";
import TheLoading from "@/components/TheLoading.vue";

export default {
  components: {
    TheLoading,
    Button,
    InputText,
    Skeleton,
    DataTable,
    Column,
    Sidebar,
    RadioButton,
    Dropdown,
  },
  data() {
    return {
      isShowSearch: false,
      invalidSizeTable: {},
    }
  },

  methods: {
    ...mapActions(['loadOrder']),
  },

  created() {
    this.loadOrder();
  },

  computed: {
    MESSAGE() {
      return MESSAGE
    },
    ...mapGetters(['orders', 'isLoadingOrder']),
  }
}
</script>

<style scoped lang="scss">
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
</style>
