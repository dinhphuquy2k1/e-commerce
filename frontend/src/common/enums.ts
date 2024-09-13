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

};

export const TIMEOUT = {
    LOADING: 750,
}