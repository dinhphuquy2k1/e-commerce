SET CHARSET UTF8;

INSERT IGNORE INTO ware_houses (id, warehouse_name, warehouse_type, created_at, updated_at) VALUES(1, 'Kho lấy hàng', 0, now(), now());
INSERT IGNORE INTO ware_houses (id, warehouse_name, warehouse_type, created_at, updated_at) VALUES(2, 'Kho trả hàng', 1, now(), now());