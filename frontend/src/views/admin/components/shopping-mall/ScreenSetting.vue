<template>
  <div class="form-list flex-grow-1 flex-column d-flex position-relative mw-100 ms-seller_profile ms-screen-setting-wrapper overflow-auto">
    <div class="d-flex flex-row title-box align-items-center gap-2">
      <div class="list-title flex-grow-1 text-start">{{ $t('interface_settings') }}</div>
      <div>
        <Button
            @click="$router.push({name: 'add_product'})"
            class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
          <div class="icon24 add-white"></div>
          <div class="fw-semibold">{{ $t('add_display') }}</div>
        </Button>
      </div>
    </div>
    <div class="flex1 d-flex flex-column position-relative">
      <TabView v-model:activeIndex="activeIndex" class="flex1 d-flex flex-column" @tab-click="loadConfig({isUse: this.handlerIsUse()})">
        <TabPanel v-for="tab in tabs" :header="tab.title" :key="tab.title">
          <div class="flex-1 position-relative bg-white rounded-4" v-if="isLoadingConfig">
            <TheLoading :no-background="true"/>
          </div>
          <div class="ms-setting-container flex-1 d-flex" v-if="configs?.data?.length > 0 && !isLoadingConfig">
            <div class="ms-setting-main flex-1 d-flex flex-column gap-3">
              <div v-for="(item, index) in configs.data" class="ms-setting-item">
                <div v-if="item.type !== configs?.type?.ADS?.value" class="ms-setting-item-value">
                  <div class="ms-setting-item_header d-flex justify-content-between">
                    <div class="left-side text-neutral-text1">
                      <div v-if="!editActive[index]">
                        {{ item.title }}
                      </div>
                      <div v-else>
                        <InputText v-model="data.title" maxlength="30"/>
                      </div>
                    </div>
                    <div class="right-side">
                      <Button v-if="!editActive[index]"
                              @click="onEditSettingItem(item, index)"
                              class="ms-btn btn-edit-adm d-flex justify-content-center flex-grow-1 ms-btn_search gap-2">
                        <div class="icon-w16 icon-edit-blue"></div>
                        <div class="">{{ $t('edit') }}</div>
                      </Button>
                      <div class="d-flex align-items-center gap-3" v-else>
                        <Button
                            @click="onCancelSettingItem(item, index)"
                            class="ms-btn btn-edit-adm d-flex justify-content-center flex-grow-1 ms-btn_search pe-3 ps-3 gap-2 mw-0">
                          <div class="">{{ $t('cancel') }}</div>
                        </Button>
                        <Button
                            @click="onSaveSetting(item, index)"
                            class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search pe-3 ps-3 h-0 gap-2 mw-0">
                          <div class="">{{ $t('save') }}</div>
                        </Button>
                      </div>
                    </div>
                  </div>
                  <div class="ms-setting-item_main mt-3">
                    <div></div>
                    <div class="ms-main-items">
                      <div class="item d-flex justify-content-between align-items-center rounded-t-4">
                        <div class="left-side">Số sản phẩm trên mỗi dòng</div>
                        <div class="right-side">
                          <div v-if="!editActive[index]">{{ item.columnsPerRow }}</div>
                          <div v-else>
                            <InputNumber v-model="data.columnsPerRow" showButtons :min="1" :max="10"/>
                          </div>
                        </div>
                      </div>
                      <div class="item d-flex justify-content-between align-items-center rounded-t-4 border-t-0">
                        <div class="left-side">Số lượng sản phẩm</div>
                        <div class="right-side">
                          <div v-if="!editActive[index]">{{ item.quantity }}</div>
                          <div v-else>
                            <InputNumber v-model="data.quantity" showButtons :min="1" :max="100"/>
                          </div>
                        </div>
                      </div>
                      <div class="item d-flex justify-content-between align-items-center rounded-t-4 border-t-0">
                        <div class="left-side">Số lượng thẻ</div>
                        <div class="right-side">
                          <div v-if="!editActive[index]">{{ item.tags.length }}</div>
                          <div v-else>
                            <Button
                                class="ms-btn border-primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
                              <div class="fw-medium">{{ $t('change') }}</div>
                            </Button>
                          </div>
                        </div>
                      </div>
                      <div class="item d-flex justify-content-between align-items-center rounded-t-4 border-t-0">
                        <div class="left-side">Kiểu hiển thị</div>
                        <div class="right-side">
                          <div v-if="!editActive[index]">{{ optionTypeTexts[item.type] }}</div>
                          <div v-else>
                            <SelectButton v-model="data.type" :options="optionTypes" optionLabel="description"
                                          optionValue="value"
                                          class="ms-select-button outline-primary"
                                          aria-labelledby="basic"/>
                          </div>
                        </div>
                      </div>
                      <div class="item d-flex justify-content-between align-items-center rounded-b-4 border-t-0">
                        <div class="left-side">Thứ tự hiển thị</div>
                        <div class="right-side">
                          <div v-if="!editActive[index]">{{ item.displayOrder }}</div>
                          <div v-else>
                            <InputNumber v-model="data.displayOrder" showButtons :min="1"/>
                          </div>
                        </div>
                      </div>
                      <div class="item d-flex justify-content-between align-items-center rounded-b-4 border-t-0">
                        <div class="left-side">Trạng thái</div>
                        <div class="right-side">
                          <div v-if="!editActive[index]">
                            <div class="d-flex status-ctn max-content" v-if="item.isUse"
                                 style="background-color: rgb(229, 250, 237);">
                              <div class="status-dot" style="background-color: rgb(0, 200, 83);"></div>
                              <div class="status-text" style="color: rgb(0, 200, 83);">{{ $t('in_use') }}</div>
                            </div>

                            <div class="d-flex status-ctn max-content" v-else
                                 style="background-color: rgb(254, 243, 231);">
                              <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                              <div class="status-text" style="color: rgb(243, 141, 21);">{{ $t('not_in_use') }}</div>
                            </div>
                          </div>
                          <div v-else>
                            <InputSwitch v-model="data.isUse" :trueValue="1" :falseValue="0"/>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div v-if="item.type === configs?.type?.ADS?.value" class="ms-setting-item-ads ms-setting-item-value">
                  <div class="ms-setting-item_header d-flex justify-content-between">
                    <div class="left-side text-neutral-text1">
                      {{ $t('advertising_images') }}
                    </div>
                    <div class="right-side">
                      <Button v-if="!editActive[index]"
                              @click="onEditSettingItem(item, index)"
                              class="ms-btn btn-edit-adm d-flex justify-content-center flex-grow-1 ms-btn_search gap-2">
                        <div class="icon-w16 icon-edit-blue"></div>
                        <div class="">{{ $t('edit') }}</div>
                      </Button>
                      <div class="d-flex align-items-center gap-3" v-else>
                        <Button
                            @click="onCancelSettingItem(item, index)"
                            class="ms-btn btn-edit-adm d-flex justify-content-center flex-grow-1 ms-btn_search pe-3 ps-3 gap-2 mw-0">
                          <div class="">{{ $t('cancel') }}</div>
                        </Button>
                        <Button
                            @click="onSaveSetting(item, index)"
                            class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search pe-3 ps-3 h-0 gap-2 mw-0">
                          <div class="">{{ $t('save') }}</div>
                        </Button>
                      </div>
                    </div>
                  </div>

                  <div class="ms-setting-item_main mt-3">
                    <div></div>
                    <div class="ms-main-items">
                      <div class="item d-flex justify-content-between align-items-center rounded-t-4">
                        <Image src="http://localhost:30001/storage/ads/xiaomi-1200x200.png" alt="Image" preview class="flex-1"
                               imageClass="w-100 rounded-8"/>
                      </div>
                      <div class="item d-flex justify-content-between align-items-center rounded-b-4 border-t-0">
                        <div class="left-side">Thứ tự hiển thị</div>
                        <div class="right-side">
                          <div v-if="!editActive[index]">{{ item.displayOrder }}</div>
                          <div v-else>
                            <InputNumber v-model="data.displayOrder" showButtons :min="1"/>
                          </div>
                        </div>
                      </div>
                      <div class="item d-flex justify-content-between align-items-center rounded-b-4 border-t-0">
                        <div class="left-side">Trạng thái</div>
                        <div class="right-side">
                          <div v-if="!editActive[index]">
                            <div class="d-flex status-ctn max-content" v-if="item.isUse"
                                 style="background-color: rgb(229, 250, 237);">
                              <div class="status-dot" style="background-color: rgb(0, 200, 83);"></div>
                              <div class="status-text" style="color: rgb(0, 200, 83);">{{ $t('in_use') }}</div>
                            </div>

                            <div class="d-flex status-ctn max-content" v-else
                                 style="background-color: rgb(254, 243, 231);">
                              <div class="status-dot" style="background-color: rgb(243, 141, 21);"></div>
                              <div class="status-text" style="color: rgb(243, 141, 21);">{{ $t('not_in_use') }}</div>
                            </div>
                          </div>
                          <div v-else>
                            <InputSwitch v-model="data.isUse" :trueValue="1" :falseValue="0"/>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div v-if="!configs?.data && !isLoadingConfig" class="ms-setting-empty flex-1 d-flex flex-column align-items-center justify-content-center">
            <div class="icon-no-data"></div>
            <div class="text-center">{{ $t('no_data') }}</div>
          </div>
        </TabPanel>

      </TabView>
    </div>
  </div>
