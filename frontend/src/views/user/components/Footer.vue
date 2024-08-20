<template>
  <footer class="ms-footer d-flex flex-column justify-content-between">
    <div class="flex-grow-1 ms-footer_content">
      <div class="row">
        <div class="ms-footer_item col-lg col-md-4 col-6">
          <div class="ms-footer_logo-container d-flex align-items-center gap-2">
            <div class="logo"></div>
            <div class="title"></div>
          </div>
          <div class="text-start text-wrap mt-3">
            <span class="fw-semibold ms-footer_label">Hỗ trợ khách hàng:</span>
            <br>
            (629) 555-0129
            <br>
            <br>
            <span class="ms-footer_label mt-3">Thành Phố Hà Nội</span>
            <br>
            <br>
            support@ecommerce.com
          </div>
          <div class="social-container mt-3 d-flex">
            <div class="facebook me-2">
              <div class="icon"></div>
            </div>
            <div class="twitter me-2">
              <div class="icon"></div>
            </div>
            <div class="linkedin me-2">
              <div class="icon"></div>
            </div>
            <div class="instagram me-2">
              <div class="icon"></div>
            </div>
            <div class="youtube me-2">
              <div class="icon"></div>
            </div>
          </div>
        </div>
        <div class="ms-footer_item col-lg col-md-4 col-6">
          <div class="title text-start ps-3 fw-semibold mb-2">Danh mục hàng đầu</div>
          <ul class="nav flex-column text-start">
            <li class="nav-item">
              Laptop
            </li>
            <li class="nav-item">
              Điện thoại
            </li>
            <li class="nav-item">
              Tai nghe
            </li>
            <li class="nav-item nav-item_type">
              <div class="line"></div>
              Phụ kiện
            </li>
            <li class="nav-item">
              Camera
            </li>
            <li class="nav-item">
              Sạc
            </li>
          </ul>
        </div>
        <div class="ms-footer_item col-lg col-md-4 col-6">
          <div class="title text-start ps-3 fw-semibold mb-2">Danh mục liên kết</div>
          <ul class="nav flex-column text-start">
            <li class="nav-item">
              Laptop
            </li>
            <li class="nav-item">
              Điện thoại
            </li>
            <li class="nav-item">
              Tai nghe
            </li>
            <li class="nav-item">
              Camera
            </li>
            <li class="nav-item">
              Sạc
            </li>
          </ul>
        </div>
        <div class="ms-footer_item col-lg col-md-4 col-6">
          <div class="title text-start fw-semibold mb-2">Tải xuống</div>
          <ul class="nav flex-column text-start gap-3">
            <li class="nav-item download">
              <div class="icon icon-gg_play"></div>
              <div class="d-flex flex-column">
                <span>Get it now</span>
                <span>Google Play</span>
              </div>
            </li>
            <li class="nav-item download">
              <div class="icon icon-app_store"></div>
              <div class="d-flex flex-column">
                <span>Get it now</span>
                <span>Google Play</span>
              </div>
            </li>
          </ul>
        </div>
        <div class="ms-footer_item col-lg col-md-4 col-6 ms-popular_list">
          <div class="title text-start fw-semibold mb-2">Thẻ phổ biến</div>
          <div class="d-flex flex-wrap gap-2 ms-popular_list">
            <div class="item-popular">Game</div>
            <div class="item-popular">iPhone</div>
            <div class="item-popular">TV</div>
            <div class="item-popular">Asus Laptops</div>
            <div class="item-popular">Macbook</div>
            <div class="item-popular">SSD</div>
            <div class="item-popular">Graphics Card</div>
            <div class="item-popular">Power Bank</div>
            <div class="item-popular">Smart TV</div>
            <div class="item-popular">Speaker</div>
            <div class="item-popular">Tablet</div>
            <div class="item-popular">Microwave</div>
            <div class="item-popular">Samsung</div>
          </div>
        </div>
      </div>
    </div>
    <div class="ms-footer_copyright">
      PhuQuy - eCommerce Template © 2023. Design by Templatecookie
    </div>
  </footer>
