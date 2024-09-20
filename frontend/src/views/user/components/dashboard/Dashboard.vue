<template>
  <div class="ms-dashboard">
    <div class="ms-dashboard-heading">
      <strong class="ms-username">Hello, Kevin</strong>
      <div class="row g-0">
        <div v-html="$t('account_dashboard_info')" class="col-lg-6"></div>
        <div class="col-lg-6"></div>
      </div>
    </div>
    <div class="ms-dashboard-top-content mt-3">
      <div class="row g-3 flex-xl-row-reverse">
        <div class="col-xxl-4 d-flex">
          <div class="ms-fun-facts d-flex flex-xxl-column gap-3 flex-1">
            <div class="flex-1 d-flex">
              <div class="ms-fun-fact-item ms-blue d-flex gap-3 align-items-center flex-1">
                <div class="left-side">
                  <div class="icon-rocket icon-w32"></div>
                </div>
                <div class="right-side">
                  <div class="title">154</div>
                  <div class="description">Tổng đơn hàng</div>
                </div>
              </div>
            </div>
            <div class="flex-1 d-flex">
              <div class="ms-fun-fact-item ms-orange d-flex gap-3 align-items-center flex-1">
                <div class="left-side">
                  <div class="icon-receipt icon-w32"></div>
                </div>
                <div class="right-side">
                  <div class="title">154</div>
                  <div class="description">Tổng đơn hàng</div>
                </div>
              </div>
            </div>
            <div class="flex-1 d-flex">
              <div class="ms-fun-fact-item ms-green d-flex gap-3 align-items-center flex-1">
                <div class="left-side">
                  <div class="icon-package-green icon-w32"></div>
                </div>
                <div class="right-side">
                  <div class="title">154</div>
                  <div class="description">Tổng đơn hàng</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xxl-8 d-flex">
          <div class="row flex-1 g-3">
            <div class="col-lg-6 col-12">
              <div class="ms-dashboard-top-content_item ms-dashboard-account-info flex-1 d-flex flex-column">
                <div class="header">
                  {{ $t('account_information') }}
                </div>
                <div class="content flex-1">
                  <div class="info d-flex gap-2">
                    <div class="ms-avatar">
                      <img :src="require('@public/assets/images/avatar/162971076.jpeg')" alt="">
                    </div>
                    <div class="d-flex flex-column ms-info">
                      <div class="ms-username">Kevin Gilbert</div>
                      <div class="ms-address">Dhaka - 1207, Bangladesh</div>
                    </div>
                  </div>
                  <div class="details mt-3 d-flex flex-column gap-2">
                    <div class="item">
                      <div class="d-flex gap-2">
                        <div class="title">
                          {{ $t('email') }}:
                        </div>
                        <div class="description">
                          kevin.gilbert@gmail.com
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="d-flex gap-2">
                        <div class="title">
                          {{ $t('date_of_birth') }}:
                        </div>
                        <div class="description">
                          kevin.gilbert@gmail.com
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="d-flex gap-2">
                        <div class="title">
                          {{ $t('phone_number') }}:
                        </div>
                        <div class="description">
                          kevin.gilbert@gmail.com
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="ms-dashboard-button">
                    <Button class="ms-btn white ms-btn_search mt-4 text-center ps-3 pe-3">
                      <div class="d-flex align-items-center gap-1">
                        <div>{{ $t('change') }}</div>
                      </div>
                    </Button>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-12">
              <div class="ms-dashboard-top-content_item flex-1 d-flex flex-column">
                <div class="header">
                  {{ $t('billing_address') }}
                </div>
                <div class="content flex-1">
                  <div class="info d-flex gap-2">
                    <div class="d-flex flex-column ms-info">
                      <div class="ms-username">Kevin Gilbert</div>
                    </div>
                  </div>
                  <div class="details mt-3 d-flex flex-column gap-2">
                    <div class="item">
                      <div class="d-flex gap-2">
                        <div class="title">
                          {{ $t('email') }}:
                        </div>
                        <div class="description">
                          kevin.gilbert@gmail.com
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="d-flex gap-2">
                        <div class="title">
                          {{ $t('date_of_birth') }}:
                        </div>
                        <div class="description">
                          kevin.gilbert@gmail.com
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="d-flex gap-2">
                        <div class="title">
                          {{ $t('phone_number') }}:
                        </div>
                        <div class="description">
                          kevin.gilbert@gmail.com
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="ms-dashboard-button">
                    <Button class="ms-btn white ms-btn_search mt-4 text-center ps-3 pe-3">
                      <div class="d-flex align-items-center gap-1">
                        <div>{{ $t('change') }}</div>
                      </div>
                    </Button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="mt-3">
      <BrowsingHistoryItem :header="$t('browsing_history')" :view-all="true"/>
    </div>
  </div>
