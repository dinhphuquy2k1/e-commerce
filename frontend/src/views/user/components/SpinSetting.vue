<template>
  <div class="ms-spin-setting-wrapper pointer" v-if="finalSetting.visible"
       :class="{ 'ms-spin-fixed': finalSetting.position === 'fixed', 'ms-spin-static': finalSetting.position === 'static' }"
       :style="{ backgroundColor: finalSetting.background, position: finalSetting.position, right: finalSetting.right, top: finalSetting.top, transform: finalSetting.transform, borderRadius: finalSetting.borderRadius, width: finalSetting.width }">
    <Accordion>
      <AccordionTab :disabled="finalSetting.items.length === 0"
                    :headerClass="{ 'ms-spin-fixed': finalSetting.position === 'fixed' }"
                    :contentClass="{ 'ms-spin-fixed': finalSetting.position === 'fixed' }">
        <template #header>
          <div class="ms-spin-setting-container d-flex gap-2 align-items-center">
            <div class="ms-spin-icon icon-w24">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path
                    d="M12 16.5C14.4853 16.5 16.5 14.4853 16.5 12C16.5 9.51472 14.4853 7.5 12 7.5C9.51472 7.5 7.5 9.51472 7.5 12C7.5 14.4853 9.51472 16.5 12 16.5Z"
                    stroke="#d13f4a" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path
                    d="M17.2218 6.10315C17.4593 6.3219 17.6843 6.5469 17.8968 6.77815L20.4562 7.14377C20.8732 7.868 21.1946 8.6432 21.4124 9.45002L19.8562 11.5219C19.8562 11.5219 19.8843 12.1594 19.8562 12.4782L21.4124 14.55C21.1956 15.3572 20.8741 16.1325 20.4562 16.8563L17.8968 17.2219C17.8968 17.2219 17.4562 17.6813 17.2218 17.8969L16.8562 20.4563C16.1319 20.8733 15.3567 21.1947 14.5499 21.4125L12.478 19.8563C12.1599 19.8844 11.8399 19.8844 11.5218 19.8563L9.4499 21.4125C8.64274 21.1957 7.8674 20.8742 7.14365 20.4563L6.77803 17.8969C6.54678 17.6781 6.32178 17.4531 6.10303 17.2219L3.54365 16.8563C3.12664 16.132 2.80521 15.3568 2.5874 14.55L4.14365 12.4782C4.14365 12.4782 4.11553 11.8406 4.14365 11.5219L2.5874 9.45002C2.8042 8.64286 3.12568 7.86753 3.54365 7.14377L6.10303 6.77815C6.32178 6.5469 6.54678 6.3219 6.77803 6.10315L7.14365 3.54377C7.86788 3.12676 8.64308 2.80533 9.4499 2.58752L11.5218 4.14377C11.8399 4.11564 12.1599 4.11564 12.478 4.14377L14.5499 2.58752C15.3571 2.80432 16.1324 3.1258 16.8562 3.54377L17.2218 6.10315Z"
                    stroke="#d13f4a" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
              </svg>
            </div>
            <div class="ms-spin-title">{{ $t('setting') }}</div>
          </div>
        </template>
        <div class="d-flex flex-column gap-2">
          <div v-for="item in finalSetting.items" class="ms-spin-item">
            {{ item.title }}
          </div>
        </div>
      </AccordionTab>
    </Accordion>
  </div>
</template>

<script>
import Accordion from 'primevue/accordion';
import AccordionTab from 'primevue/accordiontab';

export default {
  components: {
    Accordion,
    AccordionTab,
  },
  props: {
    setting: {
      type: {},
      default: {},
    },
  },
  computed: {
    finalSetting() {
      const position = this.$props.setting.position || 'absolute';
      let transform = '';
      if (position === 'absolute') {
        transform = 'translate(50%, -50%)'
      }

      return {
        ...this.$props.setting,
        position: position,
        top: this.$props.setting.top || '50%',
        right: this.$props.setting.right || '50%',
        visible: this.$props.setting.visible ?? true,
        background: this.$props.setting.background || 'rgba(255, 255, 255, 0.8)',
        transform: transform,
        items: this.$props.setting.items || [],
      };
    },
  },
}
</script>

<style lang="scss">
.ms-spin-setting-wrapper {
  width: max-content;
  height: auto;
  max-width: 150px;
  color: #d13f4a !important;

  &.ms-spin-fixed {
    z-index: 100001;
    .p-accordion {
      .p-accordion-tab {
        background-color: rgba(0, 0, 0, 0.8);
        border-radius: 10px;
      }
    }
  }

  .p-accordion {

    .p-accordion-tab {
      margin-bottom: 0;

      .p-accordion-header {
        &.p-disabled {
          opacity: 1;
        }

        .p-accordion-header-action {
          padding: 8px 16px;
          border: unset;
          background: unset;

          .p-icon {
            display: none;
          }

          &:focus-visible {
            box-shadow: unset;
          }
        }


        &.ms-spin-fixed {
          .p-accordion-header-action {
            padding: 16px;
          }
        }
      }

      .p-toggleable-content {

        // border-radius: 10px;
        &.ms-spin-fixed {
          .p-accordion-content {
            text-align: center;
            padding: 0 16px 16px 16px;
            border: unset;
            background-color: rgba(0, 0, 0, 0.8);
            color: var(--primary);

            .ms-spin-item {
              &:hover {
                color: red;
              }
            }
          }
        }
      }
    }
  }

  &.ms-spin-static {
    .p-accordion {

      .p-accordion-tab {
        margin-bottom: 0;

        .p-accordion-header {
          &.p-disabled {
            opacity: 1;
          }

          .p-accordion-header-action {
            padding: 0;
          }
        }
      }
    }
  }

  .ms-spin-setting-container {
    display: flex;
    flex: 1;
    justify-content: center;

    .ms-spin-icon {
      animation: rotate 2s linear infinite;
      display: inline-block;
    }

    .ms-spin-title {
      text-align: center;
      color: #d13f4a !important;
    }
  }

  &:hover {
    color: red;

    svg {
      path {
        stroke: red
      }
    }

    .ms-spin-title {
      color: red;
    }

  }
}

@keyframes rotate {
  from {
    transform: rotate(0deg);
  }

  to {
    transform: rotate(360deg);
  }
}
</style>
