<template>
  <div class="form-list flex-grow-1 flex-column d-flex mw-100 ms-seller_profile overflow-auto">
    <div class="d-flex flex-row title-box align-items-center gap-2">
      <div class="list-title flex-grow-1 text-start">Hồ sơ người bán</div>
    </div>
    <div class="flex1 d-flex flex-column position-relative">
      <TabView class="flex1 d-flex flex-column" :pt="{
     panelContainer: { class: 'flex1 d-flex flex-column' },
    }">
        <TabPanel class="flex1" :header="MESSAGE.ACCOUNT_INFORMATION">
          <div class="ms-tab_panel">
            <header class="flex pb-24">
              <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
                {{ MESSAGE.LOGIN_INFORMATION }}
              </h3>
            </header>
            <div class="d-flex flex1">
              <div class="row flex1 gy-4">
                <div class="col-lg-6">
                  <div class="d-flex flex-column gap-2">
                    <div class="text-neutral-text3">Email</div>
                    <div class="d-flex align-items-center gap-1">
                      <div>d***1@gmail.com</div>
                      <div>
                        <Button
                            class="ms-btn border-primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                          <div class="fw-medium">Thêm</div>
                        </Button>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="d-flex flex-column gap-2">
                    <div class="text-neutral-text3">Số điện thoại</div>
                    <div class="d-flex align-items-center gap-1">
                      <div>+84****1325</div>
                      <div>
                        <Button
                            class="ms-btn border-primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                          <div class="fw-medium">{{ MESSAGE.CHANGE }}</div>
                        </Button>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="d-flex flex-column gap-2">
                    <div class="text-neutral-text3">Mật khẩu</div>
                    <div class="d-flex align-items-center gap-1">
                      <div>**********</div>
                      <div>
                        <Button
                            class="ms-btn border-primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                          <div class="fw-medium">{{ MESSAGE.CHANGE }}</div>
                        </Button>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="d-flex flex-column">
                    <div class="text-neutral-text3">Tài khoản</div>
                    <div class="d-flex align-items-center gap-3">
                      <div>--</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="ms-tab_panel mt-4">
            <header class="flex pb-24">
              <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
                {{ MESSAGE.ACCOUNT_SECURITY }}
              </h3>
            </header>
            <div class="d-flex flex-column">
              <div class="ms-security-item d-flex flex-column gap-2">
                <div class="text-lg text-neutral-text2 font-semibold">
                  Xác minh hai bước
                </div>
                <div class="main d-flex flex-column gap-3 mb-3">
                  <div class="item">
                    <div class="d-flex">
                      <div class="flex1 d-flex flex-column">
                        <div class="text-neutral-text1 font-semibold">
                          Tin nhắn văn bản
                        </div>
                        <div class="text-sm text-neutral-text3">Nhận mã xác minh qua điện thoại của bạn</div>
                      </div>
                      <div>

                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="d-flex">
                      <div class="flex1 d-flex flex-column">
                        <div class="text-neutral-text1 font-semibold">
                          Email
                        </div>
                        <div class="text-sm text-neutral-text3">Nhận mã xác minh qua email của bạn</div>
                      </div>
                      <div>

                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="d-flex">
                      <div class="flex1 d-flex flex-column">
                        <div class="text-neutral-text1 font-semibold">
                          Ứng dụng Authenticator
                        </div>
                        <div class="text-sm text-neutral-text3">Nhận mã xác minh qua Google Authenticator.</div>
                      </div>
                      <div>

                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="ms-security-item d-flex flex-column gap-2">
                <div class="text-lg text-neutral-text2 font-semibold">
                  Thiết bị tin cậy
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
                    <Column frozen align-frozen="left" field="warehouse_name" style="min-width: 200px" header="Thiết bị">
                      <template #body="{ data, field, slotProps }">
                        <div v-if="!isLoading"> {{ data[field] }}</div>
                        <div v-else>
                          <Skeleton ></Skeleton>
                        </div>
                      </template>
                    </Column>
                    <Column field="detailed_address" style="min-width: 500px" dataKey="id" header="Vị trí">
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
                    <Column field="warehouse_contact" style="min-width: 180px" dataKey="id" header="Thời gian">
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
                  </DataTable>
                </div>
              </div>
            </div>

          </div>
        </TabPanel>
        <TabPanel :header="MESSAGE.SELLER_INFORMATION">
          <div class="ms-tab_panel">
            <header class="flex pb-24">
              <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
                {{ MESSAGE.SELLER_INFORMATION }}
              </h3>
            </header>
            <div class="d-flex gap-5">
              <div class="d-flex me-5 flex-column align-items-center gap-2">
                <div class="text-gray-2 text-center">
                  Logo cửa hàng
                </div>
                <div class="ms-shop_logo">
                  <img :src="require('@public/assets/images/store.jpeg')" alt="" width="109" height="109">
                </div>
                <Button
                    class="ms-btn secondary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                  <div class="fw-medium">Tải lên</div>
                </Button>
              </div>
              <div class="d-flex ms-3 flex1">
                <div class="row g-3 flex1">
                  <div class="col-lg-4">
                    <div class="d-flex flex-column gap-2">
                      <div class="text-neutral-text3">
                        Mã cửa hàng
                      </div>
                      <div>
                        VNLCWEWNF8
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="d-flex flex-column gap-2">
                      <div class="text-neutral-text3">
                        Loại hình doanh nghiệp
                      </div>
                      <div>
                        Doanh nghiệp thuộc sở hữu cá nhân
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="d-flex flex-column gap-2">
                      <div class="text-neutral-text3">
                        Tên cửa hàng
                      </div>
                      <div class="d-flex align-items-center gap-3">
                        Phú Quý
                        <div>
                          <Button
                              class="ms-btn border-primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                            <div class="fw-medium">Thay đổi</div>
                          </Button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="d-flex flex-column gap-2">
                      <div class="text-neutral-text3">
                        Loại hình người bán
                      </div>
                      <div>
                        Người bán địa phương
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="d-flex flex-column gap-2">
                      <div class="text-neutral-text3">
                        Email
                      </div>
                      <div>
                        d***1@gmail.com
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4">
                    <div class="d-flex flex-column gap-2">
                      <div class="text-neutral-text3">
                        Số điện thoại
                      </div>
                      <div>
                        +84****1325
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </TabPanel>
        <TabPanel :header="MESSAGE.BUSINESS_INFORMATION">
          <div class="ms-tab_panel">
            <header class="flex pb-24">
              <h3 class="flex flex-1 text-head-l font-semibold text-gray-1 items-center">
                {{ MESSAGE.BUSINESS_INFORMATION }}
              </h3>
            </header>
            <div class="row gx-3 gy-5">
              <div class="col-lg-6 gap-2">
                <div class="d-flex flex-column gap-2">
                  <div class="text-neutral-text3">
                    Số căn cước công dân (chỉ số hoặc chữ cái)
                  </div>
                  <div>03********22</div>
                </div>
              </div>
              <div class="col-lg-6 gap-2">
                <div class="d-flex flex-column gap-2">
                  <div class="text-neutral-text3">
                    Tên chủ sở hữu doanh nghiệp
                  </div>
                  <div>Đinh Phú Quý</div>
                </div>
              </div>
              <div class="col-lg-6 gap-2">
                <div class="d-flex flex-column gap-2">
                  <div class="text-neutral-text3">
                    Ngày sinh của chủ sở hữu
                  </div>
                  <div>20-01-2001</div>
                </div>
              </div>
            </div>
          </div>
        </TabPanel>
      </TabView>
    </div>
  </div>
</template>

<script>
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
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
.ms-seller_profile {

  .theme-arco-divider-vertical {
    border-left: 1px solid rgba(0, 0, 0, .1);
    display: inline-block;
    height: 20px;
    margin: 0;
    max-width: 1px;
    min-width: 1px;
    vertical-align: middle;
  }

  .ms-shop_logo {
    background-color: #ebeef5;
    border: 0 solid;
    border-radius: 50%;
    height: 109px;
    overflow: hidden;
    position: relative;
    width: 109px;
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
    background: unset;
    padding: unset;

    .ms-tab_panel {
      background: #fff;
      padding: 20px;
      border-radius: 8px;
    }

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
