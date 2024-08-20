import request from '../api/utils/request'

/**
 * Lấy danh sách menu
 * @param menu_type
 * @returns {*}
 */
export function getMenu(menu_type) {
    return request({
        url: `menus/${menu_type}`,
        method: 'GET',
    })
}
