import request from '../api/utils/request';
import { AxiosResponse } from 'axios';

export function getCategory(): Promise<any> {
    return request({
        url: 'categories',
        method: 'GET',
    }) as Promise<any>;
}
