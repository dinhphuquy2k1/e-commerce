import request from '../api/utils/request';
import {AxiosResponse} from 'axios';

export function getConfig(isUse: any): Promise<any> {
    return request({
        url: `configs?isUse=${isUse}`,
        method: 'GET',
    }) as Promise<any>;
}

/**
 * update config
 * @param data
 */
export function updateConfig(data: {}): Promise<AxiosResponse<any>> {
    return request({
        url: 'shopping/config',
        method: 'POST',
        data: data,
    });
}
