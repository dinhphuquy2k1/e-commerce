import request from '../api/utils/request'

/**
 * Lấy danh sách bảng kích thước
 * @returns {*}
 */
export function getWareHouse() {
    return request({
        url: 'warehouses',
        method: 'GET',
    })
}
