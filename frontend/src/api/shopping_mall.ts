import request from '../api/utils/request';

export function getConfig(): Promise<any> {
    return request({
        url: 'configs',
        method: 'GET',
    }) as Promise<any>;
}