</template>

<script>
import Button from 'primevue/button';
import BrowsingHistoryItem from "@/views/user/components/BrowsingHistoryItem.vue";

export default {
  components: {
    Button,
    BrowsingHistoryItem,
  }
}
</script>

<style lang="scss">
.ms-dashboard {
  .ms-dashboard-heading {
    .ms-username {
      font-size: 20px;
      color: var(--Gray-900);
      margin-bottom: 12px;
    }

    color: var(--Gray-700);

    b {
      color: var(--Secondary-500);
      font-style: normal;
      font-weight: 500;
    }
  }

  .ms-dashboard-top-content {
    .ms-dashboard-top-content_item {
      width: 100%;
      height: 100%;

      .header {
        padding: 16px 24px;
        border-radius: 4px 4px 0 0;
        background: var(--Gray-00);
        border: 1px solid var(--Gray-100);
        color: var(--Gray-900);
        font-weight: 500;
        line-height: 20px;
        text-transform: uppercase;
      }

      .content {
        border-radius: 0 0 4px 4px;
        border: 1px solid var(--Gray-100);
        border-top: unset;
        background: var(--Gray-00);
        padding: 24px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;

        .details {
          .item {
            .title {
              color: var(--Gray-900);
            }

            .description {
              color: var(--Gray-600);
            }
          }
        }

        .ms-dashboard-button {
          .p-button {
            border: 1px solid var(--Secondary-100);
            color: var(--Secondary-500);
            font-weight: 700;

            &:hover {
              background-color: var(--Secondary-500);
              color: #fff;
            }
          }
        }
      }

      &.ms-dashboard-account-info {
        .content {
          .info {
            .ms-avatar {
              width: 48px;
              height: 48px;

              img {
                width: 100%;
                border-radius: 50%;
              }
            }

            .ms-info {
              .ms-username {
                font-size: 16px;
                font-weight: 600;
              }

              .ms-address {
                color: var(--Gray-600);
              }
            }
          }
        }
      }
    }

    .ms-fun-facts {
      .ms-fun-fact-item {
        padding: 16px;

        &.ms-blue {
          background: var(--Secondary-50);
        }

        &.ms-green {
          background: var(--Success-50);
        }

        &.ms-orange {
          background: var(--Primary-50);
        }

        .left-side {
          background: var(--Gray-00);
          display: flex;
          align-items: center;
          width: 56px;
          height: 56px;
          justify-content: center;
        }

        .right-side {
          display: flex;
          flex-direction: column;
          height: 56px;
          flex: 1;
          justify-content: space-between;

          .title {
            font-size: 20px;
            font-weight: 600;
            color: var(--Gray-900);
          }

          .description {
            color: var(--Gray-700);
            font-style: normal;
            font-weight: 400;
          }
        }
      }
    }
  }
}

@media (max-width: 768px) {
  .ms-dashboard {
    .ms-dashboard-top-content {
      .ms-fun-facts {
        flex-direction: column;
      }
    }
  }
}
</style>
