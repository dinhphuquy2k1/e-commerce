import request from '../api/utils/request';

export function getCategory(): Promise<any> {
    return request({
        url: 'categories',
        method: 'GET',
    }) as Promise<any>;
}
