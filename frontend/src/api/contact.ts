import request from '../api/utils/request';

export function getContact(): Promise<any> {
    return request({
        url: `contacts`,
        method: 'GET',
    }) as Promise<any>;
}
