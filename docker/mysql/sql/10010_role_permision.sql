SET CHARSET UTF8;

-- Quản trị viên chính
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(1, 1, 3, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(2, 1, 4, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(3, 1, 6, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(4, 1, 7, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(5, 1, 102, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(6, 1, 103, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(7, 1, 105, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(8, 1, 106, now(), now());
-- Chuyên gia quản lý sản phẩm
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(100, 2, 3, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(101, 2, 4, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(102, 2, 6, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(103, 2, 7, now(), now());
-- Chuyên gia thực hiện đơn hàng
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(200, 3, 102, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(201, 3, 103, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(202, 3, 105, now(), now());
INSERT IGNORE INTO role_permissions (id, role_id, permission_id, created_at, updated_at) VALUES(203, 3, 106, now(), now());
