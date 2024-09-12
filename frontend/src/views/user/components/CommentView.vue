<template>
  <div class="rt-form-item d-flex gap-3 mb-4" v-for="(comment, index) in comments">
    <div class="avt">
      <Image :src="require('@public/assets/icons/googlepay.svg')" width="50" alt="Image"/>
    </div>
    <div class="info flex-1">
      <div><strong class="name">Quý</strong></div>
      <div class="display-rating rating-medium mt-1">
        <Rating v-model="value" :cancel="false"/>
      </div>
      <div class="date mt-2">
        <i>Tháng trước (05/07/2024)</i>
      </div>
      <div class="content mt-3"> {{ comment.content }}
      </div>
      <div class="childs mt-3" v-if="comment?.child.length > 0">
        <div class="comment-list">
          <div class="rt-form-item d-flex gap-3 mb-4" v-for="childItem in comment.child">
            <div class="avt">
              <Image :src="require('@public/assets/icons/googlepay.svg')" width="50" alt="Image"/>
            </div>
            <div class="info">
              <div><strong class="name">Quý</strong></div>
              <div class="date mt-2">
                <i>Tháng trước (05/07/2024)</i>
              </div>
              <div class="content mt-3"> {{ childItem.content }}
              </div>
            </div>
          </div>
          <div class="reply mt-3">
            <div v-if="!isReply[index]" class="d-flex">
              <div>
                <InputText :placeholder="$t('enter_your_comment')" class="ms-input" readonly
                           @click="isReply[index] = true"></InputText>
              </div>
            </div>
            <div class="form-reply mt-3" v-else>
              <div class="rc-form review-form row gap-3 g-0">
                <div class="col-12 row g-0">
                  <div class="g-0">
                    <div class="row gy-4">
                      <div class="col-4">
                        <InputText type="text" :placeholder="$t('full_name')"/>
                      </div>
                      <div class="col-4">
                        <InputText type="text" :placeholder="$t('phone_number')"/>
                      </div>
                      <div class="col-4">
                        <InputText type="text" :placeholder="$t('email')"/>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 row g-0">
                  <Textarea v-model="value" rows="4" cols="30" :placeholder="$t('content_min_length')"/>
                </div>
              </div>
              <div class="rc-form-button mt-3">
                <div class="row g-0">
                  <div class="col-6 d-flex align-items-center">{{ $t('comment_requirements') }}</div>
                  <div class="col-6 d-flex justify-content-end">
                    <div>
                      <Button
                          class="ms-btn border-orange d-flex justify-content-center flex-grow-1 ps-3 pe-3 gap-2">
                        <div class="fw-semibold">{{ $t('submit_comment') }}</div>
                      </Button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Image from 'primevue/image';
import Rating from 'primevue/rating';
import InputText from 'primevue/inputtext';
import Textarea from 'primevue/textarea';

export default {
  props: {
    comments: []
  },
  components: {
    Image,
    Rating,
    InputText,
    Textarea,
  },
  data() {
    return {
      isReply: [],
    }
  }
}
</script>

<style lang="scss" scoped>
.rt-form-item {
  .info {
    .date {
      font-size: 13px;
      color: var(--Gray-500);
    }

    .name, .content {
      color: var(--Gray-900);
    }

    .childs {
      border-left: 2px solid #a7a9ac;
      padding-left: 20px;

      .comment-list {
        .reply {
          .ms-input {
            display: none;
          }
        }

        &:hover {
          .reply {
            .ms-input {
              display: block;
            }

          }
        }
      }
    }
  }
}
</style>
