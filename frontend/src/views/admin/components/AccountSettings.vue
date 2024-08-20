<template>
  <div class="form-list flex-grow-1 d-flex overflow-auto">
    <div class="d-flex flex-column flex-grow-1">
      <div class="d-flex flex-row title-box">
        <div class="list-title flex-grow-1 text-start">Cài đặt tài khoản</div>
      </div>
      <div class="flex-1">
        <div class=" bg-white rounded-8 px-24 py-32 flex flex-wrap">
          <div class="row g-4">
            <div class="col-lg-6 ms-setting-account_items" v-for="item in settings">
              <router-link :to="item.route" class="d-flex gap-3 align-items-center item">
                <div class="ms-setting-account_items--left">
                  <div class="icon" v-html="item.icon">
                  </div>
                </div>
                <div class="ms-setting-account_items--right d-flex flex-column justify-content-center">
                  <div class="title fs-5">{{ item.title }}</div>
                  <div class="description">
                    {{ item.description }}
                  </div>
                </div>
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  components: {},
  data() {
    return {
      settings: [
        {
          title: 'Quản lý người dùng',
          route: '/admin/profile/account-setting/user-management',
          description: 'Quản lý đặc quyền và quyền truy cập của người dùng trong tài khoản của bạn.',
          icon: '<svg width="40" height="40" viewBox="0 0 40 40" fill="red" xmlns="http://www.w3.org/2000/svg" class="w-40 h-40" style="stroke: none;"><g clip-path="url(#clip0_50_2956)"><path d="M31.11 0H8.89C3.98019 0 0 3.98019 0 8.89V31.11C0 36.0198 3.98019 40 8.89 40H31.11C36.0198 40 40 36.0198 40 31.11V8.89C40 3.98019 36.0198 0 31.11 0Z" fill="#E6F1F1"></path><path d="M20.0045 18.7419C23.2473 18.7419 25.8762 16.1131 25.8762 12.8702C25.8762 9.62738 23.2473 6.99854 20.0045 6.99854C16.7617 6.99854 14.1328 9.62738 14.1328 12.8702C14.1328 16.1131 16.7617 18.7419 20.0045 18.7419Z" fill="#2979ff"></path><path d="M8.25781 27.9688C8.25781 24.2627 11.2622 21.2583 14.9683 21.2583H25.0341C28.7402 21.2583 31.7446 24.2627 31.7446 27.9688V33.0017H8.25781V27.9688Z" fill="#2979ff"></path></g><defs><clipPath id="clip0_50_2956"><rect width="40" height="40" fill="white"></rect></clipPath></defs></svg>',
        },
        {
          title: 'Tài khoản ngân hàng',
          route: '/admin/profile/account-setting/payment',
          description: 'Quản lý tài khoản ngân hàng và phương thức thanh toán.',
          icon: '<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg" class="w-40 h-40" style="stroke: none;"><g clip-path="url(#clip0_50_2968)"><path d="M31.11 0H8.89C3.98019 0 0 3.98019 0 8.89V31.11C0 36.0198 3.98019 40 8.89 40H31.11C36.0198 40 40 36.0198 40 31.11V8.89C40 3.98019 36.0198 0 31.11 0Z" fill="#E6F1F1"></path><path d="M5.5 11C5.5 9.89543 6.39543 9 7.5 9H32.5C33.6046 9 34.5 9.89543 34.5 11V29C34.5 30.1046 33.6046 31 32.5 31H7.5C6.39543 31 5.5 30.1046 5.5 29V11Z" fill="#2979ff"></path><path d="M34.5 14.3105H5.5V17.3105H34.5V14.3105Z" fill="#E6F1F1"></path><path d="M29.8867 24.9922H25.8867V26.9922H29.8867V24.9922Z" fill="#E6F1F1"></path></g><defs><clipPath id="clip0_50_2968"><rect width="40" height="40" fill="white"></rect></clipPath></defs></svg>',
        },
        {
          title: 'Cài đặt kho hàng',
          route: '/admin/profile/account-setting/warehouse',
          description: 'Cấu hình tùy chọn kho, lưu trữ hàng tồn kho và thông tin vận chuyển.',
          icon: '<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg" class="w-40 h-40" style="stroke: none;"><g clip-path="url(#clip0_50_2960)"><path d="M31.11 0H8.89C3.98019 0 0 3.98019 0 8.89V31.11C0 36.0198 3.98019 40 8.89 40H31.11C36.0198 40 40 36.0198 40 31.11V8.89C40 3.98019 36.0198 0 31.11 0Z" fill="#E6F1F1"></path><path d="M6 14.545C6 13.8288 6.38293 13.1673 7.00397 12.8106L19.004 5.91899C19.6207 5.56476 20.3793 5.56477 20.996 5.91899L32.996 12.8106C33.6171 13.1673 34 13.8288 34 14.545V32.347C34 33.4515 33.1046 34.347 32 34.347H8C6.89543 34.347 6 33.4515 6 32.347V14.545Z" fill="#2979ff"></path><path d="M11 19.3467C11 18.7944 11.4477 18.3467 12 18.3467H28C28.5523 18.3467 29 18.7944 29 19.3467V34.3467H11V19.3467Z" fill="#E6F1F1"></path><path d="M13 20.9467C13 20.6153 13.2686 20.3467 13.6 20.3467H26.4C26.7314 20.3467 27 20.6153 27 20.9467V34.3467H13V20.9467Z" fill="#2979ff"></path></g><defs><clipPath id="clip0_50_2960"><rect width="40" height="40" fill="white"></rect></clipPath></defs></svg>',
        },
        {
          title: 'Trung tâm chứng nhận',
          route: '/admin/profile/account-setting/warehouse',
          description: 'Chỉnh sửa, quản lý giấy phép và quản lý thương hiệu.',
          icon: '<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg" class="w-40 h-40" style="stroke: none;"><g clip-path="url(#clip0_50_2989)"><path d="M31.11 0H8.89C3.98019 0 0 3.98019 0 8.89V31.11C0 36.0198 3.98019 40 8.89 40H31.11C36.0198 40 40 36.0198 40 31.11V8.89C40 3.98019 36.0198 0 31.11 0Z" fill="#E6F1F1"></path><path d="M5.5 11C5.5 10.4696 5.71071 9.96086 6.08579 9.58579C6.46086 9.21071 6.96957 9 7.5 9H32.5C33.0304 9 33.5391 9.21071 33.9142 9.58579C34.2893 9.96086 34.5 10.4696 34.5 11V29C34.5 29.5304 34.2893 30.0391 33.9142 30.4142C33.5391 30.7893 33.0304 31 32.5 31H7.5C6.96957 31 6.46086 30.7893 6.08579 30.4142C5.71071 30.0391 5.5 29.5304 5.5 29V11Z" fill="#2979ff"></path><path d="M23 15H31V17H23V15ZM26 22H31V24H26V22Z" fill="#E6F1F1"></path><path d="M15 19C16.6569 19 18 17.6569 18 16C18 14.3431 16.6569 13 15 13C13.3431 13 12 14.3431 12 16C12 17.6569 13.3431 19 15 19Z" fill="#E6F1F1"></path><path d="M13 20C11.9391 20 10.9217 20.4214 10.1716 21.1716C9.42143 21.9217 9 22.9391 9 24V26H11V24C11 23.4696 11.2107 22.9609 11.5858 22.5858C11.9609 22.2107 12.4696 22 13 22H17C17.5304 22 18.0391 22.2107 18.4142 22.5858C18.7893 22.9609 19 23.4696 19 24V26H21V24C21 22.9391 20.5786 21.9217 19.8284 21.1716C19.0783 20.4214 18.0609 20 17 20H13Z" fill="#E6F1F1"></path></g><defs><clipPath id="clip0_50_2989"><rect width="40" height="40" fill="white"></rect></clipPath></defs></svg>',
        },
        {
          title: 'Thuế',
          route: '/admin/profile/account-setting/warehouse',
          description: 'Sắp xếp và cập nhật thông tin thuế của bạn.',
          icon: '<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg" class="w-40 h-40" style="stroke: none;"><g clip-path="url(#clip0_50_2952)"><path d="M31.11 0H8.89C3.98019 0 0 3.98019 0 8.89V31.11C0 36.0198 3.98019 40 8.89 40H31.11C36.0198 40 40 36.0198 40 31.11V8.89C40 3.98019 36.0198 0 31.11 0Z" fill="#E6F1F1"></path><path d="M30.5391 19.2576C29.1947 18.377 27.5871 17.8649 25.8599 17.8649C21.1375 17.8649 17.3092 21.6932 17.3092 26.4157C17.3092 29.438 18.8772 32.0942 21.2442 33.6149H10.4372C9.28535 33.6149 8.35156 32.6811 8.35156 31.5292V13.2844C8.35156 12.7232 8.57281 12.1846 8.96733 11.7855L13.68 7.01799C14.0805 6.6128 14.6266 6.38477 15.1963 6.38477H28.4534C29.6053 6.38477 30.5391 7.31855 30.5391 8.47044V19.2576Z" fill="#2979ff"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M26.1016 33.416C29.9676 33.416 33.1016 30.282 33.1016 26.416C33.1016 22.55 29.9676 19.416 26.1016 19.416C22.2356 19.416 19.1016 22.55 19.1016 26.416C19.1016 30.282 22.2356 33.416 26.1016 33.416ZM23 24.6C23 24.6684 23.0063 24.7354 23.0182 24.8004C23.1124 25.3122 23.5609 25.7 24.1 25.7C24.6553 25.7 25.1146 25.2885 25.1893 24.7537C25.1964 24.7035 25.2 24.6522 25.2 24.6C25.2 23.9925 24.7075 23.5 24.1 23.5C23.4925 23.5 23 23.9925 23 24.6ZM28.809 23.7027C29.2004 24.0942 29.2004 24.7288 28.809 25.1202L24.7999 29.1293C24.4084 29.5207 23.7738 29.5207 23.3824 29.1293C22.991 28.7379 22.991 28.1032 23.3824 27.7118L27.3915 23.7027C27.7829 23.3113 28.4175 23.3113 28.809 23.7027ZM28.1 29.7C28.7075 29.7 29.2 29.2075 29.2 28.6C29.2 27.9925 28.7075 27.5 28.1 27.5C27.4925 27.5 27 27.9925 27 28.6C27 29.2075 27.4925 29.7 28.1 29.7Z" fill="#2979ff"></path></g><defs><clipPath id="clip0_50_2952"><rect width="40" height="40" fill="white"></rect></clipPath></defs></svg>',
        },
        {
          title: 'Chế độ không hoạt động',
          route: '/admin/profile/account-setting/warehouse',
          description: 'Tạm dừng tài khoản hoặc danh sách cá nhân của bạn khi bạn vắng mặt.',
          icon: '<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg" class="w-40 h-40" style="stroke: none;"><g clip-path="url(#clip0_50_2984)"><path d="M31.11 0H8.89C3.98019 0 0 3.98019 0 8.89V31.11C0 36.0198 3.98019 40 8.89 40H31.11C36.0198 40 40 36.0198 40 31.11V8.89C40 3.98019 36.0198 0 31.11 0Z" fill="#E6F1F1"></path><path d="M10.4567 7C9.99306 7 9.46563 7.47323 9.3462 7.66206C8.5 9 7.47225 11.0288 7.32909 11.3932L7.22207 11.6951C7.07769 12.1504 7 12.634 7 13.135C7 15.8462 9.27444 18.044 12.0801 18.044C13.8302 18.044 15.3735 17.1889 16.2871 15.8875C17.2008 17.1889 18.7441 18.044 20.4942 18.044C22.2467 18.044 23.792 17.1865 24.7051 15.8819C25.6182 17.1865 27.1635 18.044 28.916 18.044C31.7217 18.044 33.9962 15.8462 33.9962 13.135C33.9962 12.634 33.9185 12.1504 33.7741 11.6951H33.8365L33.6504 11.3513C33.5145 11.0148 33.3413 10.6963 33.1357 10.4006L31.6527 7.66139C31.4321 7.25388 31.0059 7 30.5425 7H10.4567Z" fill="#2979ff"></path><path d="M8.5 18C9.43747 18.9517 10.7381 19.5412 12.1757 19.5412C13.8716 19.5412 15.2567 18.9777 16.2 17.7101C17.1434 18.9777 18.7688 19.5412 20.4647 19.5412C22.2526 19.5412 23.7709 18.8863 24.7 17.5C25.6291 18.8863 27.2628 19.5412 29.0507 19.5412C30.3759 19.5412 31.5847 19.0402 32.5 18.2164V22.3973C31.1859 21.4727 29.5838 20.9298 27.8549 20.9298C23.3916 20.9298 19.7734 24.548 19.7734 29.0113C19.7734 30.3376 20.093 31.5893 20.6592 32.6936H9.84798C9.10351 32.6936 8.5 32.0901 8.5 31.3457V18Z" fill="#2979ff"></path><g clip-path="url(#clip1_50_2984)"><path fill-rule="evenodd" clip-rule="evenodd" d="M27.9992 35.4183C31.5438 35.4183 34.4173 32.5448 34.4173 29.0002C34.4173 25.4555 31.5438 22.582 27.9992 22.582C24.4545 22.582 21.5811 25.4555 21.5811 29.0002C21.5811 32.5448 24.4545 35.4183 27.9992 35.4183ZM27.2618 25.8525V29.0685C27.2618 29.2732 27.3642 29.4645 27.5346 29.5781L30.3234 31.4373C30.4039 31.4909 30.5125 31.4692 30.5661 31.3888L31.0515 30.6607C31.1051 30.5803 31.0834 30.4717 31.0029 30.4181L28.4868 28.7407V25.8525C28.4868 25.7559 28.4085 25.6775 28.3118 25.6775H27.4368C27.3402 25.6775 27.2618 25.7559 27.2618 25.8525Z" fill="#2979ff"></path></g></g><defs><clipPath id="clip0_50_2984"><rect width="40" height="40" fill="white"></rect></clipPath><clipPath id="clip1_50_2984"><rect width="14" height="14" fill="white" transform="translate(21 22)"></rect></clipPath></defs></svg>',
        },
        {
          title: 'Chế độ ủy quyền',
          route: '/admin/profile/account-setting/warehouse',
          description: 'Tạm cấp cho người dùng đã được phê duyệt quyền truy cập vào tài khoản của bạn.',
          icon: '<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg" class="w-40 h-40" style="stroke: none;"><g clip-path="url(#clip0_50_2979)"><path d="M31.11 0H8.89C3.98019 0 0 3.98019 0 8.89V31.11C0 36.0198 3.98019 40 8.89 40H31.11C36.0198 40 40 36.0198 40 31.11V8.89C40 3.98019 36.0198 0 31.11 0Z" fill="#E6F1F1"></path><path d="M17.942 18.7419C21.1848 18.7419 23.8137 16.1131 23.8137 12.8702C23.8137 9.62738 21.1848 6.99854 17.942 6.99854C14.6992 6.99854 12.0703 9.62738 12.0703 12.8702C12.0703 16.1131 14.6992 18.7419 17.942 18.7419Z" fill="#2979ff"></path><path d="M20.2644 21.2583H12.9058C9.19971 21.2583 6.19531 24.2627 6.19531 27.9688V33.0017H20.4885C19.0625 31.4092 18.1953 29.3059 18.1953 27C18.1953 24.8175 18.9722 22.8165 20.2644 21.2583Z" fill="#2979ff"></path><circle cx="27" cy="27" r="6.5625" fill="#2979ff"></circle><path fill-rule="evenodd" clip-rule="evenodd" d="M24.2636 26.4642C24.3924 26.3353 24.6014 26.3353 24.7303 26.4642L26.2574 27.9913L29.3849 24.8638C29.5138 24.7349 29.7227 24.7349 29.8516 24.8638L30.2666 25.2788C30.3954 25.4077 30.3954 25.6166 30.2666 25.7455L26.4907 29.5213C26.3618 29.6502 26.1529 29.6502 26.024 29.5213L23.8486 27.3459C23.7197 27.217 23.7197 27.0081 23.8486 26.8792L24.2636 26.4642Z" fill="white"></path></g><defs><clipPath id="clip0_50_2979"><rect width="40" height="40" fill="white"></rect></clipPath></defs></svg>',
        },
        {
          title: 'Tùy chọn giao tiếp',
          route: '/admin/profile/account-setting/warehouse',
          description: 'Chọn cài đặt email và tùy chọn thông báo của bạn.',
          icon: '<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg" class="w-40 h-40" style="stroke: none;"><g clip-path="url(#clip0_50_2965)"><path d="M31.11 0H8.89C3.98019 0 0 3.98019 0 8.89V31.11C0 36.0198 3.98019 40 8.89 40H31.11C36.0198 40 40 36.0198 40 31.11V8.89C40 3.98019 36.0198 0 31.11 0Z" fill="#E6F1F1"></path><path d="M32.2083 9L22.2795 18.9288C21.0197 20.1886 18.9771 20.1886 17.7173 18.9288L7.7885 9H32.2083ZM34.157 9.87967C34.3735 10.1993 34.5 10.5849 34.5 11V29C34.5 30.1046 33.6046 31 32.5 31H7.5C6.39543 31 5.5 30.1046 5.5 29V11C5.5 10.5857 5.62597 10.2008 5.84168 9.88161L16.3031 20.343C18.3439 22.3839 21.6528 22.3839 23.6937 20.343L34.157 9.87967Z" fill="#2979ff"></path></g><defs><clipPath id="clip0_50_2965"><rect width="40" height="40" fill="white"></rect></clipPath></defs></svg>',
        },
      ],
    }
  }
}
</script>

<style lang="scss">
.ms-setting-account_items {
  .item {
    padding: 16px 20px;
    border: 1px solid #e0e0e0;
    border-radius: 4px;
    cursor: pointer;
    height: 100px;

    .title{
      display: -webkit-box;
      -webkit-box-orient: vertical;
      overflow: hidden;
      text-overflow: ellipsis;
      -webkit-line-clamp: 1;
    }
    .description {
      display: -webkit-box;
      -webkit-box-orient: vertical;
      overflow: hidden;
      text-overflow: ellipsis;
      -webkit-line-clamp: 2;
      color: rgba(0, 0, 0, .55);
    }
  }
}
</style>
