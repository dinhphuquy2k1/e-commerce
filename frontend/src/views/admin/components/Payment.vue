<template>
  <div class="form-list flex-grow-1 flex-column d-flex mw-100">
    <div class="d-flex flex-row title-box align-items-center gap-2">
      <div class="icon24 back pointer" @click="this.$router.go(-1)"></div>
      <div class="list-title flex-grow-1 text-start">Thanh toán</div>
    </div>
    <div class="flex flex-col bg-white rounded-8 mb-4">
      <div class="box list-content p-24 flex-grow-1 flex-column mw-100">
        <header class="flex pb-24">
          <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
            Thông tin tài khoản quyết toán
          </h3>
        </header>
        <div v-if="data.length === 0" class="d-flex flex-column align-items-center justify-content-center gap-3">
          <div class="icon-no-data"></div>
          <div class="text-base font-regular text-gray-3 mt-12">Chưa có tài khoản</div>
          <Button
              class="ms-btn primary d-flex justify-content-center mt-1 flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
            <div class="fw-medium">Liên kết tài khoản quyết toán của bạn</div>
          </Button>
        </div>
        <div v-else>
          <DataTable :rows="10" class="flex1 flex-column mw-100"
                     :class="{ 'loading': isLoading }" :loading="isLoading"
                     scrollable
                     :value="isLoading ? Array.from({ length: 1 }, () => ({ ...{} })) : data"
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
            <Column field="warehouse_name" style="min-width: 250px" header="Tên/mã kho hàng">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading"> {{ data[field] }}</div>
                <div v-else>
                  <Skeleton ></Skeleton>
                </div>
              </template>
            </Column>
            <Column field="detailed_address" style="min-width: 160px" dataKey="id" header="Địa chỉ">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading">
                  <div v-if="data[field]">
                    {{ data[field] }}
                  </div>
                  <div class="d-flex status-ctn max-content" v-else
                       style="background-color: rgb(254, 243, 231);">
                    <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                    <div class="status-text" style="color: rgb(243, 141, 21);">Chưa cài đặt</div>
                  </div>
                </div>
                <div v-else>
                  <Skeleton ></Skeleton>
                </div>
              </template>
            </Column>
            <Column field="warehouse_contact" style="min-width: 180px" dataKey="id" header="Liên hệ">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading">
                  <div v-if="data[field]">
                    {{ data[field] }}
                  </div>
                  <div class="d-flex status-ctn max-content" v-else
                       style="background-color: rgb(254, 243, 231);">
                    <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                    <div class="status-text" style="color: rgb(243, 141, 21);">Chưa cài đặt</div>
                  </div>
                </div>
                <div v-else>
                  <Skeleton ></Skeleton>
                </div>
              </template>
            </Column>
            <Column dataKey="id" header="Trạng thái" style="min-width: 250px">
              <template #body="{ data, field, slotProps }">
                <div v-if="!isLoading">
                  <div class="d-flex status-ctn max-content" v-if="!data['warehouse_status']"
                       style="background-color: rgb(229, 250, 237);">
                    <div class="status-dot" style="background-color: rgb(0, 200, 83);"></div>
                    <div class="status-text" style="color: rgb(0, 200, 83);">Mở</div>
                  </div>
                  <div class="d-flex status-ctn max-content" v-else
                       style="background-color: rgb(254, 243, 231);">
                    <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                    <div class="status-text" style="color: rgb(243, 141, 21);">Đóng</div>
                  </div>
                </div>
                <div v-else>
                  <Skeleton ></Skeleton>
                </div>
              </template>
            </Column>
            <Column frozen alignFrozen="right" style="min-width: 50px; text-align: center;" header="Thao tác">
              <template #body="slotProps">
                <div class="row-actions flex-row" v-if="!isLoading">
                  <div class="item" @click="onRowSelect(slotProps.data)">
                    <div class="v-popover popover">
                      <div class="trigger">
                        <div class="icon24 edit"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div v-else>
                  <Skeleton ></Skeleton>
                </div>
              </template>
            </Column>

          </DataTable>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
import Skeleton from 'primevue/skeleton';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';

export default {
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
     * Lấy danh sách kho
     */
    loadPayment() {
      this.isLoading = true;
      getWareHouse().then(res => {
        this.data = res.data
      }).catch(error => {
        console.log(error)
      }).finally(() => {
        setTimeout(() => {
          this.isLoading = false;
        }, 350)
      })
    }
  },
  created() {
  }
}
</script>

<style lang="scss">

</style>
