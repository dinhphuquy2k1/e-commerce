<template>
  <div class="form-list flex-grow-1 flex-column d-flex position-relative mw-100 ms-seller_profile ms-screen-setting-wrapper overflow-auto">
    <div class="d-flex flex-row title-box align-items-center gap-2">
      <div class="list-title flex-grow-1 text-start">{{ $t('contact_setting') }}</div>
    </div>
    <div class="flex-1 d-flex contact-setting-main overflow-auto">
      <div class="flex-1 bg-white rounded-4 d-flex flex-column contact-setting-content overflow-auto">
        <div class="px-24 py-32 flex flex-wrap flex-1 overflow-auto">
          <div class="contact-setting-content-item">
            <div class="header">
              <div class="title">{{ $t('contact') }}</div>
              <div class="description mt-1">{{ $t('contact_admin_description') }}</div>
            </div>
            <div class="main mt-3">
              <div class="row g-3 flex-wrap align-items-center">
                <div class="group-form_box col-lg-4">
                  <div class="label d-flex align-items-center">
                    {{ $t('phone_number') }}
                    <span class="required">*</span>
                  </div>
                  <div class="flex-1">
                    <InputText v-model="data.phone"
                               :class="{'error': invalid['displayType']}"
                    ></InputText>
                  </div>
                  <div class="ms-error-text" v-if="invalid['displayType']">
                    {{ invalid['displayType'] }}
                  </div>
                </div>
                <div class="group-form_box col-lg-4">
                  <div class="label d-flex align-items-center">
                    {{ $t('email') }}
                    <span class="required">*</span>
                  </div>
                  <div class="flex-1">
                    <InputText v-model="data.email"
                               :class="{'error': invalid['displayType']}"
                    ></InputText>
                  </div>
                  <div class="ms-error-text" v-if="invalid['displayType']">
                    {{ invalid['displayType'] }}
                  </div>
                </div>
                <div class="group-form_box col-lg-4">
                  <div class="label d-flex align-items-center">
                    {{ $t('address') }}
                    <span class="required">*</span>
                  </div>
                  <div class="flex-1">
                    <InputText v-model="data.address"
                               :class="{'error': invalid['displayType']}"
                    ></InputText>
                  </div>
                  <div class="ms-error-text" v-if="invalid['displayType']">
                    {{ invalid['displayType'] }}
                  </div>
                </div>
              </div>
            </div>
            <div class="footer"></div>
          </div>
          <div class="contact-setting-content-item">
            <div class="header">
              <div class="title">{{ $t('social_links_title') }}</div>
              <div class="description mt-1">{{ $t('social_links_description') }}</div>
            </div>
            <div class="main mt-3">
              <div class="row gy-3 row-cols-xxl-5 row-cols-lg-4 row-cols-md-3 row-cols-sm-2 row-cols-1">
                <div class="col" v-for="item in data.social">
                  <div class="ms-social_item">
                    <div class="social-contact_icon" :class="[item.icon]"></div>
                    <div>
                      {{ item.title }}
                    </div>
                    <div class=" gap-3 align-items-center">
                      <div class="group-form_box flex-1">
                        <div class="label d-flex align-items-center">
                          {{ $t('link') }}
                        </div>
                        <div class="flex-1">
                          <InputText v-model="data.phone"
                                     :class="{'error': invalid['displayType']}"
                          ></InputText>
                        </div>
                        <div class="ms-error-text" v-if="invalid['displayType']">
                          {{ invalid['displayType'] }}
                        </div>
                      </div>
                      <div class="group-form_box flex-1 d-flex mt-3">
                        <div class="label d-flex align-items-center gap-3">
                          <InputSwitch v-model="item.isUse" :trueValue="1" :falseValue="0"/>
                          <div v-if="item.isUse"> {{ $t('use') }}</div>
                          <div v-if="!item.isUse"> {{ $t('no_use') }}</div>
                        </div>
                        <div class="ms-error-text" v-if="invalid['displayType']">
                          {{ invalid['displayType'] }}
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="contact-footer d-flex justify-content-end position-sticky bottom-0">
          <div class="d-flex">
            <Button
                @click="onSaveContact"
                class="ms-btn primary d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
              <div class="fw-medium">{{ $t('save') }}</div>
            </Button>
          </div>
        </div>
      </div>
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
import Dialog from 'primevue/dialog';
import TheLoading from "@/components/TheLoading.vue";
import {mapActions, mapGetters} from 'vuex';
import {TIMEOUT} from "@/common/enums";

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
    Dialog,
  },

  data() {
    return {
      invalid: [],
      data: {
        phone: null,
        email: null,
        address: null,
        social: [
          {
            icon: "twitter",
            value: null,
            isUse: 0,
            title: "Twitter",
          },
          {
            icon: "youtube",
            value: null,
            isUse: 0,
            title: "YouTube",
          },
          {
            icon: "facebook",
            value: null,
            isUse: 0,
            title: "Facebook",
          },
          {
            icon: "pinterest",
            value: null,
            isUse: 0,
            title: "Pinterest",
          },
          {
            icon: "instagram",
            value: null,
            isUse: 0,
            title: "Instagram",
          },
        ]
      },
    }
  },

  computed: {
    ...mapGetters(['contacts', "isLoadingContact"]),
  },

  methods: {
    ...mapActions(['loadContact']),
    onSaveContact() {

    }
  },

  async created() {
    await this.loadContact();

    Object.entries(this.contacts?.contactType).forEach(item => {
      let contacts = this.contacts?.data?.[item?.[1].value];
      if (contacts && contacts.length === 1) {
        contacts.forEach((contact) => {
          this.data[item[0].toLocaleLowerCase()] = contact.value
        })
      }

      if (contacts && contacts.length > 1) {
        contacts.forEach((contact) => {
          this.data[item[0].toLocaleLowerCase()].forEach((data) => {
            if (data.icon === contact.icon) {
              data.value = contact.icon
              data.isUse = contact.isUse
            }
          })
        })
      }
    })
  }
}
</script>

