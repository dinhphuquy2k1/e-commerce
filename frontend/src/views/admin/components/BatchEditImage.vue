<template>
  <div class="form-list flex-grow-1 flex-column d-flex mw-100">
    <div class="d-flex flex-row title-box gap-2 align-items-center">
      <div class="icon24 back pointer" @click="this.$router.go(-1)"></div>
      <div class="list-title flex-grow-1 text-start">Chỉnh sửa hàng loạt hình ảnh</div>
    </div>
    <div class="d-flex flex-row toolbar-box justify-content-between">
      <div class="left-toolbar d-flex flex-row">
        <Button
            @click="isChooseProduct = true;"
            class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="fw-semibold">Chọn các sản phẩm</div>
        </Button>
      </div>
      <div class="right-toolbar d-flex flex-row">
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
  <Dialog v-model:visible="isChooseProduct" modal header="Chọn sản phẩm" :style="{ width: '45rem' }">
    <div class="flex-grow-1 flex-column d-flex mw-100">
      <div class="d-flex gap-3">
        <TreeSelect v-model="selectedCategory" :options="categories"
                    label="name"
                    class="mw-40"
                    placeholder="Vui lòng chọn một hạng mục"/>
        <InputText placeholder="ID sản phẩm" class="flex-grow-1"></InputText>
      </div>
      <div class="box list-content flex-grow-1 mt-4 flex-row mw-100">
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
          <Column field="DepartmentCode" style="min-width: 250px" header="Tên sản phẩm">
            <template #body="{ data, field, slotProps }">
              <div v-if="!isLoading"> {{ data[field] }}</div>
              <div v-else>
                <Skeleton></Skeleton>
              </div>
            </template>
          </Column>
          <Column field="DepartmentName" style="min-width: 160px" dataKey="id" header="Giá gốc">
            <template #body="{ data, field, slotProps }">
              <div v-if="!isLoading"> {{ data[field] }}</div>
              <div v-else>
                <Skeleton></Skeleton>
              </div>
            </template>
          </Column>
          <Column frozen alignFrozen="right" style="min-width: 120px; text-align: center;" header="Kho">
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
    <template #footer>
      <div class="d-flex flex-row">
        <div class="flex1"></div>
        <Button
            class="ms-btn secondary d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-2 me-2"
            @click="isChooseProduct = false">
          <div class="">Hủy</div>
        </Button>
        <Button @click="cropImage"
                :disabled="selectedProduct.length === 0"
                class="ms-btn primary blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="fw-semibold">OK</div>
        </Button>
      </div>

    </template>
  </Dialog>
</template>

<script>
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
import Skeleton from 'primevue/skeleton';
import TreeSelect from 'primevue/treeselect';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Dropdown from 'primevue/dropdown';
import Dialog from 'primevue/dialog';
import {MESSAGE} from "@/common/enums";
import {getCategory} from "@/api/category";

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
    Column,
    Dialog,
    Dropdown,
    TreeSelect,
  },

  data() {
    return {
      isLoading: false,
      data: [],
      isChooseProduct: false,
      selectedProduct: [],
      categories: [],
      selectedCategory: null,
      searchProduct: null,
    }
  },

  methods: {
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
  },

  created() {
    this.loadCategory();
  }
}
</script>

<style lang="scss">


</style>
