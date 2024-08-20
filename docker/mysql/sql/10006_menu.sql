SET CHARSET UTF8;

INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(1, 'Trang chủ', 'icon-home_default', 0, '/admin/homepage', null, now(), now());

INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(10, 'Tổng quan', 'icon-challenge_default', 0, null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(11, 'Đơn hàng', null, 0, '/admin/dashboard/order', 10, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(12, 'Sản phẩm', null, 0, '/admin/dashboard/product', 10, now(), now());

INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(20, 'Sản phẩm', 'icon-product_default', 0, null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(21, 'Quản lý sản phẩm', null, 0, '/admin/product/manage', 20, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(22, 'Thêm sản phẩm mới', null, 0, '/admin/product/create', 20, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(23, 'Công cụ hàng loạt', null, 0, '/admin/product/batch', 20, now(), now());

INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(50, 'Đơn hàng', 'icon-order_default', 0, null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(51, 'Quản lý đơn hàng', 'pi pi-envelope', 0, '/admin/order/manage', 50, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(52, 'Quản lý yêu cầu hủy', 'pi pi-envelope', 0, '/admin/order/cancellation', 50, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(53, 'Quản lý đơn hàng hoàn trả', 'pi pi-envelope', 0, '/admin/order/return', 50, now(), now());

INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(100, 'Tài khoản của tôi', 'icon-account_default', 0, null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(101, 'Hồ sơ nguời bán', 'pi pi-envelope', 0, '/admin/profile/seller-profile', 100, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(102, 'Cài đặt tài khoản', 'pi pi-envelope', 0, '/admin/profile/account-setting', 100, now(), now());

INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(150, 'Hộp thư đến', 'icon-account_default', 1, null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(151, 'Chưa đọc', 'pi pi-envelope', 1, '/admin/profile/seller-profile', 150, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(152, 'Chưa trả lời', 'pi pi-envelope', 1, '/admin/profile/account-setting', 150, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(153, 'Sắp hết hạn', 'pi pi-envelope', 1, '/admin/profile/account-setting', 150, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(154, 'Gắn dấu sao', 'pi pi-envelope', 1, '/admin/profile/account-setting', 150, now(), now());

INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(200, 'Chatbot', 'icon-account_default', 1, null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(201, 'Hỗ trợ', 'pi pi-envelope', 1, '/admin/profile/seller-profile', 200, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(202, 'Đề xuất trả lời', 'pi pi-envelope', 1, '/admin/profile/account-setting', 200, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(203, 'Quản lý câu hỏi thường gặp', 'pi pi-envelope', 1, '/admin/profile/account-setting', 200, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(204, 'Lời chào khi trò chuyện', 'pi pi-envelope', 1, '/admin/profile/account-setting', 200, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(205, 'Tự động trả lời đơn hàng', 'pi pi-envelope', 1, '/admin/profile/account-setting', 200, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(206, 'Tin nhắn chủ động', 'pi pi-envelope', 1, '/admin/profile/account-setting', 200, now(), now());

INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(250, 'Cài đặt', 'icon-account_default', 1, null, null, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(251, 'Thông tin cuộc trò chuyện cá nhân', 'pi pi-envelope', 1, '/admin/profile/seller-profile', 250, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(252, 'Cài đặt thông báo', 'pi pi-envelope', 1, '/admin/profile/account-setting', 250, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(253, 'Cài đặt trò chuyện', 'pi pi-envelope', 1, '/admin/profile/account-setting', 250, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(254, 'Câu trả lời đã lưu', 'pi pi-envelope', 1, '/admin/profile/account-setting', 250, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(255, 'Thẻ trò chuyện', 'pi pi-envelope', 1, '/admin/profile/account-setting', 250, now(), now());
INSERT IGNORE INTO menus (id, label, icon, menu_type, route, parent_id, created_at, updated_at) VALUES(256, 'Giờ làm việc', 'pi pi-envelope', 1, '/admin/profile/account-setting', 250, now(), now());
