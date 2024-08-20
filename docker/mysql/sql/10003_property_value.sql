SET CHARSET UTF8;

-- Loại bảo hành
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1, 'Bảo hành của nhà cung cấp', 2, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2, 'Bảo hành của nhà sản xuất', 2, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3, 'Bảo hành quốc tế', 2, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4, 'Không bảo hành', 2, now(), now());
-- Thương hiệu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(100, 'ASUS', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(101, 'Google', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(102, 'HTC', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(103, 'LG', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(104, 'Nokia', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(105, 'OPPO', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(106, 'Samsung', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(107, 'Sắc nhọn', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(108, 'Sony', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(109, 'Đường', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(110, 'Vivo', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(111, 'Xiaomi', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(112, 'Meitu', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(113, 'Huawei', 3, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(114, 'Táo', 3, now(), now());
-- Chất liệu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(200, 'Nhôm', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(201, 'Sợi các-bon', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(202, 'Vải', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(203, 'Da', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(204, 'Kim loại', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(205, 'Cao su tổng hợp', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(206, 'Nhựa', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(207, 'Polycarbonate', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(208, 'Silicon', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(209, 'TPU', 4, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(210, 'Gỗ', 4, now(), now());
-- Loại hộp đựng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(300, 'Tùy chỉnh', 5, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(301, 'Lật', 5, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(302, 'Da', 5, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(303, 'Thạch anh trong suốt', 5, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(304, 'Chống thấm nước', 5, now(), now());
-- Loại da
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(400, 'Da bò', 6, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(401, 'Da cừu', 6, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(402, 'Không có', 6, now(), now());
-- Chất liệu dây đeo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(500, 'Silicone', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(501, 'Da', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(502, 'Nhựa nhân tạo tổng hợp', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(503, 'Nylon', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(504, 'Nhựa', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(505, 'Cao su', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(506, 'Thép không gỉ', 7, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(507, 'Không có', 7, now(), now());
-- Dung lượng Powerbank
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(600, '<5000mAh', 9, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(601, '5000-10000mAh', 9, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(602, '10001-20000mAh', 9, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(603, '>20000mAh', 9, now(), now());
-- Số cổng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(700, '1', 10, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(701, '2', 10, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(702, '3', 10, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(703, '4', 10, now(), now());
-- Cổng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(800, 'HDMI', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(801, 'Micro HDMI', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(802, 'MicroSD Card', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(803, 'Màn hình nhỏ', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(804, 'Mini HDMI', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(805, 'NVME', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(806, 'PCI-e', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(807, 'SATA III', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(808, 'SD Card', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(809, 'Thunderbolt', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(810, 'Thunderbolt 2', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(811, 'Thunderbolt 3', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(812, 'USB 2.0', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(813, 'USB 3.0', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(814, 'USB 3.1', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(815, 'USB Type-C', 11, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(816, 'VGA', 11, now(), now());
-- Các tính năng của Powerbank
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(900, 'Vỏ điện thoại Tích hợp', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(901, 'Bộ sạc Tường Tích hợp', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(902, 'Sạc Đa Thiết bị', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(903, 'Sạc nhanh 2.0', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(904, 'Sạc nhanh 3.0', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(905, 'Năng lượng mặt trời', 12, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(906, 'Sạc không dây', 12, now(), now());
-- Sạc nhanh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1000, 'Có', 14, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1001, 'Không', 14, now(), now());
-- Loại phích cắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1100, 'Không dây', 16, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1101, 'Loại Anh', 16, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1102, 'Loại IDO', 16, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1103, 'Loại EU', 16, now(), now());
-- Độ phân giải
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1200, '4K UHD', 19, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1201, '8K UHD', 19, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1202, 'Full HD', 19, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1203, 'HD', 19, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1204, 'SD', 19, now(), now());
-- Dung lượng lưu trữ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1300, '1GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1301, '2GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1302, '3GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1303, '5GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1304, '10GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1305, '32GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1306, '64GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1307, '128GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1308, '256GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1309, '500GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1310, '512GB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1311, '1TB', 20, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1312, '2TB', 20, now(), now());
-- Hệ điều hành được Hỗ trợ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1400, 'Android', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1401, 'BlackBerry', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1402, 'Chrome OS', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1403, 'iOS', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1404, 'Linux', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1405, 'Mac OS X', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1406, 'Nokia Asha', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1407, 'Symbian', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1408, 'Phổ cập', 21, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1409, 'Cửa sổ', 21, now(), now());
-- Loại cáp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1500, 'Type C', 22, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1501, 'Micro USB', 22, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1502, 'Lightning', 22, now(), now());
-- Thời hạn bảo hành
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1600, '1 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1601, '2 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1602, '3 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1603, '6 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1604, '12 tháng', 23, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1605, '24 tháng', 23, now(), now());
-- Bó
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1700, 'Có', 24, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1701, 'Không', 24, now(), now());
-- Có pin
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1800, 'Có', 26, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1801, 'Không', 26, now(), now());
-- Có Maganet
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1900, 'Có', 28, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(1901, 'Không', 28, now(), now());
-- Tình trạng sản phẩm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2000, 'Mới', 29, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2001, 'Đã dùng', 29, now(), now());
-- Pin tích hợp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2100, 'Có', 30, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2101, 'Không', 30, now(), now());
-- Không thấm nước
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2200, 'Có', 36, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2201, 'Không', 36, now(), now());
-- Loại pin
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2300, '23A', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2301, 'AA', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2302, 'AAA', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2303, 'AG', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2304, 'LR', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2305, 'SR Series', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2306, 'C', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2307, 'Dòng CR', 39, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2309, 'D', 39, now(), now());
-- Thu phóng Kỹ thuật số
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2400, '3x', 40, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2401, '4x', 40, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2402, '10x', 40, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2403, '12x', 40, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2404, '30x', 40, now(), now());
-- Tỷ lệ Khung
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2500, '24fps', 41, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2501, '30fps', 41, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2502, '60fps', 41, now(), now());
-- Khẩu độ Tối đa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2600, '11f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2601, '13f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2602, '16f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2603, '22f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2604, '29f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2605, '32f/', 42, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2606, '45f/', 42, now(), now());
-- Loại Thẻ nhớ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2700, 'Đèn flash Nhỏ gọn', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2701, 'Eye fi', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2702, 'Thẻ nhớ', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2703, 'Thẻ nhớ Memory Stick Duo', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2704, 'Micro SD', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2705, 'Micro SDHC', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2706, 'MMC', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2707, 'SD', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2708, 'SDHC', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2709, 'SDXC', 43, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2710, 'XQD', 43, now(), now());
-- Khẩu độ Tối thiểu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2800, '1f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2801, '1.2f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2802, '1.4f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2803, '1.7f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2804, '1.8f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2805, '2f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2806, '2.8f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2807, '3.5f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2808, '4f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2809, '4.5f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2810, '5.6f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2811, '6.3f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2812, '8f/', 44, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2813, '9f/', 44, now(), now());
-- Zoom Quang học
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2900, '3x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2901, '4x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2902, '8x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2903, '12x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2904, '25x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2905, '40x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2906, '42x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2907, '60x', 45, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(2908, '125x', 45, now(), now());
-- Chụp video Nghị quyết
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3000, '360p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3001, '480p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3002, '720p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3003, '960p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3004, '1080p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3005, '1440p', 46, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3006, '4K', 46, now(), now());
-- Ống ngắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3100, 'Điện tử', 47, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3101, 'Không có ống ngắm', 47, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3102, 'Quang học', 47, now(), now());
-- Loại Ống kính Camera
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3200, 'Chính', 48, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3201, 'Mắt cá', 48, now(), now());
-- Dành cho Trò chơi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3300, 'Có', 50, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3301, 'Không', 50, now(), now());
-- Loại kết nối
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3400, 'Không dây', 51, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3401, 'Có dây', 51, now(), now());
-- Dành cho Thể thao
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3500, 'Không dây', 52, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3501, 'Có dây', 52, now(), now());
-- Khả năng tương thích Âm thanh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3600, 'Camera', 53, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3601, 'Di động', 53, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3602, 'Phương tiện giao thông', 53, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3603, 'PC & Máy tính xách tay', 53, now(), now());
-- Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3700, 'Dây dẫn qua xương', 54, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3701, 'Trong tai', 54, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3702, 'Mono', 54, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3703, 'Trên tai', 54, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3704, 'Qua tai', 54, now(), now());
-- Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3800, 'Micro Tích hợp sẵn', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3801, 'Khử tiếng ồn', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3802, 'Cách ly tiếng ồn', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3803, 'Điều khiển từ xa', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3804, 'Chống Mồ hôi', 55, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3805, 'Kiểm soát Âm lượng', 55, now(), now());
-- Loại Phụ kiện Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3900, 'Bộ sắp xếp Dây cáp', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3901, 'Vỏ', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3902, 'Tai nghe úp tai', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3903, 'Bộ khuếch đại Tai nghe', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3904, 'Tai nghe nút tai Thay thế', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3905, 'Cáp Âm thanh nổi', 56, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(3906, 'Bộ tách Âm thanh nổi', 56, now(), now());
-- Loại Kết nối Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4000, 'Đầu vào Phụ trợ', 57, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4001, 'Giắc cắm Tai nghe', 57, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4002, 'Bluetooth', 57, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4003, 'NFC Được kích hoạt', 57, now(), now());
-- Phản hồi Tần số Tối đa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4100, '20000Hz', 58, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4101, '45000Hz', 58, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4102, '50000Hz', 58, now(), now());
-- Phản hồi Tần số Tối thiểu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4200, '45Hz', 59, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4201, '50Hz', 59, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4202, '90Hz', 59, now(), now());
-- Đánh giá Độ nhạy
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4300, '86dB', 60, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4301, '88dB', 60, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4302, '90dB', 60, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4303, '92dB', 60, now(), now());
-- Loa Thông minh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4400, 'Có', 61, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4401, 'Không', 61, now(), now());
-- Bluetooth
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4500, 'Có', 62, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4501, 'Không', 62, now(), now());
-- Loại âm li
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4600, 'Dành cho Sân khấu', 63, now(), now());
-- Bộ cắt Âm thanh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4700, '2 Đường', 64, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4701, '3 Đường', 64, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4702, '4 Đường', 64, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4703, 'Toàn phạm vi', 64, now(), now());
-- Đầu vào
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4800, 'Đầu vào Phụ trợ', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4801, 'HDMI', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4802, 'HDMI ARC', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4803, 'NFC Được kích hoạt', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4804, 'Quang học', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4805, 'RCA', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4806, 'Âm thanh nổi', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4807, 'USB', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4808, 'VGA', 65, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4809, 'Wi-Fi', 65, now(), now());
-- Phạm vi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4900, '3KM', 66, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4901, '5KM', 66, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4902, '8KM', 66, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4903, '10KM', 66, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(4904, '20KM', 66, now(), now());
-- Số kênh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5000, '3', 67, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5001, '5', 67, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5002, '7', 67, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5003, '9', 67, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5004, '10', 67, now(), now());
-- Kết nối Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5100, 'UHF (Không dây)', 68, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5101, 'VHF (Không dây)', 68, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5102, 'Có dây', 68, now(), now());
-- Loại Phụ kiện Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5200, 'Dây cáp', 69, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5201, 'Nắp', 69, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5202, 'Bộ giữ', 69, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5203, 'Giá đỡ', 69, now(), now());
-- Loại Tai nghe
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5300, 'Tai nghe Dạng tụ', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5301, 'Tai nghe Cổ ngỗng', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5302, 'Tai nghe Cầm tay', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5303, 'Tai nghe Trùm đầu', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5304, 'Tai nghe Nhạc cụ', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5305, 'Tai nghe Ve áo', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5306, 'Tai nghe Ruy băng', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5307, 'Tai nghe USB', 70, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5308, 'Tai nghe giọng hát', 70, now(), now());
-- Độ sáng Máy chiếu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5400, '450Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5401, '800Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5402, '1100Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5403, '1600Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5404, '2600Lumens', 72, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5405, '5800Lumens', 72, now(), now());
-- Tỷ lệ Tương phản
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5500, '10000:1', 73, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5501, '20000:1', 73, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5502, '30000:1', 73, now(), now());
-- Các tính năng của Máy chiếu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5600, 'Âm thanh Tích hợp', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5601, 'DLP', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5602, 'LCD echnology', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5603, 'Khoảng cách Phóng hình Dài', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5604, 'Cầm tay', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5605, 'Khoảng cách Phóng hình Ngắn', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5606, 'Khoảng cách Phóng hình Siêu ngắn', 74, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5607, 'Không dây', 74, now(), now());
-- Loại Máy chiếu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5700, 'Sử dụng cho Doanh nghiệp', 75, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5701, 'Sử dụng cho Nhà riêng', 75, now(), now());
-- Loại Bảng điều khiển Trò chơi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5800, 'Playstation', 76, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5801, 'Công tắc', 76, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5802, 'Xbox', 76, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5803, 'Will', 76, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5804, 'Gameboy', 76, now(), now());
-- Kết nối
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5900, 'Bluetooth', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5901, 'HDMI', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5902, 'Micro USB', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5903, 'Mini USB', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5904, 'PCIe NVMe', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5905, 'TYPE-C', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5906, 'USB', 77, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(5907, 'VGA', 77, now(), now());
-- Khả năng tương thích Nền tảng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6000, 'Vòng cổ', 78, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6001, 'Cổ tay', 78, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6002, 'Ban nhạc', 78, now(), now());
-- Độ phân giải Camera Chính
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6100, '3MP', 82, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6101, '5MP', 82, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6102, '8MP', 82, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6103, '12MP', 82, now(), now());
-- Chất liệu dây đeo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6200, 'Silicone', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6201, 'Da', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6202, 'Nhựa nhân tạo tổng hợp', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6203, 'Nylon', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6204, 'Nhựa', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6205, 'Cao su', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6206, 'Thép không gỉ', 83, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6207, 'Không có', 83, now(), now());
-- Xem Kết nối
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6300, 'Bluetooth', 84, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6301, 'Dữ liệu di động', 84, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6302, 'GPS', 84, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6303, 'Wi-Fi', 84, now(), now());
-- Tính năng Đồng hồ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6400, 'Trình theo dõi Calo', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6401, 'Camera', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6402, 'Màn hình Đồng hồ', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6403, 'Trình theo dõi Khoảng cách', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6404, 'GPS', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6405, 'Theo dõi Nhịp tim', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6406, 'Máy nghe nhạc', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6407, 'Thông báo', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6408, 'Thanh toán', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6409, 'Máy đếm bước chân', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6410, 'Cuộc gọi điện thoại', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6411, 'Trình theo dõi giấc ngủ', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6412, 'Tin nhắn', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6413, 'Điều khiển giọng nói', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6414, 'Ghi âm giọng nói', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6415, 'Không thấm nước', 145, now(), now());
-- RAM
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6500, '4G', 86, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6501, '6G', 86, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6502, '8G', 86, now(), now());
-- NFC
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6600, 'Có', 88, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6601, 'Không', 88, now(), now());
-- Màu sắc
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6700, 'Màu đen', 89, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6701, 'Màu trắng', 89, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6702, 'Màu đỏ', 89, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6703, 'Màu vàng', 89, now(), now());
-- Số lượng Khe cắm Thẻ SIM
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6800, '1', 90, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6801, '2', 90, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6802, '3', 90, now(), now());
-- Loại Điện thoại
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6900, 'Điện thoại phổ thông', 91, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(6901, 'Điện thoại thông minh', 91, now(), now());
-- Vi xử lý
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7000, 'Apple 13 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7001, 'Snapdragon 865 Plus', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7002, 'Snapdragon 865', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7003, 'Exynos 990', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7004, 'Exynos 7885', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7005, 'Dimensity 1000+', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7006, 'Snapdragon 855', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7007, 'Snapdragon 855 Plus', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7008, 'Apple A12 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7009, 'Apple A14 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7010, 'Apple A4', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7011, 'Apple A6', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7012, 'Apple A16 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7013, 'Apple A13 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7014, 'Apple A5', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7015, 'Apple A15 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7016, 'Apple A9', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7017, 'Apple A8', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7018, 'Apple A10 Fusion', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7019, 'Apple A11 Bionic', 93, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7020, 'Apple A7', 93, now(), now());
-- Số lõi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7100, 'Đơn', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7101, 'Bốn lõi', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7102, 'Sáu lõi', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7103, 'Tám lõi', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7104, 'Dual-core', 94, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7105, 'Deca-core', 94, now(), now());
-- Loại SIM
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7200, 'Vi mô', 95, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7201, 'Nano', 95, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7202, 'Tiêu chuẩn', 95, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7203, 'Mini', 95, now(), now());
-- Giắc cắm 3,5 mm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7300, 'Có', 96, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7301, 'Không', 96, now(), now());
-- Ổ đĩa quang
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7400, 'Có', 100, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7401, 'Không', 100, now(), now());
-- Loại bảo quản
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7500, 'SSHD', 101, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7501, 'SSD+HDD', 101, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7502, 'SSD', 101, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7503, 'HDD', 101, now(), now());
-- Nhà sản xuất Chipset Đồ họa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7600, 'AMD', 103, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7601, 'Integrated', 103, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7602, 'Nvidia', 103, now(), now());
-- Kích thước Màn hình Máy tính xách tay
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7700, '<13inches', 104, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7701, '13inches', 104, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7702, '14inches', 104, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7703, '15inches', 104, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7704, '>15inches', 104, now(), now());
-- Loại máy tính xách tay
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7800, '2 trong 1', 105, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7801, 'Trò chơi', 105, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7802, 'Ultrabook', 105, now(), now());
-- Hệ điều hành
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7900, 'Cửa sổ', 106, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7901, 'Linux', 106, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7902, 'Android', 106, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7903, 'Chrome OS', 106, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(7904, 'Mac OS', 106, now(), now());
-- Loại bảng LED
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8000, 'AH-IPS', 107, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8001, 'IPS', 107, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8002, 'TFT', 107, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8003, 'TN', 107, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8004, 'VA', 107, now(), now());
-- Kích thước Màn hình Điều khiển
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8100, '<20inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8101, '20-22inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8102, '23-25inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8103, '26-28inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8104, '29-32inches', 108, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8105, '>32inches', 108, now(), now());
-- Cổng Giám sát
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8200, 'DP', 110, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8201, 'HDMI', 110, now(), now());
-- Điện áp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8300, 'Có', 111, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8301, 'Không', 111, now(), now());
-- DDR
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8400, 'DDR', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8401, 'DDR2', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8402, 'DDR3', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8403, 'DDR4', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8404, 'DDR5', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8405, 'DDR6', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8406, 'DDR3L', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8407, 'LPDDR4', 112, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8408, 'LPDDR4X', 112, now(), now());
-- Số lượng Lõi CPU
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8500, 'Đơn', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8501, 'Bốn lõi', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8502, 'Sáu lõi', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8503, 'Tám lõi', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8504, 'Dual-core', 113, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8505, 'Deca-core', 113, now(), now());
-- Chipset CPU
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8600, 'Intel i3', 114, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8601, 'Intel i5', 114, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8602, 'Intel i7', 114, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8603, 'AMD Ryzen 5', 114, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8604, 'AMD Ryzen 7', 114, now(), now());
-- Bên trong/Bên ngoài
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8700, 'Bên trong', 118, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8701, 'Bên ngoài', 118, now(), now());
-- Phương tiện Tương thích
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8800, 'Blu-Ray', 120, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8801, 'CD', 120, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8802, 'DVD', 120, now(), now());
-- Chế độ Đầu ra Âm thanh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8900, 'DirectSound', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8901, 'WASAPI', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8902, 'ASIO', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8903, 'Đầu ra Rỗng', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8904, 'Truyền trực tuyến Hạt nhân', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8905, 'Trình ghi Ổ đĩa', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8906, 'Âm thanh vòm 5.1', 121, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(8907, 'Âm thanh Lõi', 121, now(), now());
-- Nước xuất xứ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9000, 'Đèn flash Nhỏ gọn', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9001, 'Eye fi', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9002, 'Thẻ nhớ', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9003, 'Thẻ nhớ Memory Stick Duo', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9004, 'Micro SD', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9005, 'Micro SDHC', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9006, 'MMC', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9007, 'SD', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9008, 'SDHC', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9009, 'SDXC', 122, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(9010, 'XQD', 122, now(), now());
-- Micro Tích hợp sẵn
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10000, 'Có', 125, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10001, 'Không', 125, now(), now());
-- Loại Bộ điều hợp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10100, 'Bộ sạc Ô tô', 128, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10101, 'Bộ sạc tường', 128, now(), now());
-- Loại Bút
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10200, 'Bút bi', 129, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10201, 'Bút gel', 129, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10202, 'Bút máy', 129, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10203, 'Bút lông kim', 129, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10204, 'Bút đa năng', 129, now(), now());
-- Tốc độ Quay
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10300, '5400rpm', 130, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10301, '5900rpm', 130, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10302, '7200rpm', 130, now(), now());
-- Hệ số hình thức SSD
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10400, '2.5', 131, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10401, 'M.2', 131, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10402, 'mSATA', 131, now(), now());
-- Số lượng Nhịp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10500, 'Ổ đĩa đơn', 132, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10501, '2-Bay', 132, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10502, '4-Bay', 132, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10503, '5-Bay', 132, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10504, '6-Bay', 132, now(), now());
-- Loại Tốc độ Bộ nhớ Flash
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10600, 'Class 2', 133, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10601, 'Class 4', 133, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10602, 'Class 6', 133, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10603, 'Class 10', 133, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10604, 'UHS Class 1', 133, now(), now());
-- Loại Bộ nhớ Flash
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10700, 'Đèn flash Nhỏ gọn', 134, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10701, 'Micro SD', 134, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10702, 'SDHC', 134, now(), now());
-- Loại Ăng ten
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10800, 'Tích hợp sẵn', 137, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10801, 'Bên ngoài', 137, now(), now());
-- Mạng Không dây
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10900, '3G', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10901, '4G', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10902, 'Bluetooth', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10903, 'Wifi 6(802.11ax)', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10904, 'Wifi AC(802.11ac)', 139, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(10905, 'Wifi N(802.11n)', 139, now(), now());
-- Tốc độ Mạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11000, '700Mbps', 140, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11001, '800Mbps', 140, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11002, '900Mbps', 140, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11003, '1Gbps', 140, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11004, '2Gbps', 140, now(), now());
-- Loại Công tắc Mạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11100, 'Được quản lý', 141, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11101, 'Thông minh', 141, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11102, 'Không được quản lý', 141, now(), now());
-- Loại Đầu nối & Cáp mạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11200, 'Cat 5e', 142, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11201, 'Cat 6', 142, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11202, 'Cat 6a', 142, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11203, 'Cat 7', 142, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11204, 'Cat 8', 142, now(), now());
-- Loại két sắt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11300, 'Két sắt thương mại & văn phòng', 143, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11301, 'Két chống cháy & an ninh', 143, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11302, 'Chìa khóa & Két di động', 143, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11303, 'Két treo tường & để sàn', 143, now(), now());
-- Thiết bị thông minh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11400, 'Thông minh', 144, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11401, 'Không phải thiết bị thông minh', 144, now(), now());
-- Tính năng Đồng hồ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11500, 'Trình theo dõi Calo', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11501, 'Camera', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11502, 'Màn hình Đồng hồ', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11503, 'Trình theo dõi Khoảng cách', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11504, 'GPS', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11505, 'Theo dõi Nhịp tim', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11506, 'Máy nghe nhạc', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11507, 'Thông báo', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11508, 'Thanh toán', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11509, 'Máy đếm bước chân', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11510, 'Cuộc gọi điện thoại', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11511, 'Trình theo dõi giấc ngủ', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11512, 'Tin nhắn', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11513, 'Điều khiển giọng nói', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11514, 'Ghi âm giọng nói', 145, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11515, 'Không thấm nước', 145, now(), now());
-- Kiểu Theo dõi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11600, 'Vòng cổ', 146, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11601, 'Cổ tay', 146, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11602, 'Ban nhạc', 146, now(), now());
-- Tính năng VR
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11700, 'Bluetooth', 147, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11701, 'Mic tích hợp', 147, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11702, 'Loa tích hợp', 147, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11703, 'Dữ liệu di động', 147, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11704, 'HDMI', 147, now(), now());
-- Tiêu chuẩn Giao tiếp Mạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11800, 'GSM', 148, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11801, 'CDMS', 148, now(), now());
-- Cài đặt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11900, 'Phòng ngủ', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11901, 'Phòng tắm', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11902, 'Phòng tắm', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11903, 'Phòng vệ sinh', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11904, 'Phòng bếp', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11905, 'Ban công', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11906, 'Ga-ra', 150, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(11907, 'Tủ quần áo', 150, now(), now());
-- Sử dụng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12000, 'Đồ gia dụng', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12001, 'Quần áo', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12002, 'Đồ chơi', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12003, 'Thực phẩm & Đồ uống', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12004, 'Sách', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12005, 'Đồ nữ trang', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12006, 'Thiết bị điện tử', 151, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12007, 'Sắc đẹp', 151, now(), now());
-- Số lượng mỗi gói
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12100, 1, 152, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12101, 2, 152, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12102, 3, 152, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12103, 4, 152, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12104, 5, 152, now(), now());
-- Đặc điểm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12200, 'Điều chỉnh được', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12201, 'Có thể phân hủy', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12202, 'Thân thiện với môi trường', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12203, 'Có thể tái chế', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12204, 'Có thể gập gọn', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12205, 'Có thể gập lại', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12206, 'Chống thấm nước', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12207, 'Có thể xoay', 153, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12208, 'Chống bụi', 153, now(), now());
-- Hình dạng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12300, 'Hình trái xoan', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12301, 'Hình tròn', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12302, 'Hình trái tim', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12303, 'Hình vuông', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12304, 'Hình chữ nhật', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12305, 'Hình thang', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12306, 'Hình cung', 154, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12307, 'Không đều', 154, now(), now());
-- Phong cách
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12400, 'Đồ cổ', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12401, 'Châu Á', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12402, 'Cổ điển', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12403, 'Nước Pháp', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12404, 'Sân vườn', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12405, 'Glam', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12406, 'Công nghiệp', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12407, 'Người Nhật', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12408, 'Hiện đại', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12409, 'Mộc mạc', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12410, 'Đông Nam Á', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12411, 'Truyền thống', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12412, 'Nhiệt đới', 155, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12413, 'Vintage', 155, now(), now());
-- Kẹp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12500, 'Có kẹp', 156, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12501, 'Không có kẹp', 156, now(), now());
-- Số lớp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12600, '1 lớp', 157, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12601, '2 lớp', 157, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12602, '3 lớp', 157, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12603, '4 lớp', 157, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12604, '5 lớp', 157, now(), now());
-- Trả góp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12700, 'Treo tường', 158, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12701, 'Móc dính', 158, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12702, 'Móng', 158, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12703, 'Băng dính', 158, now(), now());
-- Trọng lượng hỗ trợ (kg)
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12800, '0 - 5 kg', 159, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12801, '5 - 10 kg', 159, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12802, '10 - 15 kg', 159, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12803, '15 - 20 kg', 159, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12804, '20 - 25 kg', 159, now(), now());
-- Xếp đặt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12900, 'Wall-Mounted', 160, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12901, 'Desk', 160, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12902, 'Floor', 160, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12903, 'Cầm tay', 160, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(12904, 'Phòng ngủ', 160, now(), now());
-- Số lượng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13000, '10 ml', 161, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13001, '20 ml', 161, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13002, '30 ml', 161, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13003, '50 ml', 161, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13004, '100 ml', 161, now(), now());
-- Tuổi đời sản phẩm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13100, 'Dùng một lần', 162, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13101, 'Có thể tái sử dụng', 162, now(), now());
-- Loại bàn chải toilet
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13200, 'Wall-Mounted', 163, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13201, 'Floor', 163, now(), now());
-- Loại bàn chải toilet
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13300, 'Mùa xuân', 164, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13301, 'Mùa hè', 164, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13302, 'Mùa thu', 164, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13303, 'Mùa đông', 164, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13304, 'Bốn mùa', 164, now(), now());
-- Loại bọc ghế nhà vệ sinh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13400, 'Dùng một lần', 165, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13401, 'Dính', 165, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13402, 'Có dây kéo', 165, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13403, 'Có tay cầm', 165, now(), now());
-- Loại khay đựng xà phòng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13500, 'Nhấn', 166, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13501, 'Cảm ứng', 166, now(), now());
-- Tuổi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13600, 'Trẻ em', 167, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13601, 'Dành cho người lớn', 167, now(), now());
-- Loại giá đỡ bàn chải đánh răng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13700, '2 lớp', 168, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13701, 'Nhiều phần', 168, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13702, 'Cầm tay', 168, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13703, 'Tam giác', 168, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13704, 'Kết hợp', 168, now(), now());
-- Loại thanh treo rèm phòng tắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13800, 'Loại chữ U', 169, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13801, 'Thẳng', 169, now(), now());
-- Loại đĩa xà phòng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13900, '2 lớp', 170, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13901, 'Có nắp', 170, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(13902, 'Trong suốt', 170, now(), now());
-- Loại bồn tắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14000, 'Chậu rửa mặt', 171, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14001, 'Chậu ngâm chân', 171, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14002, 'Xô ngâm chân', 171, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14003, 'Đĩa', 171, now(), now());
-- Giới tính
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14100, 'Nam', 172, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14101, 'Nữ', 172, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14102, 'Unisex', 172, now(), now());
-- Loại khăn
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14200, 'Khăn tắm biển', 173, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14201, 'Khăn tắm', 173, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14202, 'Khăn mặt', 173, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14203, 'Khăn lau đầu', 173, now(), now());
-- Loại tiện ích phòng tắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14200, 'Dụng cụ bóp kem đánh răng', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14201, 'Đầu nối dài vòi nước', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14202, 'Dụng cụ chặn tóc', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14203, 'Giá đỡ giấy vệ sinh di động', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14204, 'Gối tắm', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14205, 'Cân phòng tắm', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14206, 'Pit-tông bồn cầu', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14207, 'Dụng cụ nâng nắp bồn cầu', 174, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14208, 'Giá đỡ dao cạo râu', 174, now(), now());
-- Bộ phận cơ thể
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14300, 'Đầu', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14301, 'Lưng', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14302, 'Cánh tay', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14303, 'Bàn Chân', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14304, 'Cả người', 175, now(), now());
-- Loại phụ kiện phòng tắm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14400, 'Bọt biển tắm', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14401, 'Găng tay tắm', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14402, 'Bàn chải tắm', 175, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14403, 'Máy chà cơ thể', 175, now(), now());
-- Hướng dẫn giặt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14500, 'Chỉ giặt tay', 177, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14501, 'Chỉ giặt khô', 177, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14502, 'Giặt máy', 177, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14503, 'Không cần giặt', 177, now(), now());
-- Loại loa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14600, 'Loa Giá sách', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14601, 'Loa trần', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14602, 'Loa Kênh Trung tâm', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14603, 'Loa Máy tính', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14604, 'Loa sàn', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14605, 'Loa Ngoài trời', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14606, 'Loa Di động', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14607, 'Loa Vệ tinh', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14608, 'Loa Dạng thanh', 180, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14609, 'Loa siêu trầm', 180, now(), now());
-- Loại phụ kiện
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14700, 'Dây cáp', 181, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14701, 'Tai nghe', 181, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14702, 'Pad chơi game', 181, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14703, 'Cần điều khiển', 181, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14704, 'Phụ kiện Kinect', 181, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14705, 'Bộ gá', 181, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14706, 'Bộ điều khiển từ xa', 181, now(), now());
-- Số lượng Camera Chính
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14800, 'Không có máy ảnh', 183, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14801, '1', 183, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14802, '2', 183, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14803, '3', 183, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14804, '>3', 183, now(), now());
-- GPS
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14900, 'Có', 183, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(14901, 'Không', 183, now(), now());
-- Dữ liệu di động
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15000, 'Có', 183, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15001, 'Không', 183, now(), now());
-- Loại giày cao gót
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15100, 'Comma', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15101, 'Cone', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15102, 'Cuban', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15103, 'Cut Out', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15104, 'Decorative', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15105, 'Flare', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15106, 'Tiếng Pháp', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15107, 'Kitten', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15108, 'Spool', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15109, 'Stiletto', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15110, 'Wedge', 97, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15111, 'Giày đế bằng', 97, now(), now());
-- Chiều cao bốt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15200, 'Không gót', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15201, 'Gót phẳng (1 cm trở xuống)', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15202, 'Gót thấp (1-3 cm)', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15203, 'Gót vừa (3-5 cm)', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15204, 'Cao gót (5-8 cm)', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15205, 'Rất cao gót (trên 8 cm)', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15206, '0 to 2 cm', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15207, '2 to 4.5 cm', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15208, '4.5 to 6 cm', 186, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15209, 'Trên 6 cm', 186, now(), now());
-- Dịp
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15300, 'Kinh doanh', 187, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15301, 'Lễ cưới', 187, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15302, 'Thông thường', 187, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15303, 'Buổi tối', 187, now(), now());
-- Hình dáng ngón chân
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15400, 'Cao gót hở mũi', 188, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15401, 'Mũi tròn', 188, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15402, 'Mũi hở', 188, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15403, 'Toe Thong', 188, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15404, 'Mũi nhọn', 188, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15405, 'Mũi vuông', 188, now(), now());
-- Độ rộng của giày
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15500, 'Bình thường', 189, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15501, 'Vừa', 189, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15502, 'Rộng', 189, now(), now());
-- Trang trí
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15600, 'Kim cương giả', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15601, 'Hạt', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15602, 'Đinh tán', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15603, 'Cái nơ', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15604, 'Có núm tua', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15605, 'Lông vũ', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15606, 'Ren', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15607, 'Nút', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15608, 'Faux Pearls', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15609, 'Kim sa', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15610, 'Butterfly', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15611, 'Dây chuyền', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15612, 'Knot', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15613, 'Đầu nhọn', 190, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15614, 'Dây bện', 190, now(), now());
-- Loại buộc
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15700, 'Khóa kéo', 191, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15701, 'Khóa dán', 191, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15702, 'Khóa trượt', 191, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15703, 'Dây buộc', 191, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15704, 'Khóa', 191, now(), now());
-- Loại quai
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15800, 'Quai có thể điều chỉnh', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15801, 'Quai đeo mắt cá chân', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15802, 'Quai chữ T', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15803, 'Có quai', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15804, 'Gladiator', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15805, 'Hai quai', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15806, 'Quai hậu', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15807, 'Quai chữ X', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15808, 'Quai đệm', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15809, 'Quai xỏ ngón cái', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15810, 'Xỏ ngón', 192, now(), now());
-- Chiều cao ủng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15900, 'Mắt cá', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15901, 'Giữa bắp chân', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15902, 'Đầu gối', 192, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(15903, 'Qua đầu gối', 192, now(), now());
-- Chiều cao phần trên
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16000, 'Giày cao cổ', 194, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16001, 'Giày cao vừa phải', 194, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16002, 'Giày cổ thấp', 194, now(), now());
-- Loại căn hộ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16100, 'Giày Espadrilles', 195, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16101, 'Giày ballet', 195, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16102, 'Giày thuyền', 195, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16103, 'Giày Moccasin', 195, now(), now());
-- Đón gót & loại cây
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16200, 'Đón gót', 196, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16201, 'Cây xỏ giày', 196, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16202, 'Đế rút giày', 196, now(), now());
-- Loại chất tẩy
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16300, 'Xi đánh bóng giày', 197, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16301, 'Bình xịt bảo vệ giày', 197, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16302, 'Bàn chải chà giày', 197, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16303, 'Bộ dụng cụ chăm sóc giày', 197, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16304, 'Màu & thuốc nhuộm', 197, now(), now());
-- Phiên bản
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16400, 'Ấn bản thông thường', 182, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16401, 'Phiên bản giới hạn', 182, now(), now());
-- Khối lượng tịnh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16500, '10g', 199, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16501, '20g', 199, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16502, '30g', 199, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16503, '50g', 199, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16504, '100g', 199, now(), now());
-- Chứa cồn hoặc son khí
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16600, 'Chứa cồn', 200, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16601, 'Chứa son khí', 200, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16602, 'Chứa cả hai', 200, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16603, 'Không chứa chất nào', 200, now(), now());
-- Khu vực xuất xứ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16700, 'Trung Quốc', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16701, 'Indonesia', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16702, 'Malaysia', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16703, 'Thái Lan', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16704, 'Việt Nam', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16705, 'Phi-líp-pin', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16706, 'Nhật Bản', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16707, 'Hàn Quốc', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16708, 'Châu Âu', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16709, 'Vương quốc Anh', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16710, 'Hoa Kỳ', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16711, 'Australia', 201, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16712, 'Singapore', 201, now(), now());
-- Hạn sử dụng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16800, '1 tháng', 203, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16801, '2 tháng', 203, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16802, '3 tháng', 203, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16803, '6 tháng', 203, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16804, '12 tháng', 203, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16805, '18 tháng', 203, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16806, '24 tháng', 203, now(), now());
-- Loại gói
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16900, 'Nhiều gói', 205, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(16901, 'Sản phẩm đơn', 205, now(), now());
-- Hình thức sản phẩm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17000, 'Kem', 206, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17001, 'Bánh Mousse', 206, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17002, 'Bột', 206, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17003, 'Chất lỏng', 206, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17004, 'Gel', 206, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17005, 'Giấy lau', 206, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17006, 'Một màu', 206, now(), now());
-- Loại set
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17100, 'Môi', 207, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17101, 'Mặt', 207, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17102, 'Mắt', 207, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17103, 'Đa chức năng', 207, now(), now());
-- Lớp hoàn thiện trang điểm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17200, 'Lì', 208, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17201, 'Satin', 208, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17202, 'Tự nhiên', 208, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17203, 'Kim loại', 208, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17204, 'Căng mọng', 208, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17205, 'Lung linh', 208, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17206, 'Rạng rỡ', 208, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17207, 'Sáng bóng', 208, now(), now());
-- Lợi ích
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17300, 'Kiểm soát dầu', 209, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17301, 'Dưỡng ẩm', 209, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17302, 'Độ phủ SPF', 209, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17303, 'Lâu dài', 209, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17304, 'Sắc tố cao', 209, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17305, 'Giảm thiểu lỗ chân lông', 209, now(), now());
-- Loại dụng cụ trang điểm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17400, 'Tăm bông và bông tẩy trang', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17401, 'Túi & Hộp đồ trang điểm', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17402, 'Gương', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17403, 'Dung dịch vệ sinh cọ trang điểm', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17404, 'Cọ trang điểm', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17405, 'Dụng cụ trang điểm và mút trang điểm', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17406, 'Dụng cụ uốn mi', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17407, 'Lông mi giả', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17408, 'Băng dính & keo dán mí mắt', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17409, 'Dụng cụ gọt bút chì', 210, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17410, 'Khuôn lông mày', 210, now(), now());
-- Khả năng che phủ khuôn mặt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17500, 'Nhẹ', 211, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17501, 'Vừa', 211, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17502, 'Full', 211, now(), now());
-- Màu da
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17600, 'Sáng màu', 212, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17601, 'Vừa', 212, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17602, 'Đen', 212, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17603, 'Bất kỳ', 212, now(), now());
-- Loại da
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17700, 'Khô', 213, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17701, 'Bình thường', 213, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17702, 'Dầu mỡ', 213, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17703, 'Kết hợp', 213, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17704, 'Xỉn màu', 213, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17705, 'Mụn trứng cá', 213, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17706, 'Nhạy cảm', 213, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17707, 'Tất cả các loại da', 213, now(), now());
-- SPF
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17800, '15', 214, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17801, '20', 214, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17802, '30', 214, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17803, '50', 214, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17804, '60', 214, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17805, '100', 214, now(), now());
-- Khu vực áp dụng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17900, 'Mặt', 215, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17901, 'Môi & mắt', 215, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17902, 'Cơ thể người', 215, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17903, 'Nách', 215, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17904, 'Tóc', 215, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(17905, 'Bất kỳ', 215, now(), now());
-- Loại sản phẩm tẩy trang
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18000, 'Gốc dầu', 216, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18001, 'Nước tẩy trang', 216, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18002, 'Khăn tẩy trang', 216, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18003, 'Sáp tẩy trang', 216, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18004, 'Gốc lotion (gốc dưỡng)', 216, now(), now());
-- Loại sản phẩm điều trị môi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18100, 'Son dưỡng môi', 217, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18101, 'Tẩy da chết môi', 217, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18102, 'Mặt nạ môi', 217, now(), now());
-- Ưu tiên thành phần
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18100, 'Không có hương liệu', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18101, 'Không chứa silicon', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18102, 'Không chứa paraben', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18103, 'Hữu cơ', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18104, 'Không có cồn', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18105, 'Axit amin', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18106, 'Vitamin C', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18107, 'Vitamin E', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18108, 'Axit hyaluronic', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18109, 'Chất chống oxy hóa', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18110, 'Khoáng chất', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18111, 'BHA', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18112, 'Ceramide', 218, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18113, 'Có nguồn gốc tự nhiên', 218, now(), now());
-- Loại mặt nạ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18200, 'Ga', 219, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18201, 'Mặt nạ lột', 219, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18202, 'Mặt nạ bôi', 219, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18203, 'Đất sét', 219, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18204, 'Gel', 219, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18205, 'Kem', 219, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18206, 'Bột', 219, now(), now());
-- Loại dụng cụ chăm sóc da
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18300, 'Dụng cụ mát-xa & giảm béo mặt', 220, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18301, 'Dụng cụ rửa mặt', 220, now(), now());
-- Kiểu tóc
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18400, 'Khô', 221, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18401, 'Bình thường', 221, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18402, 'Dầu mỡ', 221, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18403, 'Nhuộm màu', 221, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18404, 'Xoăn', 221, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18405, 'Bất kỳ', 221, now(), now());
-- Loại công cụ tạo kiểu không dùng nhiệt
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18500, 'Lược chải tóc', 222, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18501, 'Tóc giả & Tóc nối & Miếng đệm tóc', 222, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18502, 'Phụ kiện tạo kiểu tóc', 222, now(), now());
-- Tuổi khuyến nghị
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18600, '0-3 tháng', 225, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18601, '3-6 tháng', 225, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18602, '6-9 tháng', 225, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18603, '9-12 tháng', 225, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18604, '12-18 tháng', 225, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18605, '18-24 tháng', 225, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18606, '2-3 năm', 225, now(), now());
-- Đặc tính nguyên liệu
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18700, 'Không cồn', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18701, 'Chống vi khuẩn', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18702, 'Chất sát trùng', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18703, 'Không hương thơm', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18704, 'Không gây dị ứng', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18705, 'Không nước mắt', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18706, 'Không rửa', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18707, 'Không hóa chất', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18708, 'Không chứa paraben', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18709, 'Nuốt an toàn', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18710, 'Không xà phòng', 226, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18711, 'Hữu cơ', 226, now(), now());
-- Hương thơm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18800, 'Táo', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18801, 'Hoa hồng', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18802, 'Xoài', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18803, 'Cam', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18804, 'Dừa', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18805, 'Hoa nhài', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18806, 'Cây sả', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18807, 'Dâu tây', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18808, 'Việt quất', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18809, 'Đào', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18810, 'Chanh vàng', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18811, 'Dứa', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18812, 'Dưa hấu', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18813, 'Trà xanh', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18814, 'Hoa lá', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18815, 'Mùi hoa quả', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18816, 'Hoa oải hương', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18817, 'Gừng', 227, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18818, 'Không mùi', 227, now(), now());
-- Loại dụng cụ làm móng tay & móng chân
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18900, 'Long lanh', 228, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18901, 'Bộ móng tay', 228, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(18902, 'Kéo cắt móng', 228, now(), now());
-- Loại sản phẩm tắm & chăm sóc cơ thể
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19000, 'Sữa tắm & Xà phòng', 229, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19001, 'Kem dưỡng da & Lotion dưỡng da toàn thân', 229, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19002, 'Bột Tal', 229, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19003, 'Chất khử mùi', 229, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19004, 'Kem & Sáp tẩy lông', 229, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19005, 'Dầu xoa bóp & dưỡng thể', 229, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19006, 'Tẩy tế bào chết & Lột da toàn thân', 229, now(), now());
-- Loại trang điểm dành cho nam giới
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19100, 'Kem lót', 230, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19101, 'Kem nền', 230, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19102, 'BB Cream và CC Cream', 230, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19103, 'Xịt dưỡng trang điểm', 230, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19104, 'Trang điểm môi', 230, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19105, 'Trang điểm khuôn mặt', 230, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19106, 'Trang điểm mắt', 230, now(), now());
-- Loại chăm sóc da cho nam giới
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19200, 'Sữa rửa mặt', 231, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19201, 'Nước hoa hồng', 231, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19202, 'Kem mặt', 231, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19203, 'Serum', 231, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19204, 'Mặt nạ', 231, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19205, 'Kem chống nắng', 231, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19206, 'Chăm sóc môi', 231, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19207, 'Chăm sóc mắt', 231, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19208, 'Chăm sóc cơ thể', 231, now(), now());
-- Từ tính
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19300, 'Có', 232, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19301, 'Không', 232, now(), now());
-- Bao gồm pin
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19400, 'Có', 233, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19401, 'Không', 233, now(), now());
-- Người lớn hoặc trẻ em
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19500, 'Người lớn', 234, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19501, 'Trẻ em', 234, now(), now());
-- Tính năng của máy sấy tóc
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19600, 'Phồng', 235, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19601, 'Máy tạo ion âm', 235, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19602, 'Giảm rối', 235, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19603, 'Bảo vệ nhiệt', 235, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19604, 'Tăng cường độ sáng bóng', 235, now(), now());
-- Sử dụng cho mục đích y tế hoặc phi y tế
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19700, 'Y tế', 237, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19701, 'Phi y tế', 237, now(), now());
-- Loại hoạt động
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19800, 'Điện tử', 238, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19801, 'Thủ công', 238, now(), now());
-- Nếu sửa chữa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19900, 'Có', 239, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(19901, 'Không', 239, now(), now());
-- Độ cứng của lông
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20000, 'Cứng', 240, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20001, 'Vừa', 240, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20002, 'Mềm mại', 240, now(), now());
-- Loại chăm sóc răng giả
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20100, 'Keo dán răng giả', 241, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20101, 'Hộp rửa răng giả', 241, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20102, 'Bàn chải răng giả', 241, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20103, 'Chất tẩy rửa răng giả', 241, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20104, 'Bộ dụng cụ sửa chữa răng giả', 241, now(), now());
-- Sử dụng ban ngày hoặc ban đêm
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20200, 'Ngày', 242, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20201, 'Đêm', 242, now(), now());
-- Mức dòng chảy
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20300, 'Regular', 243, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20301, 'Nhẹ', 243, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20302, 'Nặng', 243, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20303, 'Thai sản', 243, now(), now());
-- Đặc trưng mùi hương
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20400, 'Có hương liệu', 244, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20401, 'Không mùi', 244, now(), now());
-- Cánh
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20500, 'Có', 245, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20501, 'Không', 245, now(), now());
-- Độ tuổi
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20600, 'Người lớn', 247, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20601, 'Thiếu niên', 247, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20602, 'Trẻ em', 247, now(), now());
-- Chiều dài quần áo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20700, 'Ngắn', 248, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20701, 'Vừa', 248, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20702, 'Chiều dài 3/4', 248, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20703, 'Dài', 248, now(), now());
-- Chiều dài tay áo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20800, 'Ngắn tay', 249, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20801, 'Lửng tay', 249, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20802, '3/4 tay', 249, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20803, 'Dài tay', 249, now(), now());
-- Vừa vặn
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20900, 'Vừa vặn', 250, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20901, 'Rộng lùng thùng', 250, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(20902, 'Fitted', 250, now(), now());
-- Loại tay áo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21000, 'Không có', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21001, 'Tay phồng', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21002, 'Tay cánh dơi', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21003, 'Tay đèn lồng', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21004, 'Tay bo gấu', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21005, 'Tay áo Raglan', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21006, 'Tay bèo', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21007, 'Tay chuông', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21008, 'Tay áo Bishop', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21009, 'Tay nhí', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21010, 'Tay áo choàng', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21011, 'Tay áo hở vai', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21012, 'Tay trùm', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21013, 'Tay áo loe', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21014, 'Tay áo cánh', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21015, 'Tay áo kimono', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21016, 'Tay áo xẻ', 251, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21017, 'Roll Up Sleeve', 251, now(), now());
-- Đường viền cổ áo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21100, 'Cổ thuyền', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21101, 'Cổ chữ V', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21102, 'Cổ lọ', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21103, 'Cổ cao', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21104, 'Cổ vuông', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21105, 'Cổ bẻ', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21106, 'Cổ yếm', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21107, 'Trễ vai', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21108, 'Một vai', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21109, 'Cổ tròn', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21110, 'Cổ tim', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21111, 'Deep V Neck', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21112, 'Tie Neck', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21113, 'U Neck', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21114, 'Asymmetrical Neck', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21115, 'Notched', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21116, 'Cowl Neck', 252, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21117, 'Keyhole Neckline', 252, now(), now());
-- Kiểu cổ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21200, 'Cổ Chelsea', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21201, 'Cổ đăng ten', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21202, 'Cổ yếm', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21203, 'Cổ vạt nhọn', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21204, 'Cổ lọ', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21205, 'Cổ Tàu', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21206, 'Cổ cánh nhạn', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21207, 'Cổ Sam', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21208, 'Cổ tròn', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21209, 'Cổ nhọn Gothic', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21210, 'Peter Pan Collar', 253, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21211, 'Lapel', 253, now(), now());
-- Loại kích thước
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21300, 'Trẻ em', 254, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21301, 'Cỡ nhỏ', 254, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21302, 'Cỡ lớn cộng', 254, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21303, 'Thường', 254, now(), now());
-- Thiết kế
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21400, 'Frill', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21401, 'Ruffle', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21402, 'Asymmetrical', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21403, 'Criss Cross', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21404, 'Quai có thể điều chỉnh', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21405, 'Washed', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21406, 'Split', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21407, 'Shirred', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21408, 'Pleated', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21409, 'Contrast Lace', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21410, 'Twist', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21411, 'Sheer', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21412, 'Tiered Layer', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21413, 'Contrast Binding', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21414, 'Lettuce Trim', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21415, 'Crochet', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21416, 'Raw Hem', 255, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21417, 'Ripped', 255, now(), now());
-- Loại quần áo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21500, 'Blazer', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21501, 'Khăn choàng', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21502, 'Áo trễ vai', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21503, 'Áo khoác phi công', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21504, 'Áo khoác bóng chày', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21505, 'Áo khoác tuxedo', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21506, 'Áo phao lông vũ', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21507, 'Áo khoác denim', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21508, 'Áo khoác lông & giả lông', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21509, 'Da & giả da', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21510, 'Áo khoác nhẹ chần bông', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21511, 'Áo khoác len & hải quân', 256, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21512, 'Trench Coat', 256, now(), now());
-- Loại khóa
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21600, 'Xỏ', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21601, 'Dây buộc', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21602, 'Khóa móc', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21603, 'Móc gài', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21604, 'Cột', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21605, 'Băng gai dính', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21606, 'Khóa', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21607, 'Nút', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21608, 'Dây rút', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21609, 'Nam châm', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21610, 'Then', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21611, 'Khóa kéo', 257, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21612, 'Thanh móc', 257, now(), now());
-- Kiểu lưng
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21700, 'Buộc', 258, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21701, 'Quai', 258, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21702, 'Dây chữ Y', 258, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21703, 'Dán', 258, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21704, 'Dây chữ V', 258, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21705, 'Hở khe', 258, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21706, 'Ren', 258, now(), now());
-- Chiều dài váy
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21800, 'Mini', 259, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21801, 'Trên đầu gối', 259, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21802, 'Ngang gối', 259, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21803, 'Midi', 259, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21804, 'Maxi', 259, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21805, 'Nhiều vị', 259, now(), now());
-- Chiều cao vòng eo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21900, 'Eo thấp', 260, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21901, 'Eo giữa', 260, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21902, 'Eo cao', 260, now(), now());
-- Chiều dài lai
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21900, 'Trên gối', 261, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21901, 'Ngang gối', 261, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21902, 'Dưới gối', 261, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21903, 'Dài thân người', 261, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(21904, 'Dài chạm đất', 261, now(), now());
-- Loại vạt cài cúc áo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22000, 'Nút', 262, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22001, 'Khóa kéo', 262, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22002, 'Không có', 262, now(), now());
-- Chủ đề
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22000, 'Động vật, Côn trùng & khủng long', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22001, 'Nhân vật hoạt hình', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22002, 'Disney', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22003, 'Kỳ quan', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22004, 'DC', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22005, 'Người nổi tiếng', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22006, 'Chính trị & Memes', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22007, 'Halloween cổ điển', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22008, 'Hài hước & Ngốc nghếch', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22009, 'Lịch sử & Kỳ nghỉ lễ', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22010, 'Phim/TV', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22011, 'Đáng sợ/Rùng rợn', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22012, 'Steampunk', 263, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22013, 'Đồng dạng', 263, now(), now());
-- Loại Knicker
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22100, 'Bikini', 264, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22101, 'Cá tính', 264, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22102, 'Cheeky', 264, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22103, 'Dùng một lần', 264, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22104, 'Lọt khe', 264, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22105, 'Ôm hông', 264, now(), now());
-- Loại định hình
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22200, 'Ống định hình chân', 265, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22201, 'Ống định hình giữa đùi', 265, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22202, 'Nịt bụng nâng ngực', 265, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22203, 'Nịt bụng', 265, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22204, 'Nịt eo', 265, now(), now());
-- Kiểu áo ngực
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22300, 'Áo ngực quây ngang', 266, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22301, 'Mỏng nhẹ', 266, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22302, 'Khoét sâu', 266, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22303, 'Nâng', 266, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22304, 'Không viền', 266, now(), now());
-- Loại áo ngực
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22400, 'Bralette', 267, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22401, 'Không viền', 267, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22402, 'Không quai', 267, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22403, 'Không viền', 267, now(), now());
-- Vị trí khóa trên áo
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22500, 'Lưng', 268, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22501, 'Cạnh', 268, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22502, 'Trước', 268, now(), now());
-- Độ che kín ngực
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22600, 'Che 1/2', 269, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22601, 'Che 3/4', 269, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22602, 'Che toàn bộ', 269, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22603, 'Dính', 269, now(), now());
-- Loại phụ kiện áo ngực
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22700, 'Dây đeo', 270, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22701, 'Áo ngực dính', 270, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22702, 'Đệm lót', 270, now(), now());
-- Loại đồ lót
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22800, 'Phụ kiện', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22801, 'Babydolls', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22802, 'Áo liền quần', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22803, 'Áo lót & Áo ngực gợi cảm', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22804, 'Bộ Cami', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22805, 'Áo nịt ngực & Định hình', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22806, 'Trang phục', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22807, 'Quần tất & Hàng dệt kim', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22808, 'Kimono', 271, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22809, 'Bộ đồ lót', 271, now(), now());
-- Chiều cao vớ
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22900, 'Mắt cá', 272, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22901, 'Cao ngang bắp chân', 272, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22902, 'Vô hình', 272, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22903, 'Cao ngang đầu gối', 272, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(22904, 'Cao ngang đùi', 272, now(), now());
-- Kiểu mũi giày
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(23000, 'Mũi rời', 273, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(23001, 'Hở mũi', 273, now(), now());
INSERT IGNORE INTO property_values (id, value, property_id, created_at, updated_at) VALUES(23002, 'Năm ngón', 273, now(), now());
