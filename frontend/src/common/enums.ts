// enums.js
export const FORM_MODE = {
    NONE: 0,
    INSERT: 1,
    UPDATE: 2,
    DELETE: 3,
    DUPLICATE: 4
};

export const KEY_CODE = {
    ENTER: 13,
    COMMA: 188,
    BACK_SPACE: 8,
    TAB: 9,
    SHIFT: 16,
    CTRL: 17,
    ESC: 27,
    ALT: 18,
    ARROW_DOWN: 40,
    ARROW_UP: 38
};

export const FILE_TYPE = {
    XLSX: 0,
    ZIP: 1,
    LIST: 2, // file danh sách
    EXAM: 3, // file bài thi
};

export const RESPONSE_STATUS = {
    HTTP_OK: 200,
    HTTP_UNAUTHORIZED: 401,
    HTTP_UNPROCESSABLE_ENTITY: 422,
    HTTP_METHOD_NOT_ALLOWED: 405,
    HTTP_INTERNAL_SERVER_ERROR: 500,
};

export const MESSAGE = {
    HTTP_INSERT_OK: 'Thêm mới thành công',
    HTTP_UPDATE_OK: 'Cập nhật thành công',
    HTTP_DELETE_OK: 'Xóa thành công',
    INPUT_PROPERTY_PLACEHOLDER: 'Nhập một giá trị tùy chỉnh',
    SELECT_PROPERTY_PLACEHOLDER: 'Chọn một giá trị được đề xuất',
    INVALID_OPTION_SELECT: 'Vui lòng không nhập các giá trị trùng lặp.',
    INVALID_EXITS_VARIANT: 'Tùy chọn đã tồn tại',
    PLEASE_ENTER: 'Vui lòng nhập',
    PLEASE_CHOOSE: 'Vui lòng chọn',
    EMPTY_DROPDOWN: 'Không có lựa chọn nào',
    PLEASE_FILL_IN_THIS_FIELD: 'Vui lòng điền vào trường này',
    PLEASE_CHOOSE_ONE_OPTION: 'Vui lòng chọn một tùy chọn',
    PLEASE_UPLOAD_ONE_IMAGE: 'Vui lòng tải lên ít nhất một hình ảnh để đặt làm hình ảnh sản phẩm',
    SELECT_SIZE_CHART_TEMPLATE: 'Chọn mẫu biểu đồ kích cỡ',
    ENTER: 'Nhập',
    INVALID_EMPTY_VARIANT: 'Vui lòng nhập một tùy chọn',
    INPUT_PLACEHOLDER_VARIANT: 'Nhập một biến thể',
    INVALID_EXITS_VARIANT_NAME: 'Biến thể đã được tạo. Vui lòng chọn một biến thể khác.',
    INVALID_EMPTY_VARIANT_NAME: 'Vui lòng nhập một biến thể',
    SKU_SELLER: 'SKU Người bán',
    BATCH_EDITING: 'Chỉnh sửa hàng loạt',
    ADD_PRODUCT_IMAGE: 'Thêm hình ảnh sản phẩm',
    USER_ADDED: 'Người dùng đã thêm',
    ROLE_ADDED: 'Đã thêm vai trò',
    ROLES: 'Các vài trò',
    ENTER_YOUR_EMAIL_ADDRESS: 'Nhập địa chỉ email',
    ACT: 'Hành động',
    USER_EMAIL: 'Email người dùng',
    ROLE_NAME: 'Tên vai trò',
    DESCRIPTION: 'Mô tả',
    TYPE: 'Loại',
    PERMISSION: 'Quyền',
    ADD_USERS: 'Thêm người dùng',
    SEND: 'Gửi',
    ADD_NEW_ROLES: 'Thêm vai trò mới',
    PLEASE_ENTER_A_ROLE_NAME: 'Vui lòng nhập tên vai trò',
    ROLE_DESCRIPTION: 'Mô tả vai trò',
    PLEASE_DESCRIBE_THE_ROLE: 'Vui lòng mô tả vai trò',
    SET_PERMISSIONS: 'Thiết lập quyền',
    SELECT_PERMISSION_WANT_GRANT: 'Chọn các quyền bạn muốn cấp',
    ACCOUNT_INFORMATION: 'Thông tin tài khoản',
    SELLER_INFORMATION: 'Thông tin người bán',
    BUSINESS_INFORMATION: 'Thông tin doanh nghiệp',
    LOGIN_INFORMATION: 'Thông tin đăng nhập',
    CHANGE: 'Thay đổi',
    ACCOUNT_SECURITY: 'Bảo mật tài khoản',
    BATCH_TOOLS: 'Công cụ hàng loạt',
    MASS_LISTING: 'Niêm yết hàng loạt',
    PLEASE_SELECT_BRAND: 'Vui lòng chọn nhãn hiệu',
    DOWNLOAD_THE_TEMPLATE: 'Tải mẫu về',
    SIZE_IMAGE: 'Tải lên hình ảnh về bảng kích thước có số đo chi tiết',
    MINIMUM_PRICE: 'Giá tối thiểu',
    MAXIMUM_PRICE: 'Giá tối đa',
    PRICE: 'Giá',
    CANCEL: 'Hủy',
    APPLY: 'Áp dụng',
    CATEGORY: 'Danh mục',
    INVENTORY_STATUS: 'Trạng thái hàng tồn kho',
    TRANSFER_OPTION: 'Tùy chọn vận chuyển'
};

export const TIMEOUT = {
    LOADING: 750,
}