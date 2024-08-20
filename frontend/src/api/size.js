import request from '../api/utils/request'

/**
 * Lấy danh sách bảng kích thước
 * @returns {*}
 */
export function getSize() {
    return request({
        url: 'sizes',
        method: 'GET',
    })
}

/**
 * Thêm mới bảng kích thước
 * @param data
 * @returns {*}
 */
export function addSize(data) {
    return request({
        url: 'sizes',
        method: 'POST',
        data: data
    })
}
