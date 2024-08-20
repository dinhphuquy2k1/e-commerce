SET CHARSET UTF8;

INSERT IGNORE INTO shipping_methods (id, shipping_method_name, shipping_method_type, created_at, updated_at) values (1, 'Thanh toán khi nhận hàng', 0,now(), now());
INSERT IGNORE INTO shipping_methods (id, shipping_method_name, shipping_method_type, created_at, updated_at) values (2, 'Thanh toán qua vnpay', 1,now(), now());
INSERT IGNORE INTO shipping_methods (id, shipping_method_name, shipping_method_type, created_at, updated_at) values (3, 'Thanh toán qua ngân hàng', 2,now(), now());