<style lang="scss">
.contact-setting-main {

  .contact-setting-content {
    .contact-setting-content-item {
      .header {
        .title {
          font-size: 16px;
          font-weight: 700;
        }

        .description {
          display: -webkit-box;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
          -webkit-line-clamp: 2;
          color: rgba(0, 0, 0, 0.55);
        }
      }

      .footer {
        margin-top: 50px;
        margin-bottom: 50px;
        width: 100%;
        height: 1px;
        background-color: var(--theme-arco-color-border-2);
      }

      .main {

        .ms-social_item {
          border-radius: 6px;
          padding: 40px 20px;
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          gap: 10px;
          cursor: pointer;
          border: 1px solid #E4E7E9;
          color: var(--Gray-600);

          .social-contact_icon {
            width: 16px;
            height: 16px;
          }

          .twitter {
            background-image: url('@public/assets/icons/twitter_gray.svg');
          }

          .facebook {
            background-image: url('@public/assets/icons/Facebook_gray.svg');
          }

          .pinterest {
            background-image: url('@public/assets/icons/Pinterest_gray.svg');
          }

          .youtube {
            background-image: url('@public/assets/icons/Youtube_gray.svg');
          }

          .instagram {
            background-image: url('@public/assets/icons/Instagram_gray.svg');
          }

          &:hover {
            border-color: var(--Secondary-600);

            .youtube {
              background-image: url('@public/assets/icons/Youtube_blue.svg');
            }

            .twitter {
              background-image: url('@public/assets/icons/twitter_blue.svg');
            }

            .pinterest {
              background-image: url('@public/assets/icons/Pinterest_blue.svg');
            }

            .instagram {
              background-image: url('@public/assets/icons/Instagram_blue.svg');
            }

            .facebook {
              background-image: url('@public/assets/icons/Facebook_blue.svg');
            }
          }
        }
      }
    }

  }

  .contact-footer {
    border-top: 1px solid #e0e0e0;
    background-color: #fbfbfe;
    padding: 12px 24px;
  }
}
</style>
