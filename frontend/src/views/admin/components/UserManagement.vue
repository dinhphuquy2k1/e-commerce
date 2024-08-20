<template>
  <div class="form-list flex-grow-1 flex-column d-flex mw-100 ms-user-management">
    <div class="d-flex flex-row title-box align-items-center gap-2">
      <div class="icon24 back pointer" @click="this.$router.go(-1)"></div>
      <div class="list-title flex-grow-1 text-start">Quản lý người dùng</div>
    </div>
    <div class="flex1 d-flex flex-column position-relative">
      <TabView class="flex1 d-flex flex-column" :pt="{
     panelContainer: { class: 'flex1 d-flex flex-column' },
    }">
        <TabPanel :header="MESSAGE.USER_ADDED">
          <header class="flex pb-24">
            <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
              {{ MESSAGE.USER_ADDED }}
            </h3>
          </header>
          <div class="d-flex gap-2 mb-5 align-items-center">
            <div class="d-flex gap-3 flex-grow-1">
              <MultiSelect
                  v-model="selectedRoles"
                  :options="roles.roles"
                  :showToggleAll="false"
                  optionLabel="role_name"
                  :emptyMessage="MESSAGE.EMPTY_DROPDOWN"
                  :placeholder="MESSAGE.ROLES"
                  display="chip"
                  class="ms-category max-w-266 text-start"></MultiSelect>
              <InputText v-model="searchEmail"
                         :placeholder="MESSAGE.ENTER_YOUR_EMAIL_ADDRESS"></InputText>
            </div>
            <div class="theme-arco-divider-vertical mx-16"></div>
            <div>
              <Button
                  @click="resetUserSearch"
                  class="ms-btn secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                <div class="fw-medium">Đặt lại</div>
              </Button>
            </div>
          </div>
          <div class="flex1 flex-grow-1">
            <DataTable :rows="10" class="flex1 flex-column mh-100 mw-100"
                       :class="{ 'loading': isLoading }" :loading="isLoading"
                       scrollable
                       :value="isLoading ? Array.from({ length: 10 }, () => ({ ...{} })) : data"
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
              <Column field="warehouse_name" style="min-width: 200px" :header="MESSAGE.USER_EMAIL">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoading"> {{ data[field] }}</div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
              <Column field="detailed_address" style="min-width: 500px" dataKey="id" :header="MESSAGE.ROLES">
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
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
              <Column field="warehouse_contact" style="min-width: 180px" dataKey="id" :header="MESSAGE.ACT">
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
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
            </DataTable>
          </div>
        </TabPanel>
        <TabPanel :header="MESSAGE.ROLE_ADDED">
          <header class="flex pb-24">
            <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
              {{ MESSAGE.ROLE_ADDED }}
            </h3>
          </header>
          <div class="d-flex gap-2 mb-5 align-items-center">
            <div class="d-flex gap-3 flex-grow-1">
              <SelectButton v-model="selectedTypeRole" @change="changeRoleType" :options="roles.types"
                            class="ms-btn ms-selectbutton_roles"
                            optionLabel="description" multiple aria-labelledby="multiple"/>
            </div>
            <div class="theme-arco-divider-vertical mx-16"></div>
            <div>
              <Button
                  @click="resetRoleSearch"
                  class="ms-btn secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                <div class="fw-medium">Đặt lại</div>
              </Button>
            </div>
          </div>
          <div class="flex1 flex-grow-1">
            <DataTable :rows="10" class="flex-column mw-100 mh-100 ms-table_roles"
                       :class="{ 'loading': isLoading }" :loading="isLoading"
                       scrollable
                       :value="isLoading ? Array.from({ length: 10 }, () => ({ ...{} })) : roles.roleSearch"
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
              <Column field="role_name" style="min-width: 200px; max-width: 200px" :header="MESSAGE.ROLE_NAME">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoading" class="truncate-text-3"> {{ data[field] }}</div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
              <Column field="description" style="min-width: 170px; max-width: 170px" dataKey="id"
                      :header="MESSAGE.DESCRIPTION">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoading" class="truncate-text-3" v-tooltip="data[field]">
                    {{ data[field] }}
                  </div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
              <Column field="role_type" style="min-width: 170px; max-width: 170px" dataKey="id" :header="MESSAGE.TYPE">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoading" class="truncate-text-3">
                    {{ data[field] }}
                  </div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
              <Column frozen align-frozen="right" field="permissions" style="min-width: 300px; max-width: 300px"
                      dataKey="id" :header="MESSAGE.PERMISSION">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoading" class="truncate-text-3" v-tooltip="data[field]">
                    {{ data[field] }}
                  </div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
            </DataTable>
          </div>
        </TabPanel>
      </TabView>
      <div class="position-absolute end-0 mt-2">
        <SplitButton
            class="ms-btn ms-spit-button_group primary d-flex justify-content-center flex-grow-1 ms-btn_search gap-2"
            label="Tạo mới" :model="splitButtonItems"></SplitButton>
      </div>
    </div>
  </div>
  <Dialog v-model:visible="isCreateUser" modal :header="MESSAGE.ADD_USERS" :style="{ width: '40rem' }">
    <div>
      <div class="theme-m4b-alert theme-m4b-alert-info d-flex gap-2 mb-4 align-items-center">
        <div class="icon icon-info"></div>
        <div class="title">Mỗi vai trò có các quyền khác nhau. Vui lòng đọc kỹ các mô tả vai trò trước khi chọn vai trò
          thích hợp.
        </div>
      </div>
      <div class="group-form_box mb-3">
        <div class="label d-flex flex-column gap-2">
          Vai trò
          <MultiSelect
              v-model="selectedAddRoles"
              :options="roles.roles"
              :showToggleAll="false"
              optionLabel="role_name"
              :emptyMessage="MESSAGE.EMPTY_DROPDOWN"
              :placeholder="MESSAGE.ROLES"
              display="chip"
              class="ms-category w-100 text-start">
            <template #option="{option}">
              <div v-tooltip="option.description">{{ option.role_name }}</div>
            </template>
          </MultiSelect>
        </div>
        <div class="ms-error-text"></div>
      </div>

      <div class="group-form_box mb-4">
        <div class="label d-flex flex-column gap-2">
          Địa chỉ email
          <InputText v-model="selectedAddEmail"
                     :placeholder="MESSAGE.ENTER_YOUR_EMAIL_ADDRESS"></InputText>
        </div>
        <div class="ms-error-text"></div>
      </div>
    </div>
    <template #footer>
      <div class="d-flex flex-row">
        <div class="flex1"></div>
        <Button
            class="ms-btn secondary d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-2 me-2"
            @click="isCreateUser = false">
          <div class="">Hủy</div>
        </Button>
        <Button @click="cropImage"
                class="ms-btn primary blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="fw-semibold">{{ MESSAGE.SEND }}</div>
        </Button>
      </div>

    </template>
  </Dialog>
  <Dialog v-model:visible="isCreateRole" modal :header="MESSAGE.ADD_NEW_ROLES" :style="{ width: '40rem' }">
    <div>
      <div class="theme-m4b-alert theme-m4b-alert-info d-flex gap-2 mb-4 align-items-center">
        <div class="icon icon-info"></div>
        <div class="title">Bạn có thể tạo vai trò mới khi cần thiết. Sau khi tạo vai trò mới, hãy thiết lập quyền của
          họ.
        </div>
      </div>
      <div class="group-form_box mb-3">
        <div class="label d-flex flex-column gap-2">
          {{ MESSAGE.ROLE_NAME }}
          <InputText v-model="selectedAddEmail"
                     :placeholder="MESSAGE.PLEASE_ENTER_A_ROLE_NAME"></InputText>
        </div>
        <div class="ms-error-text"></div>
      </div>

      <div class="group-form_box mb-4">
        <div class="label d-flex flex-column gap-2">
          {{ MESSAGE.ROLE_DESCRIPTION }}
          <InputText v-model="selectedAddEmail"
                     :placeholder="MESSAGE.PLEASE_DESCRIBE_THE_ROLE"></InputText>
        </div>
        <div class="ms-error-text"></div>
      </div>

      <div class="group-form_box mb-4">
        <div class="label d-flex flex-column gap-2">
          {{ MESSAGE.SET_PERMISSIONS }}
          <MultiSelect
              v-model="selectedAddRoles"
              :options="roles.roles"
              :showToggleAll="false"
              optionLabel="role_name"
              :emptyMessage="MESSAGE.EMPTY_DROPDOWN"
              :placeholder="MESSAGE.SELECT_PERMISSION_WANT_GRANT"
              display="chip"
              class="ms-category w-100 text-start"></MultiSelect>
        </div>
        <div class="ms-error-text"></div>
      </div>
    </div>
    <template #footer>
      <div class="d-flex flex-row">
        <div class="flex1"></div>
        <Button
            class="ms-btn secondary d-flex justify-content-center ms-btn_search ps-3 pe-3 gap-2 me-2"
            @click="isCreateUser = false">
          <div class="">Hủy</div>
        </Button>
        <Button @click="cropImage"
                class="ms-btn primary blue d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="fw-semibold">{{ MESSAGE.SEND }}</div>
        </Button>
      </div>

    </template>
  </Dialog>