</template>

<style lang="scss" scoped>
$padding: 72px;
.ms-footer {
  min-height: 256px;
  flex-shrink: 0;
  color: #FFF;
  background: #191C1F;

  .ms-footer_copyright {
    display: flex;
    padding: 24px 150px;
    align-items: center;
    justify-content: center;
    gap: 10px;
    background: #191C1F;
    box-shadow: 0px 1px 0px 0px #303639 inset;
    color: #ADB7BC;
  }

  .ms-footer_content {
    padding: $padding $padding-base;
  }

  .ms-footer_item {
    .ms-footer_logo-container {
      .logo {
        width: 48px;
        height: 48px;
        background-image: url('@public/assets/icons/logo_footer.svg');
        background-repeat: no-repeat;
        background-color: transparent;
      }

      .title {
        color: #FFF;
        width: 77px;
        height: 21.101px;
        flex-shrink: 0;
        background-image: url('@public/assets/icons/Brand.svg');
        background-repeat: no-repeat;
        background-color: transparent;
      }
    }

    .ms-footer_label {
      color: #77878F;
      font-size: 14px;
      font-style: normal;
      font-weight: 400;
      line-height: 20px;
    }

    .title {
      font-size: 16px;
      font-style: normal;
      font-weight: 500;
      line-height: 24px; /* 150% */
      text-transform: uppercase;
    }

    .nav-item {
      color: #8B96A5;
      padding: 0.5rem 1rem;
      cursor: pointer;
    }

    .nav-item.nav-item_type {
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 14px;
      font-style: normal;
      font-weight: 500;
      line-height: 20px;
      color: #FFF;

      .line {
        width: 24px;
        height: 2px;
        background: #EBC80C;
      }
    }

    .item-popular {
      padding: 6px 12px;
      justify-content: center;
      align-items: center;
      gap: 10px;
      border-radius: 2px;
      border: 1px solid #303639;
    }

    .nav-item.download {
      max-width: 176px;
      display: flex;
      padding: 16px 20px;
      justify-content: center;
      align-items: center;
      gap: 16px;
      border-radius: 3px;
      background: #303639;

      .icon {
        width: 32px;
        height: 32px;
        background-repeat: no-repeat;
        background-color: transparent;
      }

      &:hover {
        text-decoration: none;
        color: #8B96A5;
      }

      .icon-gg_play {
        background-image: url('@public/assets/icons/Icon=google-play 1.svg');
      }

      .icon-app_store {
        background-image: url('@public/assets/icons/Apple---Negative 1.svg');
      }
    }

    .nav-item:hover {
      text-decoration: underline;
      color: #127FFF;
    }

    .social-container {
      .icon {
        width: 32px;
        height: 32px;
        flex-shrink: 0;
        background-repeat: no-repeat;
        background-color: transparent;
      }

      .facebook {
        .icon {
          background-image: url('@public/assets/icons/facebook3.svg');
        }
      }

      .twitter {
        .icon {
          background-image: url('@public/assets/icons/twitter3.svg');
        }
      }

      .linkedin {
        .icon {
          background-image: url('@public/assets/icons/linkedin3.svg');
        }
      }

      .instagram {
        .icon {
          background-image: url('@public/assets/icons/instagram3.svg');
        }
      }

      .youtube {
        .icon {
          background-image: url('@public/assets/icons/youtube3.svg');
        }
      }
    }

    .download-app_store {
      width: 124px;
      height: 42px;
      background-repeat: no-repeat;
      background-color: transparent;
      background-image: url('@public/assets/images/download_app_store.svg');
    }

    .download-google_play {
      width: 124px;
      height: 42px;
      background-repeat: no-repeat;
      background-color: transparent;
      background-image: url('@public/assets/images/download_google_play.svg');
    }
  }
}
</style>