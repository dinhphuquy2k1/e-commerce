SET CHARSET UTF8;

INSERT IGNORE INTO roles (id, role_name, description, created_at, updated_at) VALUES(1, 'Quản trị viên chính', 'Quản trị viên chính có thể làm bất cứ điều gì ngoại trừ quản lý tài khoản phụ và thông tin cửa hàng nhạy cảm. Quản trị viên chính có thể chỉnh sửa và xem bất kỳ mô-đun nào, chẳng hạn như sản phẩm, đơn hàng, tài chính và tiếp thị.', now(), now());
INSERT IGNORE INTO roles (id, role_name, description, created_at, updated_at) VALUES(2, 'Chuyên gia quản lý sản phẩm', 'Chuyên gia sản phẩm chủ yếu có quyền truy cập vào các trang quản lý và niêm yết sản phẩm, đồng thời có thể kích hoạt, quản lý và hủy niêm yết sản phẩm.', now(), now());
INSERT IGNORE INTO roles (id, role_name, description ,created_at, updated_at) VALUES(3, 'Chuyên gia thực hiện đơn hàng', 'Chuyên gia đơn hàng chủ yếu có quyền truy cập vào trang quản lý đơn hàng và có thể sắp xếp giao hàng, kiểm tra logistics, xử lý các đơn trả hàng và hoàn tiền.', now(), now());
