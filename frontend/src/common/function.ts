export function formatCurrency({value}: { value: bigint }) {
    return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(value);
}
