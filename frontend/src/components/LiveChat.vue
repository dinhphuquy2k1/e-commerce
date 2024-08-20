<template>
  <div class="live-chat">
    <div id="live-chat-btn" v-if="isShow">
      <div class="image has-tooltip" v-tooltip="'Mở trang trò chuyện'"></div>
      <div class="hide" @click="isShow = false"></div>
    </div>
    <div id="quick-icon" v-else>
      <div class="toggle" @click="isToggle = !isToggle">
        <div class="img" :class="{'img-show': isToggle, 'img-hide': !isToggle}"></div>
      </div>
      <ul class="list-icon" :class="{'show': !isToggle, 'hide': isToggle}">
        <li class="icon live-chat has-tooltip" v-tooltip="'Mở trang trò chuyện'"></li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isShow: true,
      isToggle: false,
    }
  },
  methods: {}
}
</script>

<style lang="scss">
.live-chat {
  #live-chat-btn {
    position: fixed;
    bottom: 32px;
    right: 24px;
    height: 56px;
    width: 56px;
    cursor: pointer;
    z-index: 1000 !important;
    text-align: center;
    display: flex;
    align-items: center;

    .image {
      background-image: url('@public/assets/icons/ic_live_chat.16696e05.svg');
      background-repeat: no-repeat;
      background-position: 50%;
      width: 56px;
      height: 56px;
      border-radius: 50%;
      box-shadow: 0 6px 16px rgba(0, 0, 0, .2);

    }

    .hide {
      position: absolute;
      background-image: url('@public/assets/icons/ic_live_chat_hide.1765c001.svg');
      background-repeat: no-repeat;
      background-position: 50%;
      top: 2px;
      right: 2px;
      width: 12px;
      height: 12px;
      cursor: pointer;
    }
  }

  #quick-icon {
    position: fixed;
    right: 0;
    top: 50%;
    transform: translateY(-50%) !important;
    z-index: 1000;
    display: flex;
    flex-direction: column;
    justify-content: right;
    align-items: flex-end;

    .toggle {
      width: 12px;
      height: 20px;
      border-radius: 4px 0 0 4px;
      cursor: pointer;
      background-color: #2680eb;

      .img {
        position: absolute;
        top: 6px;
        right: 4px;
        background: url('@public/assets/icons/ic_toggle_quick.f21c7ef6.svg') no-repeat;
        width: 4px;
        height: 8px;
        transition: .4s ease;
      }

      .img-show {
        transform: rotate(0deg);
      }

      .img-hide {
        transform: rotate(180deg);
      }
    }

    .show {
      width: 40px;
    }

     .hide{
      width: 0;
    }

    .list-icon {
      position: absolute;
      list-style: none;
      margin: 0;
      padding: 0;
      top: 18px;
      right: 0;
      transition: width .4s ease;

      .icon {
        width: 40px;
        height: 42px;
        border-radius: 8px 0 0 8px;
        background-color: #2680eb;
        margin: 4px 0;
        cursor: pointer;
      }

      .live-chat {
        background-image: url('@public/assets/icons/ic_live_chat_quick.7f07c188.svg');
        background-repeat: no-repeat;
        background-position: 10px 10px;
      }
    }
  }
}
</style>
