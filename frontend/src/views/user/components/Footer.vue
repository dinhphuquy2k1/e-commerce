<template>
    <div class="ms-footer d-flex justify-content-between">
        <div class="flex-grow-1">
            <div class="row">
                <div class="ms-footer_item col-lg col-md-4 col-6">
                    <div class="ms-footer_logo-container d-flex align-items-center">
                <div class="logo"></div>
                            <div class="title"></div>
                        </div>
                        <div class="text-start text-wrap mt-3">
                            <span class="fw-semibold">Hỗ trợ khách hàng:</span>
                            (629) 555-0129
                            <br>
                            <span class="fw-semibold">Email:</span>
                            support@ecommerce.com
                            <br>
                            <span class="fw-semibold">Địa chỉ:</span>
                            Thành Phố Hà Nội
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
                    <div class="title text-start ps-3 fw-semibold mb-2">Thông tin</div>
                    <ul class="nav flex-column text-start">
                    <li class="nav-item">
                        Thông tin
                    </li>
                    <li class="nav-item">
                        Cửa hàng
                    </li>
                    <li class="nav-item">
                        Sản phẩm
                    </li>
                    <li class="nav-item">
                        Trang cá nhân
                    </li>
                    </ul>
                </div>
                <div class="ms-footer_item col-lg col-md-4 col-6">
                    <div class="title text-start ps-3 fw-semibold mb-2">Đối tác</div>
                    <ul class="nav flex-column text-start">
                        <li class="nav-item">
                            Thông tin
                        </li>
                        <li class="nav-item">
                            Cửa hàng
                        </li>
                        <li class="nav-item">
                            Sản phẩm
                        </li>
                        <li class="nav-item">
                            Trang cá nhân
                        </li>
                    </ul>
                </div>
                <div class="ms-footer_item col-lg col-md-4 col-6">
                    <div class="title text-start ps-3 fw-semibold mb-2">Về chúng tôi</div>
                    <ul class="nav flex-column text-start">
                        <li class="nav-item">
                            Trung tâm hỗ trợ
                        </li>
                        <li class="nav-item">
                            Hoàn tiền
                        </li>
                        <li class="nav-item">
                            Giao hàng
                        </li>
                        <li class="nav-item">
                            Liên hệ
                        </li>
                    </ul>
                </div>
                <div class="ms-footer_item col-lg col-md-4 col-6">
                    <div class="title text-start ps-3 fw-semibold mb-2">Người dùng</div>
                    <ul class="nav flex-column text-start">
                        <li class="nav-item">
                            Đăng nhập
                        </li>
                        <li class="nav-item">
                            Đăng kí
                        </li>
                        <li class="nav-item">
                            Thiết lập
                        </li>
                        <li class="nav-item">
                            Thông tin
                        </li>
                    </ul>
                </div>
                <div class="ms-footer_item col-lg col-md-4 col-6">
                    <div class="title text-start ps-3 fw-semibold mb-2">Tải xuống</div>
                    <ul class="nav flex-column text-start">
                        <li class="nav-item">
                            <div class="download-app_store"></div>
                        </li>
                        <li class="nav-item">
                            <div class="download-google_play"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<style lang="scss" scoped>
    .ms-footer{
        min-height: 256px;
        flex-shrink: 0;
        background: #fff;
        padding: 24px 130px 24px 130px;
        .ms-footer_item{
            .ms-footer_logo-container{
                .logo{
                width: 44px;
                height: 44px;
                background-image: url('@public/assets/icons/logo-symbol.svg');
                background-repeat: no-repeat;
                background-color: transparent;
                }
                .title{
                    width: 77px;
                    height: 21.101px;
                    flex-shrink: 0;
                    background-image: url('@public/assets/icons/Brand.svg');
                    background-repeat: no-repeat;
                    background-color: transparent;
                }
            }

            .nav-item{
                color: #8B96A5;
                padding: 0.5rem 1rem;
                cursor: pointer;
            }

            .nav-item:hover{
                text-decoration: underline;
                color: #127FFF;
            }

            .social-container{
                .icon{
                    width: 32px;
                    height: 32px;
                    flex-shrink: 0;
                    background-repeat: no-repeat;
                    background-color: transparent;
                }
                .facebook{
                    .icon{
                        background-image: url('@public/assets/icons/facebook3.svg'); 
                    }
                }
                .twitter{
                    .icon{
                        background-image: url('@public/assets/icons/twitter3.svg'); 
                    }
                }
                .linkedin{
                    .icon{
                        background-image: url('@public/assets/icons/linkedin3.svg'); 
                    }
                }
                .instagram{
                    .icon{
                        background-image: url('@public/assets/icons/instagram3.svg'); 
                    }
                }
                .youtube{
                    .icon{
                        background-image: url('@public/assets/icons/youtube3.svg'); 
                    }
                }
            }
            .download-app_store{
                width: 124px;
                height: 42px;
                background-repeat: no-repeat;
                background-color: transparent;
                background-image: url('@public/assets/images/download_app_store.svg'); 
            }

            .download-google_play{
                width: 124px;
                height: 42px;
                background-repeat: no-repeat;
                background-color: transparent;
                background-image: url('@public/assets/images/download_google_play.svg'); 
            }
        }
    }
</style>