</template>

<script>
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
import SplitButton from 'primevue/splitbutton';
import Dialog from 'primevue/dialog';
import Skeleton from 'primevue/skeleton';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import SelectButton from 'primevue/selectbutton';
import Dropdown from 'primevue/dropdown';
import MultiSelect from 'primevue/multiselect';
import {getRoles, getRoleByType} from "@/api/role";
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
    Column,
    TabView,
    TabPanel,
    Dropdown,
    MultiSelect,
    SelectButton,
    SplitButton,
    Dialog,
  },
  data() {
    return {
      isLoading: false,
      data: [],
      selectedRoles: null,
      selectedAddRoles: null,
      selectedAddEmail: null,
      searchEmail: null,
      selectedTypeRole: [],
      roles: {
        roles: [],
        types: [],
        roleSearch: [],
      },
      isCreateUser: false,
      isCreateRole: false,
      splitButtonItems: [
        {
          label: 'Thêm người dùng',
          command: () => {
            this.createNew(1)
          }
        },
        {
          label: 'Thêm vai trò',
          command: () => {
            this.createNew(2)
          }
        }
      ],
    }
  },
  methods: {
    /**
     * Sự kiện chọn role hiển thị
     */
    changeRoleType() {
      this.roles.roleSearch = this.roles.roles.filter(item => {
        if (this.selectedTypeRole.filter(role => {
          return role.description === item.role_type || this.selectedTypeRole.includes(this.roles.types[0])
        }).length > 0) {
          return item;
        }
      })
    },

    /**
     * Click button tạo mới
     * @param type
     */
    createNew(type) {
      switch (type) {
          // thêm người dùng
        case 1:
          this.isCreateUser = true;
          break;
          // thêm vai trò
        case 2:
          this.isCreateRole = true;
          break;
      }
    },

    /**
     * Click nút đặt lại vai trò tìm kiếm
     */
    resetRoleSearch() {
      this.selectedTypeRole = [];
      this.selectedTypeRole.push(this.roles.types[0])
      this.roles.roleSearch = this.roles.roles;
    },

    /**
     * Click nút đặt lại tìm kiếm người dùng
     */
    resetUserSearch() {
      this.searchEmail = null;
      this.selectedRoles = null;
    },

    /**
     * Lấy danh sách kho
     */
    loadRole() {
      this.isLoading = true;
      getRoles().then(res => {
        this.roles = res.data
        this.roles.roleSearch = res.data.roles
        this.selectedTypeRole.push(res.data.types[0])
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
    this.loadRole()
  }
}
</script>

<style lang="scss">
.ms-user-management {

  .theme-arco-divider-vertical {
    border-left: 1px solid rgba(0, 0, 0, .1);
    display: inline-block;
    height: 20px;
    margin: 0;
    max-width: 1px;
    min-width: 1px;
    vertical-align: middle;
  }

  .ms-table_roles {
    tr {
      max-height: 33px;

      td {
        white-space: wrap !important;
        max-height: 33px;

        .truncate-text-3 {
          margin-top: 12px;
          margin-bottom: 12px;
        }
      }
    }
  }

  .p-tabview-nav-container {
    margin-bottom: 16px;

    .p-tabview-nav-content {
      .p-tabview-nav {
        border: unset;
        background: transparent;

        .p-tabview-header {
          border: unset;

          .p-tabview-nav-link {
            border: unset;
            font-size: 16px;
            font-weight: 500;
            background: transparent;
          }

          &.p-highlight {
            border-bottom: 1px solid #FA8232;

            .p-tabview-nav-link {
              border-bottom: 1px solid #FA8232;
            }
          }

        }
      }
    }
  }

  .p-tabview-panels {
    display: flex;
    border-radius: 8px;
    flex: 1;

    .p-tabview-panel {
      display: flex;
      flex-direction: column;
      flex: 1;
      min-height: 0;

      .p-datatable {
        flex-grow: 1;
        border: 1px solid #e0e0e0;
        border-radius: 4px;

        .p-datatable-table {

          &:not(.loading) .p-datatable-tbody > tr.p-datatable-emptymessage > td, &:not(.loading) .p-datatable-tbody > tr:last-child > td {
            border-bottom: none !important;
          }

        }
      }
    }
  }
}
</style>
