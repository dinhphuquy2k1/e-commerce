import request from '../api/utils/request'

/**
 *
 * @returns {*}
 */
export function getRoles() {
    return request({
        url: 'roles',
        method: 'GET',
    })
}

/**
 *
 * @returns {*}
 */
export function getRoleByType($type) {
    return request({
        url: `roles/${type}`,
        method: 'GET',
    })
}
