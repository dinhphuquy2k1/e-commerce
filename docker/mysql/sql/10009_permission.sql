SET CHARSET UTF8;

INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(1, 'Sản phẩm', 0, null,'product', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(2, 'Quản lý sản phẩm', 0, 1, 'product', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(3, 'Quản lý sản phẩm (Xem)', 1, 2, 'product', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(4, 'Quản lý sản phẩm (Xem và chỉnh sửa)', 5, 2,'product', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(5, 'Thêm sản phẩm mới', 0, 1,'product', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(6, 'Thêm sản phẩm mới (Xem)', 6, 5, 'product', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(7, 'Thêm sản phẩm mới (Xem và chỉnh sửa)', 7, 5,'product', now(), now());

INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(100, 'Đơn hàng', 0, null,'order', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(101, 'Quản lý đơn hàng', 0, 100, 'order', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(102, 'Quản lý đơn hàng (Xem)', 1, 101, 'order', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(103, 'Quản lý đơn hàng (Xem và chỉnh sửa)', 5, 101,'order', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(104, 'Quản lý yêu cầu hủy', 0, 100, 'order', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(105, 'Quản lý yêu cầu hủy (Xem)', 1, 104, 'order', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(106, 'Quản lý yêu cầu hủy (Xem và chỉnh sửa)', 5, 104,'order', now(), now());

INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(200, 'Tài khoản của tôi', 0, null, 'user', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(201, 'Hồ sơ người bán', 0, 200, 'user', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(202, 'Hồ sơ người bán (Xem)', 1, 201, 'user', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(203, 'Hồ sơ người bán (Xem và chỉnh sửa)', 5, 201,'user', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(204, 'Cài đặt tài khoản', 0, 200, 'user', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(205, 'Cài đặt tài khoản (Xem)', 1, 204, 'user', now(), now());
INSERT IGNORE INTO permissions (id, permission_name, permission_type, parent_id, model, created_at, updated_at) VALUES(206, 'Cài đặt tài khoản (Xem và chỉnh sửa)', 5, 204,'user', now(), now());
