<template>
  <div class="ms-shopping-cart_wrapper">
    <div class="ms-shopping-cart_container row mt-5 mb-5 g-3">
      <div class="col-lg-8 mt-0">
        <div class="ms-cart-container mw-100">
          <div class="ms-cart-header">
            Giỏ hàng
          </div>
          <div class="ms-cart-main d-flex mw-100">
            <DataTable v-model:selection="selectedProduct"
                       lazy
                       dataKey="id"
                       :class="{ 'loading': isLoadingProduct }"
                       :loading="isLoadingProduct"
                       class="flex1 flex-column mw-100"
                       scrollable
                       style="min-width: 100%"
                       :value="isLoadingProduct ? Array.from({ length: getNumberDefault }, () => ({ ...{} })) : test"
                       @rowDblclick="onRowSelect($event.data)" rowHover>
              <template #paginatorstart>
                <Button type="button" icon="pi pi-refresh" text/>
              </template>
              <template #paginatorend>
                bản ghi/trang
              </template>
              <template #empty>
                <div class="d-flex flex-column p-24 justify-content-center align-items-center">
                  <div class="icon-empty_table"></div>
                  <div>{{ $t('no_data') }}</div>
                </div>
              </template>
              <Column field="DepartmentCode" frozen alignFrozen="left" style="min-width: 320px" header="Sản phẩm">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoadingProduct"> {{ data[field] }}</div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
              <Column field="DepartmentName" style="min-width: 250px" dataKey="id" :header="$t('price_money')">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoadingProduct"> {{ data[field] }}</div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
              <Column style="min-width: 200px" dataKey="id" :header="$t('quantity')">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoadingProduct">
                    <InputNumber v-model="selectedProduct" showButtons buttonLayout="horizontal" class="mw-content h-36"
                                 :min="1"
                                 :allowEmpty="false"
                                 @input="changeQuantity"
                                 decrementButtonClassName="p-button-secondary"
                                 incrementButtonClassName="p-button-secondary">
                      <template #incrementbuttonicon>
                        <span class="pi pi-plus"/>
                      </template>
                      <template #decrementbuttonicon>
                        <span class="pi pi-minus"/>
                      </template>
                    </InputNumber>
                  </div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>
              <Column style="min-width: 150px" dataKey="id" :header="$t('total_value')">
                <template #body="{ data, field, slotProps }">
                  <div v-if="!isLoadingProduct"> {{ data[field] }}</div>
                  <div v-else>
                    <Skeleton></Skeleton>
                  </div>
                </template>
              </Column>

            </DataTable>
          </div>
          <div class="ms-cart-footer">
            <div class="d-flex justify-content-between align-items-center">
              <Button
                  class="ms-btn primary-outline ms-btn_search text-center d-flex justify-content-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div class="icon-w20 icon-arrow-left_primary"></div>
                  <div>{{ $t('continue_shopping') }}</div>
                </div>
              </Button>

              <Button
                  class="ms-btn primary-outline ms-btn_search text-center d-flex justify-content-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div>{{ $t('update') }}</div>
                </div>
              </Button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mt-0 d-flex flex-column">
        <div class="right-side text-start flex-1">
          <div class="header">
            {{ $t('payment_details') }}
          </div>

          <div class="main">
            <div class="item d-flex justify-content-between">
              <div class="title">{{ $t('total_value') }}</div>
              <div class="value">62,179,000 ₫</div>
            </div>
            <div class="item d-flex justify-content-between">
              <div class="title">{{ $t('shipping_fee') }}</div>
              <div class="value">{{ $t('free') }}</div>
            </div>
          </div>

          <div class="footer mt-3">
            <div class="item d-flex justify-content-between">
              <div class="title">{{ $t('total_payment') }}</div>
              <div class="value">62,179,000 ₫</div>
            </div>
          </div>
        </div>
        <div class="ms-coupon mt-4">
          <div class="header">
            {{ $t('discount_code') }}
          </div>
          <div class="main">
            <InputText type="text" :placeholder="$t('discount_code')"/>
            <Button
                class="ms-btn primary ms-btn_search mt-3 text-center d-flex justify-content-center ps-3 pe-3">
              <div class="d-flex align-items-center gap-1">
                <div>{{ $t('apply') }}</div>
              </div>
            </Button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Button from 'primevue/button';
import DataTable from 'primevue/datatable';
import Column from 'primevue/column';
import Skeleton from 'primevue/skeleton';
import InputText from 'primevue/inputtext';
import InputNumber from 'primevue/inputnumber';
import {mapGetters} from 'vuex';

export default {
  components: {
    Button,
    DataTable,
    Column,
    Skeleton,
    InputText,
    InputNumber,
  },
  computed: {
    ...mapGetters(['getNumberDefault', 'products', 'isLoadingProduct'])
  },
  data() {
    return {
      selectedProduct: null,
      test: [
        {
          DepartmentName: 'test',
          DepartmentCode: 'test',
        },
        {
          DepartmentName: 'test',
          DepartmentCode: 'test',
        }
      ]
    }
  },
  methods: {},
  created() {

  },
}
</script>

<style lang="scss">
.ms-shopping-cart_wrapper {
  padding: 0 var(--padding-base);

  .ms-shopping-cart_container {
    background: var(--Gray-00, #FFF);

    .ms-cart-container {
      border-radius: 4px;
      border: 1px solid var(--Gray-100);

      .ms-cart-header {
        padding: 20px;
        border-bottom: 1px solid var(--Gray-100);
      }

      .ms-cart-main {
        .p-datatable-thead {
          tr {
            th {
              border-right: none;
              border-left: none;
              padding: 0 20px !important;
              background: var(--Gray-50) !important;
            }
          }
        }

        .p-datatable-tbody {
          tr {
            td {
              padding: 20px 20px !important;
              border: none !important;

              &:last-child {
                position: static !important;
              }
            }
          }
        }
      }

      .ms-cart-footer {
        border-top: 1px solid var(--Gray-100);
        padding: 20px;
      }
    }

    .right-side, .ms-coupon {
      border-radius: 4px;
      border: 1px solid var(--Gray-100, #E4E7E9);
      padding: 20px 24px;

      .header {
        font-size: 18px;
        color: var(--Gray-900);
        font-weight: 500;
      }

      .main {
        padding-top: 15px;

        .title {
          color: var(--Gray-600);
          font-weight: 400;
        }

        .value {
          color: var(--Gray-900);
          font-weight: 500;
        }
      }

      .footer {
        padding-top: 15px;
        border-top: 1px solid #E4E7E9;
      }

    }
  }
}
</style>
