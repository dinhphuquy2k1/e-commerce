<template>
  <div class="form-list flex-grow-1 flex-column d-flex mw-100">
    <div class="d-flex flex-row title-box gap-2 align-items-center">
      <div class="icon24 back pointer" @click="this.$router.go(-1)"></div>
      <div class="list-title flex-grow-1 text-start">Quản lý mẫu</div>
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
            class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="icon-only icon-simple_cart"></div>
          <div class="fw-semibold">Thêm sản phẩm</div>
        </Button>
      </div>
    </div>
    <div class="box list-content flex-grow-1 flex-row mw-100">
      <DataTable paginator :rows="10" :rowsPerPageOptions="[5, 10, 20, 50]" class="flex1 flex-column mw-100"
                 :class="{ 'loading': isLoading }" :loading="isLoading"
                 scrollable
                 :value="isLoading ? Array.from({ length: 8 }, () => ({ ...{} })) : data"
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
        <Column field="DepartmentCode" style="min-width: 250px" header="Tên / ID biểu đồ kích cỡ">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" style="min-width: 160px" dataKey="id" header="Lưu ý">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" style="min-width: 180px" dataKey="id" header="Sản phẩm đã liên kết">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column field="DepartmentName" style="min-width: 180px" dataKey="id" header="Đã cập nhật">
          <template #body="{ data, field, slotProps }">
            <div v-if="!isLoading"> {{ data[field] }}</div>
            <div v-else>
              <Skeleton></Skeleton>
            </div>
          </template>
        </Column>
        <Column frozen alignFrozen="right" style="min-width: 120px; text-align: center;" :header="MESSAGE.ACT">
          <template #body="slotProps">
            <div class="row-actions flex-row" v-if="!isLoading">
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
</template>

<script>
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
import Skeleton from 'primevue/skeleton';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import {getSize} from "@/api/size";
import {MESSAGE} from "@/common/enums";

export default {
  computed: {
    MESSAGE() {
      return MESSAGE
    }
  },
  components: {
    Button,
    InputText,
    Skeleton,
    DataTable,
    Column
  },

  data() {
    return {
      isLoading: false,
      data: [],
    }
  },

  methods: {
    /**
     * Lấy danh sách kích thước
     */
    loadSize() {
      this.isLoading = true;
      getSize().then(res => {
        this.data = res.data;
      }).catch(error => {
        console.log(error)
      })
          .finally(() => {
            setTimeout(() => {
              this.isLoading = false;
            }, 350)
          })
    },
  },

  created() {
    this.loadSize();
  }
}
</script>

<style lang="scss">


</style>