</template>

<script>
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import Skeleton from 'primevue/skeleton';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Checkbox from "primevue/checkbox";
import OverlayPanel from 'primevue/overlaypanel';
import Dropdown from "primevue/dropdown";
import InputNumber from "primevue/inputnumber";
import TreeSelect from "primevue/treeselect";
import InputSwitch from 'primevue/inputswitch';
import RadioButton from 'primevue/radiobutton';
import SelectButton from 'primevue/selectbutton';
import Image from 'primevue/image';
import TheLoading from "@/components/TheLoading.vue";
import {mapActions, mapGetters} from 'vuex';
import {updateConfig} from "@/api/shopping_mall";

export default {
  components: {
    Button,
    InputText,
    Skeleton,
    DataTable,
    Column,
    Checkbox,
    OverlayPanel,
    Dropdown,
    InputNumber,
    TreeSelect,
    RadioButton,
    SelectButton,
    InputSwitch,
    TabView,
    TabPanel,
    TheLoading,
    Image,
  },

  data() {
    return {
      activeIndex: 0,
      editActive: [],
      data: {},
      optionTypes: [],
      optionTypeTexts: [],
      tabs: [
        {title: this.$t('everything')},
        {title: this.$t('in_use')},
        {title: this.$t('not_in_use')},
      ]
    }
  },

  computed: {
    ...mapGetters(['configs', "isLoadingConfig"]),
  },

  methods: {
    ...mapActions(['loadConfig']),

    /**
     * Click button edit item
     * @param item
     * @param index
     */
    onEditSettingItem(item, index) {
      this.editActive[index] = true;
      this.data = {...item};
    },

    /**
     * Click button cancel setting item
     * @param item
     * @param index
     */
    onCancelSettingItem(item, index) {
      if (JSON.stringify(item) !== JSON.stringify(this.data)) {
        item = this.data
      }

      this.editActive[index] = false;
    },

    /**
     * Click button save setting item
     * @param item
     * @param index
     */
    onSaveSetting(item, index) {
      if (JSON.stringify(this.configs.data[index]) !== JSON.stringify(this.data)) {
        updateConfig(this.data).then(res => {
          this.$store.dispatch('handlerAddSuccess');
          this.loadConfig({isUse: this.handlerIsUse()});
        }).catch(error => {

        }).finally(() => {
          this.editActive[index] = false;
        });
      }
      this.configs.data[index] = this.data
    },

    handlerIsUse() {
      let isUse = '';
      if (this.activeIndex === 1) {
        isUse = 1;
      }

      if (this.activeIndex === 2) {
        isUse = 0;
      }

      return isUse;
    },
  },

  async created() {
    await this.loadConfig();
    this.optionTypes = this.configs.optionTypes
    if (this.optionTypes) {
      this.optionTypes.forEach(item => {
        item.description = this.$t(item.description)
        this.optionTypeTexts[item.value] = item.description
      })
    }
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
      position: relative;
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

.ms-screen-setting-wrapper {

  .p-tabview {
    .p-tabview-nav-container {
      .p-tabview-nav-content {
        .p-tabview-nav {
          .p-tabview-header {
            padding: 4px 0;
            margin: 0 12px;

            &:first-child {
              margin-left: 0;
            }

            &.p-highlight {
              border-bottom: unset;

              .p-tabview-nav-link {
                border-bottom: unset;

                .p-tabview-title {
                  border-bottom: 1px solid #FA8232;
                }
              }
            }

            .p-tabview-nav-link {
              padding: unset;

              .p-tabview-title {
                padding: 0 0 4px 0;
                line-height: 24px;
              }
            }

            &:hover {
              .p-tabview-nav-link {
                background-color: #f0f0f0;
              }
            }
          }
        }
      }
    }
  }

  .ms-setting-container {
    .ms-setting-main {
      .ms-setting-item {
        border-color: var(--theme-arco-color-border-2);
        border-radius: 4px;
        border-width: 1px;
        border-style: solid;
        padding: 24px;
        background-color: var(--primary);

        &:last-child {
          margin-bottom: 24px;
        }

        .ms-setting-item-value {
          .ms-setting-item_header {
            .left-side {
              font-size: 18px;
              font-weight: 500;
            }

            .right-side {
              .ms-btn {
                padding: 3px 8px;
              }
            }
          }

          .ms-setting-item_main {
            .ms-main-items {
              .item {
                padding: 20px;
                border-width: 1px;
                border-style: solid;
                border-color: var(--theme-arco-color-bg-bg2);
              }
            }
          }
        }
      }
    }
  }

  .ms-setting-empty {
    background-color: var(--primary);
    border-radius: 4px;
  }
}

</style>
