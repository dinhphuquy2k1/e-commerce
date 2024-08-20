SET CHARSET UTF8;

-- Loại sản phẩm
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(1, 'Đồ gia dụng', null, 0, 'Tất cả Đồ gia dụng bao gồm đồ dùng Bảo quản nhà cửa & phòng tắm, Đồ trang trí nhà & tiệc, Đồ dùng cất trữ trong nhà và Dụng cụ gia dụng.', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2, 'Đồ dùng nhà bếp', null, 0, 'Tất cả Đồ dùng cần thiết cho nhà bếp, bao gồm Dụng cụ nấu ăn, Dụng cụ nướng bánh, Bộ đồ ăn, Bộ đồ uống, Dụng cụ nhà bếp và Phụ kiện nướng', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(3, 'Hàng dệt & Đồ nội thất mềm', null, 0, 'Bao gồm Bộ đồ giường & Đồ vải lanh, Vải & Dụng cụ may và Hàng dệt gia dụng', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(4, 'Thiết bị gia dụng', null, 0, 'Bao gồm Thiết bị gia dụng, Thiết bị gia dụng lớn, Thiết bị nhà bếp và Thiết bị thương mại', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(5, 'Trang phục nữ & Đồ lót', null, 1, 'Tất cả Trang phục nữ bao gồm Áo, Quần, Váy, Đồ lót, Đồ bộ & Quần yếm, Đồ ngủ và Quần áo đặc biệt dành cho nữ', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6, 'Thời trang Hồi giáo', null, 1, 'Thời trang Hồi giáo bao gồm Quần áo Hồi giáo dành cho nam, nữ và trẻ em, Khăn trùm đầu, Áo khoác ngoài, Quần áo thể thao Hồi giáo, Phụ kiện Hồi giáo, Trang phục & Trang bị cầu nguyện và Trang bị Umroh', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(7, 'Giày', null, 0, 'Bao gồm tất cả các loại giày như Giày nam & nữ và Phụ kiện giày', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8, 'Chăm sóc sắc đẹp & Chăm sóc cá nhân', null, 0, 'Sản phẩm Làm đẹp & Chăm sóc cá nhân bao gồm tất cả sản phẩm trang điểm, mỹ phẩm chăm sóc da, nước hoa, sản phẩm & thiết bị tẩy rửa cá nhân.', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9, 'Điện thoại & Đồ điện tử', null, 0, 'Điện thoại & Thiết bị điện tử bao gồm Điện thoại, Camera & Nhiếp ảnh, Âm thanh & Video, Máy tính bảng & Máy tính, Chơi game & Máy chơi game, Thiết bị thông minh & Giáo dục và Phụ kiện phổ thông', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(10, 'Máy tính & Thiết bị văn phòng', null, 0, 'Tất cả Máy tính & Thiết bị văn phòng bao gồm Máy tính để bàn, Máy tính xách tay & Linh kiện mạng, Ổ lưu trữ dữ liệu & Phần mềm, Văn phòng phẩm & Vật tư và Thiết bị văn phòng', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11, 'Đồ dùng cho thú cưng', null, 0, 'Đồ dùng cho thú cưng bao gồm Đồ dùng cho chó & mèo', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12, 'Trẻ sơ sinh & Thai sản', null, 0, 'Mẹ & Bé bao gồm Sữa công thức & Thức ăn cho trẻ em, Chăm sóc & Sức khỏe bé, An toàn, Đồ chơi trẻ em, Quần áo & Giày dép, Phụ kiện thời trang, Đồ du lịch thiết yếu và Đồ nội thất; và Đồ dùng chăm sóc & cấp dưỡng và dành cho bà bầu', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13, 'Thể thao & Ngoài trời', null, 0, 'Thể thao & Ngoài trời bao gồm Thể thao sử dụng bóng, Thể thao dưới nước, Thư giãn & Giải trí ngoài trời, Cắm trại & Đi bộ đường dài, Thể thao mùa đông, Thiết bị tập luyện; Quần áo thể thao & ngoài trời, Giày dép, Đồ bơi, Trang phục lướt sóng & đồ mặc dưới nước, Cửa hàng dành cho người hâm mộ và Phụ kiện thể thao & ngoài trời.', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14, 'Đồ chơi & Sở thích', null, 0, 'Đồ chơi & Thú vui bao gồm Thiết bị điện tử & Bộ điều khiển từ xa, Cổ điển & Mới lạ, Búp bê & Thú nhồi bông, Đồ chơi giáo dục, Game & Trò chơi ghép hình, DIY, Thể thao & Hoạt động ngoài trời, Nhạc cụ & Phụ kiện', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(15, 'Đồ nội thất', null, 0, 'Nội thất bao gồm Nội thất trong nhà & ngoài trời, Nội thất cho trẻ em, Nội thất thương mại và Phụ tùng nội thất', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16, 'Công cụ & Phần cứng', null, 0, 'Dụng cụ & Đồ kim khí bao gồm Vườn tược, Năng lượng, Đo lường, Dụng cụ cầm tay và Hộp đựng dụng cụ; Máy bơm & Hệ thống ống nước, Đồ kim khí và Thiết bị hàn', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17, 'Sửa chữa nhà cửa', null, 0, 'Cải tạo nhà cửa bao gồm Đèn & Hệ thống chiếu sáng, An ninh & An toàn, Hệ thống nhà thông minh, Đồ đạc phòng tắm & nhà bếp, Năng lượng mặt trời & gió, Vật tư vườn tược & xây dựng và Vật tư & thiết bị điện', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18, 'Ô tô & xe máy', null, 0, 'Bao gồm phụ kiện vệ sinh và bảo dưỡng Xe máy & Ô tô, phụ tùng thay thế và đồ dùng cho Xe máy bốn bánh, Nhà di động & Thuyền', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(19, 'Phụ kiện thời trang', null, 0, 'Bao gồm Phụ kiện tóc, Tóc nối & Tóc giả, Trang sức trang phục, Đồng hồ, Phụ kiện mắt kính và quần áo', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(20, 'Đồ ăn & đồ uống', null, 0, 'Thực phẩm & Đồ uống, bao gồm Đồ uống, Đồ ăn vặt, Thực phẩm tươi sống & đông lạnh, Thực phẩm ăn liền, Làm bánh, Nguyên liệu & Thực phẩm nấu ăn thiết yếu', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(21, 'Sức khỏe', null, 0, 'Sức khỏe bao gồm Thuốc & Liệu pháp không kê đơn, Thực phẩm chức năng, Vật tư y tế, Sức khỏe tình dục và Thuốc & Liệu pháp thay thế', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(22, 'Sách, tạp chí & âm thanh', null, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(23, 'Thời trang trẻ em', null, 1, 'Thời trang trẻ em bao gồm Quần áo, Giày dép và Phụ kiện thời trang cho bé trai & bé gái', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(24, 'Trang phục nam & Đồ lót', null, 1, 'Tất cả Trang phục nam, bao gồm Áo, Quần, Lễ phục, Đồ lót, Đồ bộ & Quần yếm, Đồ ngủ và Quần áo đặc biệt dành cho nam', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(25, 'Hành lý & Túi xách', null, 0, 'Vali & Túi bao gồm Túi nữ, Túi nam, Túi chức năng, Vali & Túi du lịch và Phụ kiện túi', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(26, 'Bộ sưu tập', null, 0, 'Đồ sưu tầm bao gồm Đồ sưu tầm văn hóa đương đại, Đồ sưu tầm thể thao, giải trí, Thẻ bài sưu tầm & Phụ kiện và Tiền xu & tiền giấy sưu tầm', now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27, 'Phụ kiện trang sức & Phái sinh', null, 0, 'Phụ kiện trang sức & Sản phẩm phái sinh bao gồm Vật liệu trang sức dùng trên Vàng, Bạch kim & Vàng Carat, Ngọc bích, Bạc, Ngọc trai, Hổ phách, Kim cương, Mellite, Pha lê tự nhiên, Đá bán quý, Hồng ngọc, Sapphire & Ngọc lục bảo, Pha lê phi tự nhiên và Đá quý nhân tạo', now(), now());

-- Đồ gia dụng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(1000, 'Đồ đựng trong nhà', 1, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(1001, 'Đồ dùng phòng tắm', 1, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(1002, 'Trang trí nội thất', 1, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(1003, 'Đồ gia dụng', 1, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(1004, 'Dụng cụ & Phụ kiện giặt là', 1, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(1005, 'Đồ dùng cho lễ hội & bữa tiệc', 1, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(1006, 'Đồ gia dụng khác', 1, 0, null, now(), now());

-- Đồ dùng nhà bếp
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2000, 'Đồ để uống trà & cà phê', 2, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2001, 'Dao nhà bếp', 2, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2002, 'Tiệc nước barbecue', 2, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2003, 'Đồ dùng quầy rượu & Đồ uống rượu', 2, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2004, 'Đồ làm bánh', 2, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2005, 'Đồ nấu ăn', 2, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2006, 'Dao kéo & Bộ đồ ăn', 2, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2007, 'Bộ đồ uống', 2, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(2008, 'Đồ dùng & Dụng cụ nhà bếp', 2, 0, null, now(), now());

-- Hàng dệt & Đồ nội thất mềm
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(3000, 'Chăn ga gối đệm', 3, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(3001, 'Hàng dệt gia dụng', 3, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(3002, 'Vải & Đồ may', 3, 0, null, now(), now());

-- Thiết bị gia dụng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(4000, 'Dụng cụ nhà bếp', 4, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(4001, 'Đồ gia dụng', 4, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(4002, 'Đồ gia dụng lớn', 4, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(4003, 'Thiết bị thương mại', 4, 0, null, now(), now());

-- Trang phục nữ & Đồ lót
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(5000, 'Áo nữ', 5, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(5001, 'Quần nữ', 5, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(5002, 'Váy nữ', 5, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(5003, 'Trang phục đặc biệt dành cho nữ', 5, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(5004, 'Bộ vét và quần yếm nữ', 5, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(5005, 'Đồ lót nữ', 5, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(5006, 'Đồ ngủ nữ', 5, 1, null, now(), now());

-- Thời trang Hồi giáo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6000, 'Khăn trùm đầu che đầu và cổ (Hijab)', 6, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6001, 'Trang phục phụ nữ Hồi giáo', 6, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6002, 'Trang phục đàn ông Hồi giáo', 6, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6003, 'Đồ mặc ngoài', 6, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6004, 'Trang phục trẻ em Hồi giáo', 6, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6005, 'Phụ kiện Hồi giáo', 6, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6006, 'Trang phục & trang bị cầu nguyện', 6, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6007, 'Đồ thể thao Hồi giáo', 6, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(6008, 'Thiết bị Umroh', 6, 1, null, now(), now());

-- Giày
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(7000, 'Giày nữ', 7, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(7001, 'Giày nam', 7, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(7002, 'Phụ kiện giày', 7, 0, null, now(), now());

-- Chăm sóc sắc đẹp & Chăm sóc cá nhân
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8000, 'Trang điểm', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8001, 'Chăm sóc da', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8002, 'Chăm sóc & Tạo kiểu tóc', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8003, 'Chăm sóc tay, chân & móng', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8004, 'Đồ tắm & Chăm sóc cơ thể', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8005, 'Sản phẩm chăm sóc dành cho nam giới', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8006, 'Thiết bị chăm sóc cá nhân', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8007, 'Chăm sóc mắt & tai', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8008, 'Chăm sóc mũi & răng miệng', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8009, 'Sản phẩm chăm sóc dành cho phụ nữ', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8010, 'Nước hoa', 8, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(8011, 'Chăm sóc cá nhân đặc biệt', 8, 0, null, now(), now());

-- Điện thoại & Đồ điện tử
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9000, 'Phụ kiện điện thoại', 9, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9001, 'Camera & Nhiếp ảnh', 9, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9002, 'Âm thanh & Video', 9, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9003, 'Chơi game & Bảng điều khiển', 9, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9004, 'Thiết bị thông minh & Thiết bị đeo', 9, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9005, 'Thiết bị giáo dục', 9, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9006, 'Phụ kiện đa năng', 9, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9007, 'Phụ kiện máy tính bảng & máy tính', 9, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(9008, 'Điện thoại & Máy tính bảng', 9, 0, null, now(), now());

-- Máy tính & Thiết bị Văn phòng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(10000, 'Máy tính để bàn, Máy tính xách tay & Máy tính bảng', 10, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(10001, 'Linh kiện máy tính để bàn & máy tính xách tay', 10, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(10002, 'Thiết bị ngoại vi & Phụ kiện', 10, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(10003, 'Phần mềm & Bộ nhớ', 10, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(10004, 'Các thành phần mạng', 10, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(10005, 'Thiết bị văn phòng', 10, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(10006, 'Văn phòng phẩm & Vật tư', 10, 0, null, now(), now());

-- Đồ dùng cho thú cưng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11000, 'Thức ăn cho chó & mèo', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11001, 'Nội thất cho chó & mèo', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11002, 'Quần áo cho chó & mèo', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11003, 'Cát vệ sinh cho chó & mèo', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11004, 'Đồ chải chuốt cho chó & mèo', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11005, 'Chăm sóc sức khỏe cho chó & mèo', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11006, 'Phụ kiện cho chó & mèo', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11007, 'Vật tư dành cho cá & loài sống dưới nước', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11008, 'Vật tư dành cho bò sát & động vật lưỡng cư', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11009, 'Vật tư dành cho chim', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11010, 'Vật tư dành cho động vật nhỏ', 11, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(11011, 'Vật tư cho gia cầm & gia súc', 11, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12000, 'Quần áo & Giày trẻ em', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12001, 'Những vật dụng cần thiết khi cho bé đi du lịch', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12002, 'Cho bú & Cho ăn', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12003, 'Nội thất cho trẻ em', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12004, 'An toàn cho bé', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12005, 'Đồ chơi trẻ em', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12006, 'Chăm sóc bé & sức khỏe', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12007, 'Sữa công thức & Thực phẩm cho trẻ', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12008, 'Vật tư cho mẹ', 12, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(12009, 'Phụ kiện thời trang cho em bé', 12, 0, null, now(), now());

-- Thể thao & Ngoài trời
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13000, 'Đồ thể thao & ngoài trời', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13001, 'Giày thể thao', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13002, 'Phụ kiện thể thao & ngoài trời', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13003, 'Thiết bị các môn thể thao bóng', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13004, 'Thiết bị thể thao dưới nước', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13005, 'Thiết bị thể thao mùa đông', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13006, 'Thiết bị tập thể hình', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13007, 'Thiết bị cắm trại & đi bộ đường dài', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13008, 'Thiết bị giải trí ngoài trời & thư giãn', 13, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(13009, 'Đồ bơi, đồ lướt sóng & đồ lặn', 13, 0, null, now(), now());

-- Đồ chơi & sở thích
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14000, 'Búp bê & Gấu bông', 14, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14001, 'Đồ chơi giáo dục', 14, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14002, 'Đồ chơi thể thao & ngoài trời', 14, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14003, 'Đồ chơi điện & điều khiển từ xa', 14, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14004, 'Trò chơi & Ghép hình', 14, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14005, 'Đồ chơi cổ điển & mới lạ', 14, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14006, 'Nhạc cụ & Phụ kiện', 14, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(14007, 'DIY', 14, 0, null, now(), now());

-- Đồ nội thất
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(15000, 'Nội thất trong nhà', 15, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(15001, 'Nội thất ngoài trời', 15, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(15002, 'Nội thất trẻ em', 15, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(15003, 'Nội thất thương mại', 15, 0, null, now(), now());

-- Công cụ & Phần cứng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16000, 'Dụng cụ điện', 16, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16001, 'Dụng cụ cầm tay', 16, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16002, 'Dụng cụ đo lường', 16, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16003, 'Dụng cụ làm vườn', 16, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16004, 'Thiết bị hàn', 16, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16005, 'Bộ sắp xếp dụng cụ', 16, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16006, 'Phần cứng', 16, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(16007, 'Máy bơm & Hệ thống đường ống', 16, 0, null, now(), now());

-- Sửa chữa nhà cửa
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17000, 'Năng lượng mặt trời & gió', 17, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17001, 'Đèn & hệ thống chiếu sáng', 17, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17002, 'Đồ dùng & thiết bị điện', 17, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17003, 'Đồ đạc nhà bếp', 17, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17004, 'Hệ thống nhà thông minh', 17, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17005, 'Vật tư xây dựng', 17, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17006, 'Đồ đạc nhà tắm', 17, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17007, 'An ninh & An toàn', 17, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(17008, 'Vật dụng làm vườn', 17, 0, null, now(), now());

-- Ô tô & xe máy
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18000, 'Bộ phận thay thế cho ô tô', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18001, 'Linh kiện mô tô', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18002, 'Motorcycles', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18003, 'Thiết bị điện tử trên ô tô', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18004, 'Phụ kiện bên ngoài ô tô', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18005, 'Phụ kiện bên trong ô tô', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18006, 'Dụng cụ sửa chữa ô tô', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18007, 'Đèn xe', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18008, 'Xe Quads, Xe lưu động & Thuyền', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18009, 'Rửa & Bảo dưỡng ô tô', 18, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(18010, 'Phụ kiện xe máy', 18, 0, null, now(), now());

-- Phụ kiện thời trang
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(19000, 'Nối tóc & tóc giả', 19, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(19001, 'Vải may váy', 19, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(19002, 'Phụ kiện quần áo', 19, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(19003, 'Kính mắt', 19, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(19004, 'Đồng hồ & Phụ kiện', 19, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(19005, 'Phục sức & phụ kiện', 19, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(19006, 'Phụ kiện cài đầu', 19, 0, null, now(), now());

-- Đồ ăn & Đồ uống
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(20000, 'Sữa và bơ sữa', 20, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(20001, 'Đồ uống', 20, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(20002, 'Thực phẩm ăn liền', 20, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(20003, 'Kẹp & Đồ dùng nấu ăn cần thiết', 20, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(20004, 'Nướng bánh', 20, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(20005, 'Đồ ăn vặt', 20, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(20006, 'Thực phẩm tươi & đông lạnh', 20, 0, null, now(), now());

-- Sức khỏe
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(21000, 'Thực phẩm bổ sung', 21, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(21001, 'Vật tư y tế', 21, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(21002, 'Thuốc & Phương pháp điều trị thay thế', 21, 0, null, now(), now());

-- Sách, tạp chí & âm thanh
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(22000, 'Khoa học xã hội và nhân văn', 22, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(22001, 'Văn học & Nghệ thuật', 22, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(22002, 'Kinh tế & Quản lý', 22, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(22003, 'Sách dành cho trẻ em & trẻ sơ sinh', 22, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(22004, 'Khoa học & Công nghệ', 22, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(22005, 'Phong cách sống & Sở thích', 22, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(22006, 'Giáo dục & Trường học', 22, 0, null, now(), now());

-- Thời trang trẻ em
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(23000, 'Quần áo bé trai', 23, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(23001, 'Quần áo bé gái', 23, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(23002, 'Giày dép bé trai', 23, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(23003, 'Giày dép bé gái', 23, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(23004, 'Phụ kiện thời trang cho trẻ em', 23, 0, null, now(), now());

-- Trang phục nam & Đồ lót
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(24000, 'Áo nam', 24, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(24001, 'Quần nam', 24, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(24002, 'Trang phục đặc biệt dành cho nam', 24, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(24003, 'Đồ lót nam', 24, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(24004, 'Đồ ngủ nam', 24, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(24005, 'Bộ vét và quần yếm nam', 24, 1, null, now(), now());

-- Hành lý & Túi xách
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(25000, 'Túi xách nữ', 25, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(25001, 'Túi xách nam', 25, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(25002, 'Hành lý & Túi du lịch', 25, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(25003, 'Túi đa năng', 25, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(25004, 'Phụ kiện túi', 25, 0, null, now(), now());

-- Bộ sưu tập
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(26000, 'Khung giường & đầu giường', 26, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(26000, 'Bộ sưu tập thể thao', 26, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(26000, 'Giải trí', 26, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27000, 'Bạch kim & Vàng Carat', 27, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27001, 'Vàng', 27, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27002, 'Bạc', 27, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27003, 'Pha lê tự nhiên', 27, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27004, 'Pha lê nhân tạo', 27, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27005, 'Ngọc bích', 27, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27006, 'Hồng ngọc, Sapphire & Ngọc lục bảo', 27, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27007, 'Đá bán quý', 27, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(27008, 'Đá quý nhân tạo', 27, 0, null, now(), now());

-- Đồ gia dụng > Đồ đựng trong nhà
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(28000, 'Hộp & Thùng', 1000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(28001, 'Giỏ', 1000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(28002, 'Móc treo & Kẹp', 1000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(28003, 'Túi', 1000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(28004, 'Hộp để & Giá', 1000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(28005, 'Chai & Lọ', 1000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(28006, 'Móc & Giá xoay', 1000, 0, null, now(), now());

-- Đồ gia dụng > Đồ dùng phòng tắm
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29000, 'Bàn chải vệ sinh & cây thông bồn cầu', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29001, 'Đệm ngồi bồn cầu', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29002, 'Máy lấy xà phòng', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29003, 'Cốc để nhà tắm', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29004, 'Hộp để bàn chải đánh răng', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29005, 'Rèm & Thanh treo rèm tắm', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29006, 'Khay đựng xà phòng', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29007, 'Bồn tắm & Bồn ngâm chân', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29008, 'Khăn tắm', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29009, 'Đồ trong phòng tắm', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29010, 'Bộ phòng tắm', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29011, 'Phụ kiện nhà tắm', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29012, 'Thảm phòng tắm', 1001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(29013, 'Mũ tắm', 1001, 0, null, now(), now());

-- Đồ gia dụng > Trang trí nội thất
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30000, 'Móc & Giá', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30001, 'Hoa, cây & trái cây trang trí', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30002, 'Bình hoa & đồ lót bình', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30003, 'Bìa mô hình', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30004, 'Hộp nhạc', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30005, 'Thảm trang trí', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30006, 'Đồ treo trang trí', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30007, 'Nến', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30008, 'Khay giữ nến', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30009, 'Gương', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30010, 'Nam châm tủ lạnh', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30011, 'Đồ trang trí phong thủy', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30012, 'Đồ trang trí theo tôn giáo', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30013, 'Tấm & Biển hiệu', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30014, 'Album ảnh', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30015, 'Lợn đất', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30016, 'Quạt tay', 1002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(30017, 'Áp phích & tài liệu in', 1002, 0, null, now(), now());

-- Đồ gia dụng > Đồ gia dụng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31000, 'Nước hoa để phòng', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31001, 'Đồ vệ sinh nhà cửa', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31002, 'Giấy vệ sinh & giấy lau', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31003, 'Chắn bụi', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31004, 'Tấm chắn nước bắn', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31005, 'Xô', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31006, 'Bọt biển & miếng cọ rửa', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31007, 'Cuộn giấy & khăn lau nhà bếp', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31008, 'Khăn giấy & khăn ăn & khăn lau', 1003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(31009, 'Bọc giày dùng một lần', 1003, 0, null, now(), now());

-- Đồ gia dụng > Dụng cụ & phụ kiện giặt là
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(32000, 'Túi giặt', 1004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(32001, 'Dây phơi', 1004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(32002, 'Bàn ủi', 1004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(32003, 'Giá phơi đồ', 1004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(32004, 'Bóng & Đĩa giặt', 1004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(32005, 'Ván giặt', 1004, 0, null, now(), now());

-- Đồ gia dụng > Đồ dùng cho lễ hội & bữa tiệc
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(33000, 'Đồ trang trí lễ hội', 1005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(33001, 'Bóng bay', 1005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(33002, 'Bình xịt, kim tuyến & băng giấy màu', 1005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(33003, 'Phông nền & Biểu ngữ', 1005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(33004, 'Bộ đồ ăn dùng một lần', 1005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(33005, 'Nón tiệc, mặt nạ & phụ kiện', 1005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(33006, 'Túi & Quà tặng dự tiệc', 1005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(33007, 'Đồ trang trí bánh', 1005, 0, null, now(), now());

-- Đồ gia dụng > Đồ gia dụng khác
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(34000, 'Quần áo đi mưa', 1006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(34001, 'Ô dù', 1006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(34002, 'Áo mưa', 1006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(34003, 'Ủng cao su chống nước', 1006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(34004, 'Túi chườm nóng', 1006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(34005, 'Phụ kiện bật lửa', 1006, 0, null, now(), now());

-- Đồ dùng nhà bếp > Đồ để uống trà & cà phê
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35000, 'Bình cà phê', 2000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35001, 'Bộ phin pha cà phê', 2000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35002, 'Bình sữa', 2000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35003, 'Dụng cụ pha cà phê', 2000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35004, 'Túi lọc cà phê', 2000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35005, 'Máy xay cà phê bằng tay', 2000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35006, 'Ấm trà', 2000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35007, 'Bộ thưởng trà', 2000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(35008, 'Dụng cụ pha trà', 2000, 0, null, now(), now());

-- Đồ dùng nhà bếp > Dao nhà bếp
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(36000, 'Dao nhà bếp', 2001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(36001, 'Thớt', 2001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(36002, 'Dụng cụ mài dao', 2001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(36003, 'Hộp để dao', 2001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(36004, 'Kéo nhà bếp', 2001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(36005, 'Bộ hộp đựng dao', 2001, 0, null, now(), now());

-- Đồ dùng nhà bếp > Tiệc nước barbecue
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(37000, 'Vỉ nướng', 2002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(37001, 'Đồ dùng nướng thịt', 2002, 0, null, now(), now());

-- Đồ dùng nhà bếp > Đồ dùng quầy rượu & Đồ uống rượu
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(38000, 'Đồ dùng quầy rượu', 2003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(38001, 'Giá để rượu', 2003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(38002, 'Bộ đồ dùng ở quầy rượu', 2003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(38003, 'Thiết bị làm rượu vang', 2003, 0, null, now(), now());

-- Đồ dùng nhà bếp > Đồ làm bánh
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(39000, 'Khay & Khuôn nướng', 2004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(39001, 'Dụng cụ làm bánh', 2004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(39002, 'Bộ dụng cụ làm bánh', 2004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(39003, 'Găng tay bắc bếp', 2004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(39004, 'Khay nướng bánh', 2004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(39005, 'Dụng cụ trang trí', 2004, 0, null, now(), now());

-- Đồ dùng nhà bếp > Đồ nấu ăn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(40000, 'Nồi', 2005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(40001, 'Bộ dụng cụ nấu ăn', 2005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(40002, 'Xoong & Chảo', 2005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(40003, 'Nồi hấp', 2005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(40004, 'Nồi áp suất', 2005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(40005, 'Đồ nấu ăn dùng một lần', 2005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(40006, 'Phụ kiện dụng cụ nấu nướng', 2005, 0, null, now(), now());

-- Đồ dùng nhà bếp > Dao kéo & Bộ đồ ăn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41000, 'Miếng lót & Đế lót', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41001, 'Hộp đựng cơm', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41002, 'Đũa', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41003, 'Đĩa', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41004, 'Bát', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41005, 'Dĩa', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41006, 'Bộ đồ ăn', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41007, 'Dao', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41008, 'Thìa', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41009, 'Khăn ăn', 2006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(41010, 'Đế đỡ bộ đồ ăn', 2006, 0, null, now(), now());

-- Đồ dùng nhà bếp > Bộ đồ uống
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(42000, 'Phích', 2007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(42001, 'Cốc thủy tinh', 2007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(42002, 'Cốc', 2007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(42003, 'Phụ kiện bộ đồ uống', 2007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(42004, 'Bình nước', 2007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(42005, 'Chén & Đĩa', 2007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(42006, 'Ấm & Bình', 2007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(42007, 'Chai rượu để trong túi bên hông', 2007, 0, null, now(), now());

-- Đồ dùng nhà bếp > Đồ dùng & Dụng cụ nhà bếp
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43000, 'Thùng bảo quản', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43001, 'Đồ đựng rau củ quả', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43002, 'Dụng cụ đo lường', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43003, 'Cái đánh lửa', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43004, 'Đồng hồ hẹn giờ trong bếp', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43005, 'Dụng cụ chế biến thịt & thịt gia cầm', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43006, 'Sàng và Chao', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43007, 'Khác', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43008, 'Dụng cụ nấu ăn', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43009, 'Đồ đựng gia vị', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43010, 'Nhiệt kế nhà bếp', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43011, 'Dụng cụ làm pasta & pizza', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43012, 'Dụng cụ làm kem', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43013, 'Dụng cụ chế biến các món trứng', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43014, 'Dụng cụ chế biến hải sản', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43015, 'Dụng cụ chế biến đồ uống', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43016, 'Dụng cụ mở', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43017, 'Máy lấy dầu', 2008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(43018, 'Dụng cụ nạo & Dụng cụ cắt', 2008, 0, null, now(), now());

-- Hàng dệt & Đồ nội thất mềm > Chăn ga gối đệm
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44000, 'Chăn', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44001, 'Khăn trải giường & Vỏ gối', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44002, 'Mền', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44003, 'Gối nằm & gối tựa', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44004, 'Phụ kiện giường', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44005, 'Bộ chăn ga gối đệm', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44006, 'Chăn lông vịt', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44007, 'Khăn trải giường', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44008, 'Váy giường', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44009, 'Tấm đệm & Nệm', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44010, 'Vỏ chăn', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44011, 'Màn chống muỗi', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44012, 'Bộ chăn ga gối đệm cho trẻ em', 3000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(44013, 'Thảm & miếng đệm làm mát', 3000, 0, null, now(), now());

-- Hàng dệt & Đồ nội thất mềm > Hàng dệt gia dụng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(45000, 'Bọc ghế', 3001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(45001, 'Khăn trải bàn & Thảm trang trí', 3001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(45002, 'Thảm', 3001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(45003, 'Gối đệm, nệm & áo gối', 3001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(45004, 'Bọc ghế sofa', 3001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(45005, 'Rèm cửa', 3001, 0, null, now(), now());

-- Hàng dệt & Đồ nội thất mềm > Vải & Đồ may
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(46000, 'Bộ dụng cụ may thủ công', 3002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(46001, 'Bộ dụng cụ may vá', 3002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(46002, 'Dệt & Vải', 3002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(46003, 'Phụ kiện may vá & Kim chỉ', 3002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(46004, 'Máy may', 3002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(46005, 'Chỉ', 3002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(46006, 'Kim', 3002, 0, null, now(), now());

-- Thiết bị gia dụng > Dụng cụ nhà bếp
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47000, 'Lò nướng bánh', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47001, 'Nồi cơm & Nồi áp suất', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47002, 'Máy hấp điện', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47003, 'Máy hút chân không', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47004, 'Lò vi sóng', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47005, 'Lò nướng để bàn', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47006, 'Ấm điện', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47007, 'Máy ép trái cây & Máy xay sinh tố', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47008, 'Máy pha cà phê & Phụ kiện', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47009, 'Máy làm bánh mì', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47010, 'Máy trộn', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47011, 'Bộ lọc nước', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47012, 'Máy làm mát & Máy lấy nước', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47013, 'Máy xay chế biến thực phẩm', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47014, 'Nồi chiên không dầu', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47015, 'Các bộ phận của dụng cụ nhà bếp', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47016, 'Bếp từ', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47017, 'Bếp nướng điện', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47018, 'Bình nóng lạnh', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47019, 'Thiết bị nhà bếp chuyên dụng', 4000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(47020, 'Máy xử lý chất thải thực phẩm', 4000, 0, null, now(), now());

-- Thiết bị gia dụng > Đồ gia dụng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy lọc không khí', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy tạo độ ẩm', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy sưởi', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Bàn là', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy hút bụi & Robot quét nhà', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Quạt', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Các bộ phận của thiết bị gia dụng', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy là hơi', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy hút ẩm', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy lau cửa sổ chạy bằng điện', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Chổi điện cọ rửa', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Cây lau nhà chạy bằng điện', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy sấy quần áo & giày', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy diệt muỗi điện tử', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy trả lời', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Chăn điện', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy tẩy xơ vải', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy sấy tay', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy tiệt trùng gia đình', 4001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(48000, 'Máy đánh bóng giày điện', 4001, 0, null, now(), now());

-- Thiết bị gia dụng > Đồ gia dụng lớn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49000, 'Ti vi', 4002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49001, 'Máy điều hoà', 4002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49002, 'Bình nước nóng', 4002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49003, 'Máy giặt & Máy sấy', 4002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49004, 'Tủ lạnh & Tủ đông', 4002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49005, 'Máy hút mùi', 4002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49006, 'Lò nướng, Bếp gas & Bếp từ', 4002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49007, 'Máy rửa bát', 4002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(49008, 'Bộ phận & phụ kiện của thiết bị lớn', 4002, 0, null, now(), now());

-- Thiết bị gia dụng > Thiết bị thương mại
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(50000, 'Thiết bị giặt là', 4003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(50001, 'Thiết bị vệ sinh', 4003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(50002, 'Bếp lò thương mại', 4003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(50003, 'Quạt & Thiết bị hút', 4003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(50004, 'Thiết bị làm lạnh', 4003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(50005, 'Thiết bị chế biến thực phẩm', 4003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(50006, 'Bộ phận của thiết bị thương mại', 4003, 0, null, now(), now());

-- Thiết bị gia dụng > Thiết bị thương mại
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(51000, 'Thiết bị giặt là', 4004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(51001, 'Thiết bị vệ sinh', 4004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(51002, 'Bếp lò thương mại', 4004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(51003, 'Quạt & Thiết bị hút', 4004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(51004, 'Thiết bị làm lạnh', 4004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(51005, 'Thiết bị chế biến thực phẩm', 4004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(51006, 'Bộ phận của thiết bị thương mại', 4004, 0, null, now(), now());

-- Trang phục nữ & Đồ lót > Áo nữ (52000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52000, 'Áo cánh & Áo sơ mi', 5000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52001, 'Áo khoác & Áo choàng', 5000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52002, 'Áo gilê', 5000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52003, 'Hàng dệt kim', 5000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52004, 'Áo hoodie & Áo len', 5000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52005, 'Áo thun', 5000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52006, 'Áo vest, Tank Top & Áo quây', 5000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52007, 'Bodysuit', 5000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(52008, 'Áo Polo', 5000, 1, null, now(), now());
-- Trang phục nữ & Đồ lót > Quần nữ (53000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(53000, 'Chân váy', 5001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(53001, 'Quần short', 5001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(53002, 'Quần legging', 5001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(53003, 'Quần jean', 5001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(53004, 'Quần dài', 5001, 1, null, now(), now());
-- Trang phục nữ & Đồ lót > Váy nữ (54000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(54000, 'Váy cưới', 5002, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(54001, 'Váy dự tiệc', 5002, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(54002, 'Váy thường mặc', 5002, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(54003, 'Váy phù dâu', 5002, 1, null, now(), now());
-- Trang phục nữ & Đồ lót > Trang phục đặc biệt dành cho nữ (55000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(55000, 'Trang phục & Phụ kiện', 5003, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(55001, 'Quần áo bảo hộ lao động & Đồng phục', 5003, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(55002, 'Trang phục truyền thống', 5003, 1, null, now(), now());
-- Trang phục nữ & Đồ lót > Bộ vét và quần yếm nữ (56000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(56000, 'Quần yếm', 5004, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(56001, 'Bộ', 5004, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(56002, 'Bộ vét', 5004, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(56003, 'Bộ đồ cho cặp đôi', 5004, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(56004, 'Bộ đồ cho gia đình', 5004, 1, null, now(), now());
-- Trang phục nữ & Đồ lót > Đồ lót nữ (57000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57000, 'Quần lót', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57001, 'Đồ lót định hình', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57002, 'Áo lót', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57003, 'Quần bó', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57004, 'Đồ giữ ấm mặc bên trong', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57005, 'Phụ kiện áo lót', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57006, 'Đồ nội y', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57007, 'Tất', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57008, 'Áo lót không gọng', 5005, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(57009, 'Bộ đồ lót', 5005, 1, null, now(), now());
-- Trang phục nữ & Đồ lót > Đồ ngủ nữ (58000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(58000, 'Áo liền quần rộng', 5006, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(58001, 'Bộ ngủ', 5006, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(58002, 'Áo choàng tắm & Áo choàng', 5006, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(58003, 'Váy ngủ', 5006, 1, null, now(), now());
-- Thời trang Hồi giáo > Khăn trùm đầu che đầu và cổ (Hijab) (59000)
-- Thời trang Hồi giáo > Trang phục phụ nữ Hồi giáo (60000)
-- Thời trang Hồi giáo > Trang phục đàn ông Hồi giáo (61000)
-- Thời trang Hồi giáo > Đồ mặc ngoài (62000)
-- Thời trang Hồi giáo > Trang phục trẻ em Hồi giáo (63000)
-- Thời trang Hồi giáo > Phụ kiện Hồi giáo (64000)
-- Thời trang Hồi giáo > Trang phục & trang bị cầu nguyện (65000)
-- Thời trang Hồi giáo > Đồ thể thao Hồi giáo (66000)
-- Thời trang Hồi giáo > Thiết bị Umroh (67000)

-- Giày > Giày nữ (68000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68000, 'Giày oxford', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68001, 'Cao gót', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68002, 'Dép lê', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68003, 'Bốt', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68004, 'Giày lao động & bảo hộ', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68005, 'Giày Mary Jane', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68006, 'Giày thể thao đơn giản', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68007, 'Đế bằng', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68008, 'Dép xăng đan & Dép tông', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68009, 'Giày lười', 7000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(68010, 'Giày hở gót & Guốc', 7000, 0, null, now(), now());
-- Giày > Giày nam (69000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69001, 'Giày thể thao đơn giản', 7001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69002, 'Dép xăng đan & Dép tông', 7001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69003, 'Giày oxford', 7001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69004, 'Dép lê', 7001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69005, 'Bốt', 7001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69006, 'Giày lao động & bảo hộ', 7001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69007, 'Giày đi dự tiệc', 7001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69008, 'Giày lười & giày đế bằng', 7001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(69009, 'Giày hở gót & Guốc', 7001, 0, null, now(), now());
-- Giày > Phụ kiện giày (70000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(70000, 'Lót giày & Lót gót chân', 7002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(70001, 'Lót bảo vệ mũi giày & bốt', 7002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(70002, 'Phụ kiện trang trí giày', 7002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(70003, 'Đón gót & Phom giày', 7002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(70004, 'Dây giày', 7002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(70005, 'Vệ sinh & Bảo quản', 7002, 0, null, now(), now());

-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Trang điểm (71000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71000, 'Bộ trang điểm', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71001, 'Son môi & Son bóng', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71002, 'Dụng cụ trang điểm', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71003, 'Kem BB và Kem CC', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71004, 'Xịt cố định lớp trang điểm', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71005, 'Kem che khuyết điểm & Phấn nền', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71006, 'Phấn tạo khối & Phấn bắt sáng', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71007, 'Lớp nền trang điểm và Kem lót', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71008, 'Phấn', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71009, 'Phấn má', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71010, 'Trang điểm cơ thể', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71011, 'Mascara', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71012, 'Chì & Gel kẻ lông mày', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71013, 'Kẻ mắt & Kẻ viền môi', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71014, 'Phấn mắt', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71015, 'Tẩy trang', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71016, 'Hình xăm tạm thời', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71017, 'Mí mắt giả & keo', 8000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(71018, 'Xóa hình xăm', 8000, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Chăm sóc da (72000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72000, 'Sản phẩm đặc trị môi', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72001, 'Kem chống nắng cho da mặt', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72002, 'Toner', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72003, 'Sữa rửa mặt', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72004, 'Kem massage mặt', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72005, 'Bộ dụng cụ chăm sóc da', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72006, 'Tẩy tế bào chết & Lột da mặt', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72007, 'Kem dưỡng ẩm & Xịt thơm', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72008, 'Mặt nạ', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72009, 'Serum & Tinh chất', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72010, 'Sản phẩm đặc trị mắt', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72011, 'Sản phẩm đặc trị mũi', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72012, 'Dụng cụ chăm sóc da', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72013, 'Sản phẩm đặc trị mụn', 8001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(72014, 'Dầu thuộc da & tự thuộc da', 8001, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Chăm sóc & Tạo kiểu tóc (73000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73000, 'Dầu gội & Dầu xả', 8002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73001, 'Keo bọt & Gel', 8002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73002, 'Thuốc nhuộm tóc', 8002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73003, 'Dụng cụ tạo kiểu không nhiệt', 8002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73004, 'Sản phẩm chống rụng tóc', 8002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73005, 'Điều trị tóc / điều trị da đầu', 8002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73006, 'Bột tạo kiểu tóc', 8002, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Chăm sóc tay, chân & móng (73000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73500, 'Mặt nạ tay & chân', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73501, 'Sản phẩm kiểm soát mùi hôi chân', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73502, 'Sữa dường, kem & tẩy tế bào chết cho tay', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73503, 'Nước rửa tay', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73504, 'Vẽ móng & Sơn móng tay', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73505, 'Dụng cụ làm móng tay & chân', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73506, 'Bộ dụng cụ sơn móng tay', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73507, 'Điều trị móng', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73508, 'Chai khử trùng cầm tay', 8003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(73509, 'Nước tẩy sơn móng tayy', 8003, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Đồ tắm & Chăm sóc cơ thể (74000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74000, 'Bộ dụng cụ chăm sóc cơ thể', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74001, 'Kem & Sữa dưỡng thể', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74002, 'Sữa tắm & Xà phòng', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74003, 'Phấn rôm', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74004, 'Kem, wax và nước cạo râu', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74005, 'Khử mùi', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74006, 'Tẩy tế bào chết & Lột da cơ thể', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74007, 'Chăm sóc ngực', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74008, 'Kem định hình cơ thể', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74009, 'Dụng cụ xoa bóp thủ công', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74010, 'Mặt nạ cơ thể', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74011, 'Dầu xoa bóp & dầu dưỡng thể', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74012, 'Kem chống nắng', 8004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(74013, 'Chăm sóc cổ', 8004, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Sản phẩm chăm sóc dành cho nam giới (75000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(75000, 'Đồ tắm & Chăm sóc cơ thể', 8005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(75001, 'Đồ trang điểm', 8005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(75002, 'Chăm sóc da', 8005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(75003, 'Bọt cạo râu & Nước hoa sau khi cạo râu', 8005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(75004, 'Chăm sóc tóc', 8005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(75005, 'Dao cạo', 8005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(75006, 'Bộ dụng cụ cạo', 8005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(75007, 'Phụ kiện cạo thủ công', 8005, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Thiết bị chăm sóc cá nhân (76000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76000, 'Thiết bị massage', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76001, 'Thiết bị Làm đẹp cơ thể', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76002, 'Dao cạo lông mày điện', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76003, 'Thiết bị làm đẹp da mặt', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76004, 'Phụ kiện', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76005, 'Máy tẩy lông', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76006, 'Ghế mát-xa', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76007, 'Dao cạo râu điện', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76008, 'Bàn chải đánh răng điện', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76009, 'Máy tăm nước', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76010, 'Máy sấy tóc', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76011, 'Máy uốn & ép tóc', 8006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(76012, 'Máy xén & Tông đơ cắt tóc', 8006, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Chăm sóc mắt & tai (77000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(77000, 'Dung dịch ngâm rửa kính áp tròng & Thuốc nhỏ mắt', 8007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(77001, 'Kính áp tròng', 8007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(77002, 'Bộ dụng cụ cho kính áp tròng', 8007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(77003, 'Mặt nạ ngủ', 8007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(77004, 'Kính đọc sách', 8007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(77005, 'Thuốc nhỏ tai', 8007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(77006, 'Sản phẩm lấy ráy tai', 8007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(77007, 'Nút tai', 8007, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Chăm sóc mũi & răng miệng (78000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78000, 'Làm trắng răng', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78001, 'Bộ dụng cụ chăm sóc răng miệng', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78002, 'Xịt miệng', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78003, 'Nước súc miệng', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78004, 'Kem đánh răng', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78005, 'Bàn chải đánh răng', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78006, 'Chỉ & tăm nha khoa', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78007, 'Chăm sóc răng miệng', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78008, 'Vệ sinh mũi', 8008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78009, 'Phụ kiện chỉnh nha', 8008, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Sản phẩm chăm sóc dành cho phụ nữ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78500, 'Kem bôi âm đạo', 8009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78501, 'Dung dịch vệ sinh phụ nữ', 8009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78502, 'Khăn vệ sinh', 8009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78503, 'Bình xịt & kem mãn kinh', 8009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78504, 'Băng vệ sinh', 8009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78505, 'Cốc nguyệt san', 8009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(78506, 'Sản phẩm khử mùi vùng kín', 8009, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Nước hoa (79000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(79000, 'Nước hoa nam', 8010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(79001, 'Nước hoa unisex', 8010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(79002, 'Nước hoa nữ', 8010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(79003, 'Bộ nước hoa', 8010, 0, null, now(), now());
-- Chăm sóc sắc đẹp & Chăm sóc cá nhân > Chăm sóc cá nhân đặc biệt (80000)
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(80000, 'Vá nhiệt', 8011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(80001, 'Túi chườm nước đá', 8011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(80002, 'Tã người lớn', 8011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(80003, 'Thuốc đuổi côn trùng', 8011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(80004, 'Tấm lót giường thấm nước tiểu', 8011, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Phụ kiện điện thoại
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81000, 'Ốp, miếng bảo vệ màn hình & miếng dán', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81001, 'Pin điện thoại', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81002, 'Dây đeo & Móc treo điện thoại', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81003, 'Cáp, Bộ sạc & Bộ điều hợp', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81004, 'Bộ phận của điện thoại di động', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81005, 'Phụ kiện chụp ảnh chân dung', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81006, 'Ống kính & Đèn flash di động', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81007, 'Thẻ sim & Phụ kiện', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81008, 'Giá đỡ & Chân đỡ điện thoại', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81009, 'Thiết bị casting', 9000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(81010, 'Pin ѕạc dự phòng', 9000, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Camera & Nhiếp ảnh
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82000, 'Phụ kiện camera', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82001, 'Camera ngắm & chụp', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82002, 'Camera không gương lật', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82003, 'Camera hành động', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82004, 'Máy quay video', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82005, 'Camera chụp ảnh lấy liền', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82006, 'Máy phim', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82007, 'Máy ảnh DSLR', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82008, 'Hệ thống & Camera an ninh', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82009, 'Ống kính máy ảnh', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82010, 'Drone & Phụ kiện', 9001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(82011, 'Bảo quản camera', 9001, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Âm thanh & Video
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83000, 'Tai nghe trong & Tai nghe', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83001, 'Loa', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83002, 'Bộ đàm', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83003, 'Micrô', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83004, 'Máy chiếu', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83005, 'Hệ thống rạp chiếu phim tại nhà', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83006, 'Máy nghe nhạc MP3 & MP4', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83007, 'Đầu đĩa CD & DVD', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83008, 'Máy ghi âm', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83009, 'Radio & Máy cassette', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83010, 'Amply & Bàn trộn', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83011, 'Máy thu AV', 9002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(83012, 'Phụ kiện âm thanh & video', 9002, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Chơi game & Bảng điều khiển
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(84000, 'Bảng điều khiển trò chơi video tại nhà', 9003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(84001, 'Bảng điều khiển trò chơi cầm tay', 9003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(84002, 'Phụ kiện bảng điều khiển', 9003, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Thiết bị thông minh & Thiết bị đeo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(85000, 'Phụ kiện đeo', 9004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(85001, 'Đồng hồ thông minh', 9004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(85002, 'Kính thông minh', 9004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(85003, 'Vòng đeo tay thể thao thông minh', 9004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(85004, 'Thiết bị định vị GPS', 9004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(85005, 'Thiết bị VR', 9004, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Thiết bị giáo dục
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(86000, 'Máy đọc sách điện tử', 9005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(86001, 'Từ điển điện tử', 9005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(86002, 'Bộ phận & phụ kiện thiết bị giáo dục', 9005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(86003, 'Bảng viết điện tử', 9005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(86004, 'Sổ tay điện tử', 9005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(86005, 'Bút & Thiết bị đọc', 9005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(86006, 'Thiết bị học tập điện tử', 9005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(86007, 'Bút thông minh & kỹ thuật số', 9005, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Phụ kiện đa năng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(87000, 'Máy hút chân không USB', 9006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(87001, 'Wi-Fi bỏ túi', 9006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(87002, 'Đèn USB & di động', 9006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(87003, 'Quạt USB & di động', 9006, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Phụ kiện máy tính bảng & máy tính
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(88000, 'Vỏ & Ốp máy tính bảng', 9007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(88001, 'Bộ sạc & Bộ điều hợp máy tính bảng', 9007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(88002, 'Bộ phận máy tính bảng', 9007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(88003, 'Cường lực máy tính bảng', 9007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(88004, 'Bàn phím máy tính bảng', 9007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(88005, 'Giá đỡ & đế máy tính bảng', 9007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(88006, 'Bút cảm ứng', 9007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(88007, 'Túi đựng máy tính bảng', 9007, 0, null, now(), now());

-- Điện thoại & Đồ điện tử > Điện thoại & Máy tính bảng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(89000, 'Điện thoại di động', 9008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(89001, 'Máy tính bảng', 9008, 0, null, now(), now());

-- Máy tính & Thiết bị Văn phòng > Máy tính để bàn, Máy tính xách tay & Máy tính bảng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(90000, 'Máy tính xách tay', 10000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(90001, 'Máy tính để bàn', 10000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(90002, 'Máy chủ', 10000, 0, null, now(), now());

-- Máy tính & Thiết bị Văn phòng > Linh kiện máy tính để bàn & máy tính xách tay
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91000, 'Màn hình', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91001, 'Quạt & Tản nhiệt', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91002, 'Bộ xử lý', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91003, 'Bo mạch chủ', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91004, 'Card đồ họa', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91005, 'Bộ cấp nguồn', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91006, 'RAM', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91007, 'UPS & Ổn áp', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91008, 'Ổ quang', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91009, 'Card âm thanh', 10001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(91010, 'Vỏ máy tính', 10001, 0, null, now(), now());

-- Máy tính & Thiết bị Văn phòng > Thiết bị ngoại vi & Phụ kiện
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100000, 'Bàn phím & Chuột', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100001, 'Hub USB & Đầu đọc thẻ', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100002, 'Webcam', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100003, 'Vỏ & Ốp máy tính xách tay', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100004, 'Tấm làm mát', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100005, 'Giá đỡ & Khay để máy tính xách tay', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100006, 'Bàn phím & Vỏ bàn di chuột', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100007, 'Pin máy tính xách tay', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100008, 'Bộ sạc & Bộ điều hợp máy tính xách tay', 10002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(100009, 'Tấm lót chuột', 10002, 0, null, now(), now());

-- Máy tính & Thiết bị Văn phòng > Phần mềm & Bộ nhớ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(101000, 'Ổ cứng', 10003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(101001, 'SSD', 10003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(101002, 'Bộ nhớ đính kèm mạng (NAS)', 10003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(101003, 'Ổ flash & Cáp OTG', 10003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(101004, 'Hộp đựng đĩa cứng & Trạm lưu trữ', 10003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(101005, 'Đĩa nhỏ gọn', 10003, 0, null, now(), now());

-- Máy tính & Thiết bị Văn phòng > Các thành phần mạng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(102000, 'Modem & Bộ định tuyến không dây', 10004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(102001, 'Bộ lặp', 10004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(102002, 'Bộ điều hợp không dây & Card mạng', 10004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(102003, 'Bộ điều hợp Powerline', 10004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(102004, 'Công tắc mạng & PoE', 10004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(102005, 'Cáp & Đầu nối mạng', 10004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(102006, 'Công tắc KVM', 10004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(102007, 'Máy chủ in', 10004, 0, null, now(), now());

-- Máy tính & Thiết bị Văn phòng > Thiết bị văn phòng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103000, 'Máy đánh chữ', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103001, 'Thiết bị chấm công & Kiểm soát truy cập', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103002, 'Máy hủy giấy', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103003, 'Máy đếm tiền', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103004, 'Máy in & Máy scan', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103005, 'Dụng cụ in 3D', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103006, 'Máy fax', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103007, 'Máy quét mã vạch', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103008, 'Thiết bị bán lẻ thông minh', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103009, 'Máy in nhãn', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103010, 'Thiết bị in ấn quảng cáo', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103011, 'Hộp mực in dạng lỏng & bột', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103012, 'Bộ phận thiết bị văn phòng', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103013, 'Máy cán màng', 10005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(103014, 'Thiết bị Âm thanh & Video hội nghị', 10005, 0, null, now(), now());

-- Máy tính & Thiết bị Văn phòng > Văn phòng phẩm & Vật tư
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104000, 'Đồ để viết & sửa', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104001, 'Vật tư dùng trong văn phòng', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104002, 'Dụng cụ cắt dùng trong văn phòng', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104003, 'Đồ dùng học tập & giáo dục', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104004, 'Họa cụ', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104005, 'Sổ tay & Giấy', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104006, 'Phong bì & Đồ bưu điện', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104007, 'Quà tặng & Giấy gói', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104008, 'Vật tư dùng cho công việc kế toán', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104009, 'Phụ kiện & Giá để đồ bàn học', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104010, 'Thẻ', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104011, 'Két sắt', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104012, 'Lịch & Phụ kiện', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104013, 'Sản phẩm giữ tài liệu văn phòng', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104014, 'Phù hiệu & Đồ đi kèm', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104015, 'Nhãn, Bìa phân trang & Tem', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104016, 'Dụng cụ đo dùng trong văn phòng', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104017, 'Dụng cụ thuyết trình dùng trong văn phòng', 10006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(104018, 'Băng dán, keo dán & chốt buộc', 10006, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Thức ăn cho chó & mèo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(105000, 'Thức ăn cho chó', 11000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(105001, 'Món ăn cho chó', 11000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(105002, 'Thức ăn cho mèo', 11000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(105003, 'Món ăn cho mèo', 11000, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Nội thất cho chó & mèo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(106000, 'Giường, Sofa & Thảm', 11001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(106001, 'Chuồng', 11001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(106002, 'Lồng & Giỏ', 11001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(106003, 'Cột & Bảng cào móng', 11001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(106004, 'Võng cho mèo', 11001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(106005, 'Cửa cho mèo & chó', 11001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(106006, 'Cầu thang & Cầu nâng', 11001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(106007, 'Rào chắn', 11001, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Quần áo cho chó & mèo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107000, 'Áo choàng', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107001, 'Áo sơ mi', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107002, 'Áo len & Áo hoodie', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107003, 'Áo phao', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107004, 'Váy', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107005, 'Áo mưa', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107006, 'Bốt & Đồ bảo vệ móng', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107007, 'Phụ kiện cổ', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107008, 'Kính mắt', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107009, 'Phụ kiện cài đầu', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107010, 'Mũ', 11002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(107011, 'Trang phục', 11002, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Cát vệ sinh cho chó & mèo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(108000, 'Hệ thống huấn luyện vệ sinh cho thú cưng', 11003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(108001, 'Khay & Hộp đựng cát vệ sinh', 11003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(108002, 'Tã, Miếng lót & Khay', 11003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(108003, 'Túi đựng phân & Xẻng xúc', 11003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(108004, 'Xịt khử mùi & tẩy vết bẩn', 11003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(108005, 'Máy dò nước tiểu', 11003, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Đồ chải chuốt cho chó & mèo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109000, 'Dầu gội & Dầu xả', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109001, 'Phụ kiện tắm', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109002, 'Lược & Bàn chải', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109003, 'Máy sấy lông', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109004, 'Khăn lau', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109005, 'Kéo cắt tỉa lông', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109006, 'Tông đơ cắt tỉa lông', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109007, 'Gel & Bột tạo kiểu', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109008, 'Chăm sóc móng', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109009, 'Chăm sóc tai', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109010, 'Chăm sóc răng miệng', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109011, 'Chăm sóc mắt', 11004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(109012, 'Sản phẩm tẩy lông', 11004, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Chăm sóc sức khỏe cho chó & mèo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(110000, 'Vòng chụp cổ & hỗ trợ cho thú cưng', 11005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(110001, 'Sản phẩm đặc trị bọ chét & bọ ve', 11005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(110002, 'Thuốc', 11005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(110003, 'Vitamin & Thực phẩm bổ sung', 11005, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Phụ kiện cho chó & mèo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(111000, 'Vòng cổ, Đai ngực & Dây dắt', 11006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(111001, 'Đào tạo & Hỗ trợ Hành vi', 11006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(111002, 'Đồ chơi cho chó', 11006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(111003, 'Đồ chơi cho mèo', 11006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(111004, 'Đồ cho ăn', 11006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(111005, 'Túi & dụng cụ vận chuyển', 11006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(111006, 'Vật kỷ niệm', 11006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(111007, 'Camera & Màn hình', 11006, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Vật tư dành cho cá & loài sống dưới nước
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112000, 'Thuốc cho cá & vật tư y tế', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112001, 'Đồ trang trí', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112002, 'Đèn', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112003, 'Bể cá & Bể chứa', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112004, 'Kiểm soát nhiệt độ', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112005, 'Xử lý nước', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112006, 'Bơm & Bộ lọc', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112007, 'Công cụ làm sạch', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112008, 'Dụng cụ cho ăn', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112009, 'Đồ dùng dinh dưỡng & Chăm sóc sức khỏe', 11007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(112010, 'Thức ăn cho vật nuôi trong bể cá', 11007, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Vật tư dành cho bò sát & động vật lưỡng cư
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(113000, 'Đồ dùng chăm sóc sức khỏe cho loài bò sát', 11008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(113001, 'Đồ trang trí', 11008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(113002, 'Nhà kiếng & vật tư vận chuyển', 11008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(113003, 'Công cụ làm sạch', 11008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(113004, 'Điều khiển nhiệt độ', 11008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(113005, 'Đèn', 11008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(113006, 'Dụng cụ cho ăn', 11008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(113007, 'Thức ăn cho bò sát', 11008, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Vật tư dành cho chim
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(114000, 'Chăm sóc chim', 11009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(114001, 'Lồng & Phụ kiện', 11009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(114002, 'Dụng cụ chải lông', 11009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(114003, 'Đồ chơi', 11009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(114004, 'Xích đu & Cành để đậu', 11009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(114005, 'Dụng cụ hỗ trợ đào tạo', 11009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(114006, 'Dụng cụ cho ăn', 11009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(114007, 'Thức ăn cho chim', 11009, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Vật tư dành cho động vật nhỏ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115000, 'Chuồng & Môi trường sống', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115001, 'Đồ chơi', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115002, 'Vòng cổ, Đai ngực & Dây dắt', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115003, 'Đồ cho ăn', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115004, 'Bánh xe chạy', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115005, 'Dụng cụ chải lông', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115006, 'Lồng vận chuyển', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115007, 'Vật tư về sức khỏe', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115008, 'Xịt khử mùi & tẩy vết bẩn', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115009, 'Quần áo cho thú cưng nhỏ', 11010, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(115010, 'Thức ăn cho thú cưng nhỏ', 11010, 0, null, now(), now());

-- Đồ dùng cho thú cưng > Vật tư cho gia cầm & gia súc
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(116000, 'Đồ dùng chăm sóc sức khỏe cho gia cầm', 11011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(116001, 'Dụng cụ chải lông', 11011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(116002, 'Đồ chơi', 11011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(116003, 'Dụng cụ cho ăn', 11011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(116004, 'Khuyên tai gia súc', 11011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(116005, 'Lồng & phụ kiện', 11011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(116006, 'Thức ăn', 11011, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(116007, 'Giá đỡ & dây', 11011, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > Quần áo & Giày trẻ em
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117000, 'Giày', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117001, 'Bộ đồ liền thân & Áo liền quần', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117002, 'Áo hoodie & hoạt động', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117003, 'Áo len', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117004, 'Đồ bơi', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117005, 'Tất & Quần tất', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117006, 'Quần', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117007, 'Bộ quà tặng', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117008, 'Váy', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117009, 'Áo', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117010, 'Áo khoác & Áo choàng', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117011, 'Đồ ngủ', 12000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(117012, 'Trang phục', 12000, 0, null, now(), now());


-- Trẻ sơ sinh & thai sản > Những vật dụng cần thiết khi cho bé đi du lịch
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(118000, 'Xe đẩy', 12001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(118001, 'Địu', 12001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(118002, 'Phụ kiện xe đẩy', 12001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(118003, 'Ghế ngồi xe hơi cho trẻ em', 12001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(118004, 'Túi tã', 12001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(118005, 'Dây đai dành cho trẻ em', 12001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(118006, 'Dây an toàn & phụ kiện', 12001, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > Cho bú & Cho ăn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119000, 'Máy xay chế biến thực phẩm', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119001, 'Bình sữa & phụ kiện cho bé', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119002, 'Đồ dùng trẻ em', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119003, 'Que rửa bình sữa cho bé', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119004, 'Hộp đựng bình sữa & giá phơi', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119005, 'Máy giữ ấm & máy làm nguội & khử trùng bình sữa', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119006, 'Miếng lót thấm sữa', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119007, 'Khăn che bé bú', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119008, 'Đầu vú cao su', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119009, 'Máy hút sữa & phụ kiện', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119010, 'Công thức & Tổ chức & Bảo quản sữa', 12002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(119011, 'Gối cho con bú', 12002, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > Nội thất cho trẻ em
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(120000, 'Đệm & Bộ chăn ga gối đệm', 12003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(120001, 'Xích đu nhún cho bé', 12003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(120002, 'Cũi & Giường', 12003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(120003, 'Ghế trẻ em', 12003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(120004, 'Xe tập đi cho bé', 12003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(120005, 'Ghế tiểu tiện & dạy trẻ đi vệ sinh', 12003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(120006, 'Bàn thay tã', 12003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(120007, 'Bàn trẻ em', 12003, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > An toàn cho bé
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121000, 'Khóa & Dây đai an toàn', 12004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121001, 'Bảo vệ chống điện giật', 12004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121002, 'Bảo vệ cạnh & góc', 12004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121003, 'Tấm chắn & rào giường', 12004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121004, 'Thiết bị giám sát', 12004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121005, 'Màn chống muỗi', 12004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Cổng & Ô cửa', 12004, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > Đồ chơi trẻ em
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121000, 'Gương', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121001, 'Bóng', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121002, 'Ghế ô tô & đồ chơi xe đẩy', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121003, 'Máy leo núi trong nhà & thiết bị sân chơi trẻ em', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121004, 'Đồ chơi điện & điều khiển từ xa cho bé', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121005, 'Đồ hàng cho bé', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Thảm nằm chơi an toàn', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Rào chắn', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Đồ chơi khi tắm', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Đồ chơi âm thanh cho em bé', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Đồ chơi trí tuệ & giáo dục sớm', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Đồ chơi thể thao & ngoài trời cho em bé', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Búp bê & Gấu bông', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Đồ chơi con lật đật Roly-Poly', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Ngựa & Động vật bập bênh', 12005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(121006, 'Bộ quà tặng', 12005, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > Chăm sóc bé & sức khỏe
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122000, 'Chăm sóc da cho trẻ', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122001, 'Chăm sóc tóc & Tắm gội toàn thân', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122002, 'Máy cắt tóc cho trẻ', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122003, 'Máy sấy tóc cho trẻ', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122004, 'Nước rửa tay', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122005, 'Bột giặt', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122006, 'Chăm sóc mũi & răng miệng', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122007, 'Máy tiệt trùng quần áo trẻ em', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122008, 'Cân', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122009, 'Thiết bị đo chiều cao & chu vi', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122010, 'Ty ngậm giảm đau khi mọc răng', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122011, 'Chậu tắm & Ghế tắm cho trẻ', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122012, 'Khăn tắm & Mũ tắm', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122013, 'Đồ dùng tắm cho trẻ', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122014, 'Nước hoa', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122015, 'Dụng cụ cắt tỉa tóc cho trẻ', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122016, 'Khăn lau & khay', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122017, 'Tã lót', 12006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(122018, 'Vitamin & Thực phẩm bổ sung cho trẻ', 12006, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > Sữa công thức & Thực phẩm cho trẻ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(123000, 'Đồ uống', 12007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(123001, 'Sữa công thức sơ sinh', 123000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(123002, 'Sữa công thức tăng trưởng', 123000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(123003, 'Cháo, Bột & Ngũ cốc', 123000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(123004, 'Đồ ăn vặt', 12007, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > Vật tư cho mẹ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124000, 'Đồ lót cho mẹ', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124001, 'Quần áo & Phụ kiện thai sản', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124002, 'Thiết bị theo dõi trước khi sinh', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124003, 'Milk Formula for Pregnant & Lactating Women', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124004, 'Quần áo cho bé bú', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124005, 'Gối cho mẹ', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124006, 'Đai hỗ trợ', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124007, 'Chăm sóc da cho mẹ', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124008, 'Vitamin & Thực phẩm bổ sung cho mẹ', 12008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(124009, 'Dây an toàn cho thai phụ & phụ kiện', 12008, 0, null, now(), now());

-- Trẻ sơ sinh & thai sản > Phụ kiện thời trang cho em bé
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125000, 'Phục sức cho bé', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125001, 'Yếm dãi & khăn ợ hơi', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125002, 'Găng tay em bé', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125003, 'Khăn quàng cổ cho bé', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125004, 'Mũ & Mũ lưỡi trai em bé', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125005, 'Bịt tai cho bé', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125006, 'Khẩu trang cho bé', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125007, 'Phụ kiện tóc cho bé', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125008, 'Bộ quà tặng', 12009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(125009, 'Túi xách trẻ em', 12009, 0, null, now(), now());

-- Thể thao & Ngoài trời > Đồ thể thao & ngoài trời
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126000, 'Áo thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126001, 'Quần jogger', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126002, 'Bộ quần áo thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126003, 'Đồ mặc ngoài theo phong cách thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126004, 'Áo lót thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126005, 'Đồ bơi trẻ em', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126006, 'Áo mưa thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126007, 'Đồ lót giữ ấm thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126008, 'Áo thun thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126009, 'Áo khoác thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126010, 'Quần short thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126011, 'Quần legging thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126012, 'Trang phục thể thao trẻ em', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126013, 'Đồ khiêu vũ & Trang phục khiêu vũ', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126014, 'Chân váy thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126015, 'Váy liền thể thao', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126016, 'Áo bơi dài tay', 13000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(126017, 'Quần áo lót thể thao', 13000, 0, null, now(), now());

-- Thể thao & Ngoài trời > Giày thể thao
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127000, 'Giày khiêu vũ', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127001, 'Giày chơi gôn', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127002, 'Giày bóng chày', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127003, 'Giày bóng rổ', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127004, 'Giày bóng chuyền', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127005, 'Giày chạy bộ', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127006, 'Giày chơi tennis', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127007, 'Giày cầu lông', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127008, 'Giày bóng đá', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127009, 'Giày đi bộ đường dài', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127010, 'Giày lội nước', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127011, 'Giày tập luyện & Giày tập gym', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127012, 'Giày trượt băng & trượt patin', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127013, 'Giày thể thao trẻ em', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127014, 'Giày sandal thể theo', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127015, 'Giày đạp xe', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127016, 'Giày futsal', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127017, 'Giày trượt ván', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127018, 'Giày đi bộ', 13001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(127019, 'Phụ kiện giày thể thao', 13001, 0, null, now(), now());

-- Thể thao & Ngoài trời > Phụ kiện thể thao & ngoài trời
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128000, 'Máy đếm bước chân', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128001, 'Mũ thể thao & ngoài trời', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128002, 'Túi thể thao', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128003, 'Đồ bảo hộ', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128004, 'Ống tay thể thao & hỗ trợ', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128005, 'Trang bị cho huấn luyện viên & trọng tài', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128006, 'Danh hiệu, huy chương & giải thưởng', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128007, 'Phấn viết tay', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128008, 'Kính mắt thể thao', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128009, 'Tất thể thao', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128010, 'Đồng hồ bấm giờ và đồng hồ hẹn giờ', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128011, 'Bình nước thể thao', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128012, 'Găng tay thể thao', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128013, 'Băng đô thể thao', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128014, 'Vòng tay thể thao', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128015, 'Băng thể thao', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128016, 'Túi đựng giày', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128017, 'Áo phao cứu hộ', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128018, 'Mũ bơi', 13002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(128019, 'Khăn che mặt & khẩu trang', 13002, 0, null, now(), now());

-- Thể thao & Ngoài trời > Thiết bị các môn thể thao bóng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129000, 'Bóng đá', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129001, 'Cầu lông', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129002, 'Tennis', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129003, 'Bida & Snooker', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129004, 'Bóng bàn', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129005, 'Bóng chuyền', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129006, 'Bóng rổ', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129007, 'Golf', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129008, 'Bóng quần', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129009, 'Bowling', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129010, 'Bóng chày', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129011, 'Bóng bầu dục Rugby', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129012, 'Bóng bầu dục Mỹ', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129013, 'Bóng gậy', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129014, 'Bóng ném Mỹ', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129015, 'Bóng ném', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129016, 'Bóng đá trong nhà', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129017, 'Khúc côn cầu', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129018, 'Bóng lưới', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129019, 'Mã cầu', 13003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(129020, 'Bóng mềm', 13003, 0, null, now(), now());

-- Thể thao & Ngoài trời > Thiết bị thể thao dưới nước
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130000, 'Lướt ván', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130001, 'Lặn', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130002, 'Bơi lội', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130003, 'Chèo thuyền', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130004, 'Chèo ca nô', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130005, 'Chèo kayak', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130006, 'Lướt ván diều', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130007, 'Chèo thuyền', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130008, 'Đi thuyền', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130009, 'Chèo ván đứng', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130010, 'Trượt nước & Lướt ván ca nô', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130011, 'Bóng nước', 13004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(130012, 'Lướt ván buồm', 13004, 0, null, now(), now());

-- Thể thao & Ngoài trời > Thiết bị thể thao mùa đông
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(131000, 'Khúc côn cầu trên băng', 13005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(131001, 'Trượt tuyết', 13005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(131002, 'Trượt ván trên tuyết', 13005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(131003, 'Trượt băng', 13005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(131004, 'Bi đá trên băng', 13005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(131005, 'Trượt ván', 13005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(131006, 'Trượt tuyết bằng giầy', 13005, 0, null, now(), now());

-- Thể thao & Ngoài trời > Thiết bị tập thể hình
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132000, 'Vòng lắc eo', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132001, 'Tập bụng', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132002, 'Bóng tập gym', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132003, 'Dây nhảy', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132004, 'Thiết bị tập thể hình dưới nước', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132005, 'Thiết bị tập luyện sự nhanh nhạy', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132006, 'Tập tạ', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132007, 'Máy tập thể hình', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132008, 'Xà đơn', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132009, 'Thảm thể thao', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132010, 'Dây kéo đàn hồi', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132011, 'Xe trượt scooter & Xe ngồi lái', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132012, 'Giàn nhún', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132013, 'Bộ tập tăng cường sức mạnh cho tay', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132014, 'Bộ dây tập kháng lực', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132015, 'Phụ kiện máy tập thể dục', 13006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(132016, 'Thiết bị tập luyện cân bằng', 13006, 0, null, now(), now());

-- Thể thao & Ngoài trời > Thiết bị cắm trại & đi bộ đường dài
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133000, 'Dao & Bộ dụng cụ sinh tồn', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133001, 'Đồ dùng bếp cắm trại', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133002, 'Võng', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133003, 'Đèn cắm trại', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133004, 'Túi ngủ & Bộ chăn ga gối đệm', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133005, 'La bàn', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133006, 'Ống nhòm & Kính thiên văn', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133007, 'Lều & Phụ kiện', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133008, 'Gậy đi bộ đường dài', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133009, 'Thảm & Giỏ dã ngoại', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133010, 'Nội thất cắm trại', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133011, 'Máy lọc nước, máy lọc và bảo quản vệ sinh cắm trại', 13007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(133012, 'Vệ sinh cắm trại', 13007, 0, null, now(), now());

-- Thể thao & Ngoài trời > Thiết bị giải trí ngoài trời & thư giãn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134000, 'Yoga & Pilates', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134001, 'Điền kinh trong sân vận động', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134002, 'Quyền anh & Võ thuật', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134003, 'Judo', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134004, 'Đấu vật', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134005, 'Taekwondo', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134006, 'Cưỡi ngựa', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134007, 'Trượt ván', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134008, 'Câu cá', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134009, 'Giải trí trong nhà', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134010, 'Đạp xe', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134011, 'Trượt patin', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134012, 'Ba lê & Khiêu vũ', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134013, 'Võ Karate', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134014, 'Leo núi', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134015, 'Trò chơi giả lập quân sự nhập vai', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134016, 'Nhảy cổ vũ', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134017, 'Thể dục dụng cụ', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134018, 'Thể dục nhịp điệu', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134019, 'Thể thao đĩa bay', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134020, 'Chạy', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134021, 'Nhảy dù', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134022, 'Ba môn phối hợp', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134023, 'Đua', 13008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(134024, 'Thể thao điện tử', 13008, 0, null, now(), now());

-- Thể thao & Ngoài trời > Đồ bơi, đồ lướt sóng & đồ lặn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135000, 'Đồ lặn', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135001, 'Quần bơi ngắn và quần bơi', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135002, 'Quần lót', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135003, 'Đồ bơi dài tay', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135004, 'Đồ bơi đua xe', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135005, 'Bikini', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135006, 'Tankini', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135007, 'Đồ bơi', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135008, 'Đồ bơi một mảnh', 13009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(135009, 'Cover Ups', 13009, 0, null, now(), now());

-- Đồ chơi & sở thích > Búp bê & Gấu bông
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(136000, 'Phụ kiện búp bê', 14000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(136001, 'Gấu bông', 14000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(136002, 'Búp bê', 14000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(136003, 'Nhà búp bê & Bộ đồ chơi', 14000, 0, null, now(), now());

-- Đồ chơi & sở thích > Đồ chơi giáo dục
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137000, 'Thám tử & điệp viên', 14001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137001, 'Thẻ flash', 14001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137002, 'Vẽ & Làm thủ công', 14001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137003, 'Đồ chơi toán học', 14001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137004, 'Đồ chơi khoa học & công nghệ', 14001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137005, 'Đồ chơi xếp hình', 14001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137006, 'Đồ chơi âm nhạc', 14001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137007, 'Máy tính bảng đồ chơi & Máy tính đồ chơi', 14001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(137008, 'Đồ chơi học ngôn ngữ', 14001, 0, null, now(), now());

-- Đồ chơi & sở thích > Đồ chơi thể thao & ngoài trời
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138000, 'Đồ chơi khám phá thiên nhiên', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138001, 'Trò chơi bắn bi', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138002, 'Bong bóng', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138003, 'Đồ chơi ngồi lái', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138004, 'Thiết bị sân chơi', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138005, 'Đồ chơi nhà, lều & đường hầm', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138006, 'Đồ chơi bể bơi, nước & cát', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138007, 'Đồ chơi phun & Súng đồ chơi', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138008, 'Đồ chơi thể thao', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138009, 'Đồ chơi bay', 14002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(138010, 'Diều & Vòng quay gió', 14002, 0, null, now(), now());

-- Đồ chơi & sở thích > Đồ chơi điện & điều khiển từ xa
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139000, 'Thảm nhảy', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139001, 'Máy hát karaoke', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139002, 'Bộ đàm', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139003, 'Thú cưng điện tử', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139004, 'Camera kỹ thuật số', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139005, 'Máy bay & Trực thăng', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139006, 'Xe máy', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139007, 'Thuyền & Tàu ngầm', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139008, 'Ô tô, Xe buýt & Xe lửa', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139009, 'Động vật', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139010, 'Xe tăng', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139011, 'Rô bốt', 14003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(139012, 'Phụ kiện đồ chơi điện', 14003, 0, null, now(), now());

-- Đồ chơi & sở thích > Trò chơi & Ghép hình
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(140000, 'Trò chơi trên sàn nhà', 14004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(140001, 'Trò chơi xếp chồng', 14004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(140002, 'Hình khối ma thuật', 14004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(140003, 'Ghép hình', 14004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(140004, 'Xúc xắc', 14004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(140005, 'Trò chơi trong nhà', 14004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(140006, 'Trò chơi thẻ bài', 14004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(140007, 'Thiết bị nhào lộn ma thuật', 14004, 0, null, now(), now());

-- Đồ chơi & sở thích > Đồ chơi cổ điển & mới lạ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141000, 'Đồ chơi xe & Mô hình', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141001, 'Búp bê & rạp múa rối bước', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141002, 'Đồ chơi rèn luyện ngón tay', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141003, 'Chơi đồ hàng', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141004, 'Đồ chơi mới lạ', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141005, 'Đồ chơi hành động & đồ chơi nhân vật', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141006, 'Đồ chơi xây dựng', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141007, 'Đồ chơi giảm căng thẳng', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141008, 'Yo-yo', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141009, 'Đồ chơi vỏ nhộng', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141010, 'Con quay', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141011, 'Đồ chơi Slime & Squishy', 14005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(141012, 'Mạt chược', 14005, 0, null, now(), now());

-- Đồ chơi & sở thích > Nhạc cụ & Phụ kiện
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(142000, 'Bàn phím & Piano', 14006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(142001, 'Nhạc cụ gõ', 14006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(142002, 'Nhạc cụ thổi', 14006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(142003, 'Đàn guitar & bộ dây', 14006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(142004, 'Phụ kiện âm nhạc', 14006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(142005, 'Đàn synthesizer điện tử', 14006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(142006, 'Túi & Hộp đựng dụng cụ', 14006, 0, null, now(), now());

-- Đồ chơi & sở thích > DIY
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143000, 'Làm album thủ công & In dập', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143001, 'Đan & móc', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143002, 'Làm cườm & trang sức', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143003, 'Gia công kim', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143004, 'Đồ vẽ tự làm', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143005, 'Đồ tự chế đặc biệt', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143006, 'Thủ công da', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143007, 'Làm nến & xà phòng', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143008, 'Làm huy hiệu', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143009, 'Gốm & Gốm sứ', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143010, 'Đồ gỗ tự làm', 14007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(143011, 'Thủ công mỹ nghệ vải nỉ', 14007, 0, null, now(), now());

-- Đồ nội thất > Nội thất trong nhà
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144000, 'Sofa', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144001, 'Kệ & Giá đỡ', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144002, 'Vách ngăn phòng', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144003, 'Bàn trang điểm', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144004, 'Cây treo đồ', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144005, 'Bàn & Bàn làm việc', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144006, 'Ghế tựa', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144007, 'Ghế đẩu & ghế dài', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144008, 'Giường', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144009, 'Đệm', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144010, 'Tủ', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144011, 'Tủ quần áo', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144012, 'Bộ nội thất trong nhà', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144013, 'Giá đỡ TV & Bàn đầu giường', 15000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(144014, 'Thẻ bài & phụ kiện', 15000, 0, null, now(), now());

-- Đồ nội thất > Nội thất ngoài trời
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(145000, 'Sofa ngoài trời', 15001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(145001, 'Ghế tựa ngoài trời', 15001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(145002, 'Ô ở sân trong', 15001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(145003, 'Xích đu ở sân trong', 15001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(145004, 'Bộ nội thất ngoài trời', 15001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(145005, 'Bàn ngoài trời', 15001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(145006, 'Ghế đẩu & Ghế dài', 15001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(145007, 'Kệ ngoài trời', 15001, 0, null, now(), now());

-- Đồ nội thất > Nội thất trẻ em
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146000, 'Giường', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146001, 'Sofa', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146002, 'Ghế tựa', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146003, 'Ghế đẩu & Ghế dài', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146004, 'Tủ', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146005, 'Bộ nội thất', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146006, 'Bàn & Bàn làm việc', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146007, 'Tủ quần áo', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146008, 'Bàn đầu giường', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146009, 'Đệm', 15002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(146010, 'Kệ & Giá đỡ', 15002, 0, null, now(), now());

-- Đồ nội thất > Nội thất thương mại
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(147000, 'Nội thất salon', 15003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(147001, 'Nội thất khách sạn', 15003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(147002, 'Nội thất trường học', 15003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(147003, 'Nội thất nhà hàng', 15003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(147004, 'Nội thất văn phòng', 15003, 0, null, now(), now());

-- Công cụ & Phần cứng > Dụng cụ điện
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148000, 'Dụng cụ điện chuyên môn', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148001, 'Máy khoan điện', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148002, 'Tua vít điện', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148003, 'Cưa điện', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148004, 'Máy thổi', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148005, 'Máy mài góc', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148006, 'Máy đánh bóng', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148007, 'Cờ lê điện', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148008, 'Súng bắn đinh', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148009, 'Súng phun', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148010, 'Súng nhiệt', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148011, 'Súng bắn keo', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148012, 'Phụ kiện dụng cụ điện', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148013, 'Bộ dụng cụ điện', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148014, 'Máy rửa áp lực', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148015, 'Máy nén khí', 16000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(148016, 'Máy phay gỗ', 16000, 0, null, now(), now());

-- Công cụ & Phần cứng > Dụng cụ cầm tay
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149000, 'Máy tán đinh cầm tay', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149001, 'Dụng cụ đa năng & phụ kiện', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149002, 'Dụng cụ cắt', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149003, 'Dụng cụ xây dựng và ốp lát', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149004, 'Dụng cụ cầm tay chuyên môn', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149005, 'Nhíp công nghiệp', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149006, 'Búa', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149007, 'Dao', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149008, 'Kìm', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149009, 'Cưa', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149010, 'Kéo', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149011, 'Tua vít', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149012, 'Cờ lê', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149013, 'Đục', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149014, 'Rìu', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149015, 'Bộ dụng cụ', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149016, 'Phụ kiện dụng cụ cầm tay', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149017, 'Cân công nghiệp', 16001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(149018, 'Dụng cụ sửa chữa đồng hồ', 16001, 0, null, now(), now());

-- Công cụ & Phần cứng > Dụng cụ đo lường
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(150000, 'Dụng cụ quang học', 16002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(150001, 'Dụng cụ đo áp suất', 16002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(150002, 'Dụng cụ đo nhiệt độ', 16002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(150003, 'Dụng cụ đo cầm tay', 16002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(150004, 'Dụng cụ đo lường vật lý', 16002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(150005, 'Dụng cụ đo bằng điện', 16002, 0, null, now(), now());

-- Công cụ & Phần cứng > Dụng cụ làm vườn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151000, 'Dụng cụ làm vườn chuyên môn', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151001, 'Máy dò kim loại', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151002, 'Cưa xích', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151003, 'Dụng cụ cạo tuyết', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151004, 'Phụ kiện dụng cụ làm vườn', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151005, 'Máy xén cỏ', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151006, 'Máy thổi lá & Máy hút bụi', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151007, 'Dao & Xẻng', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151008, 'Dụng cụ cắt tỉa', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151009, 'Cuốc & Cào', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151010, 'Chĩa & Xẻng', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151011, 'Găng tay làm vườn & trang bị bảo hộ', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151012, 'Dụng cụ dọn vườn', 16003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(151013, 'Máy cắt cỏ', 16003, 0, null, now(), now());

-- Công cụ & Phần cứng > Thiết bị hàn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(152000, 'Mỏ hàn điện', 16004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(152001, 'Trạm hàn', 16004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(152002, 'Máy hàn', 16004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(152003, 'Phụ kiện hàn', 16004, 0, null, now(), now());

-- Công cụ & Phần cứng > Bộ sắp xếp dụng cụ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(153000, 'Túi đựng dụng cụ', 16005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(153001, 'Bọc & Hộp dụng cụ', 16005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(153002, 'Giá đỡ & Thanh treo dụng cụ', 16005, 0, null, now(), now());

-- Công cụ & Phần cứng > Phần cứng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154000, 'Phần cứng nội thất', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154001, 'Phần cứng cửa sổ', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154002, 'Phần cứng cửa', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154003, 'Phần cứng cơ khí', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154004, 'Chốt & Móc', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154005, 'Dây thừng, Dây xích & Móc ròng rọc', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154006, 'Ổ khóa & chốt khóa', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154007, 'Chất kết dính, Băng dính & Chất hàn', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154008, 'Kẹp', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154009, 'Sản phẩm mài & hoàn thiện', 16006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(154010, 'Nam châm', 16006, 0, null, now(), now());

-- Công cụ & Phần cứng > Máy bơm & Hệ thống đường ống
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(155000, 'Máy bơm, bộ phận & phụ kiện', 16007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(155001, 'Ống & phụ kiện', 16007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(155002, 'Van & bộ phận', 16007, 0, null, now(), now());

-- Sửa chữa nhà cửa > Năng lượng mặt trời & gió
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(156000, 'Bộ biến tần điện', 17000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(156001, 'Pin mặt trời', 17000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(156002, 'Bộ điều khiển & phụ kiện sạc', 17000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(156003, 'Hệ thống năng lượng mặt trời', 17000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(156004, 'Tua bin gió', 17000, 0, null, now(), now());

-- Sửa chữa nhà cửa > Đèn & hệ thống chiếu sáng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(157000, 'Phụ kiện đèn', 17001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(157001, 'Bóng đèn, đèn tuýp & dải đèn', 17001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(157002, 'Đèn trong nhà', 17001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(157003, 'Đèn di động', 17001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(157004, 'Đèn ngoài trời', 17001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(157005, 'Đèn trang trí', 17001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(157006, 'Đèn chuyên nghiệp', 17001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(157007, 'Đèn thương mại', 17001, 0, null, now(), now());

-- Sửa chữa nhà cửa > Đồ dùng & thiết bị điện
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158000, 'Đầu nối & Thiết bị đầu cuối', 17002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158001, 'Công tắc & Phụ kiện', 17002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158002, 'Rơ le & Cầu dao', 17002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158003, 'Bộ nguồn', 17002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158004, 'Động cơ, máy phát điện & phụ kiện', 17002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158005, 'Ổ cắm & Phụ kiện điện', 17002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158006, 'Dây & Cáp', 17002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158007, 'Bộ biến áp', 17002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(158008, 'Thiết bị tiết kiệm điện', 17002, 0, null, now(), now());

-- Sửa chữa nhà cửa > Đồ đạc nhà bếp
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(159000, 'Vòi nước nhà bếp', 17003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(159001, 'Bồn rửa nhà bếp', 17003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(159002, 'Tủ bếp', 17003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(159003, 'Thiết bị lọc nước', 17003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(159004, 'Phụ kiện đồ đạc nhà bếp', 17003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(159005, 'Bộ đồ đạc nhà bếp', 17003, 0, null, now(), now());

-- Sửa chữa nhà cửa > Hệ thống nhà thông minh
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(160000, 'Điều khiển nhà thông minh', 17004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(160001, 'Hệ thống điều khiển nhiệt độ', 17004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(160002, 'Hệ thống điều khiển rèm cửa tự động', 17004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(160003, 'Cảm biến chuyển động thông minh', 17004, 0, null, now(), now());

-- Sửa chữa nhà cửa > Vật tư xây dựng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161000, 'Dụng cụ dán giấy dán tường', 17005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161001, 'Wall Paint', 17005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161002, 'Sưởi ấm, Làm mát & Thông gió', 17005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161003, 'Cửa ra vào, Cổng & Cửa sổ', 17005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161004, 'Giấy dán & đồ trang trí tường', 17005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161005, 'Vật tư & dụng cụ sơn', 17005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161006, 'Mái & Sàn', 17005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161007, 'Thang', 17005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(161008, 'Xe đẩy', 17005, 0, null, now(), now());

-- Sửa chữa nhà cửa > Đồ đạc nhà tắm
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162000, 'Thiết bị tắm', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162001, 'Móc & Thanh', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162002, 'Bồn rửa nhà tắm', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162003, 'Vòi nước nhà tắm', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162004, 'Vòi xịt & các bộ phận vòi xịt', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162005, 'Toilet & các bộ phận toilet', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162006, 'Gương nhà tắm', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162007, 'Phụ kiện đồ đạc nhà tắm', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162008, 'Bộ đồ đạc nhà tắm', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162009, 'Bồn tắm', 17006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(162010, 'Thanh vịn & Ghế an toàn trong phòng tắm', 17006, 0, null, now(), now());

-- Sửa chữa nhà cửa > An ninh & An toàn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(163000, 'Báo động an ninh', 17007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(163001, 'Chuông cửa & Hệ thống liên lạc nội bộ', 17007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(163002, 'Thiết bị an toàn lao động', 17007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(163003, 'Bộ dụng cụ khẩn cấp', 17007, 0, null, now(), now());

-- Sửa chữa nhà cửa > Vật dụng làm vườn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164000, 'Máy sưởi hiên & bếp sưởi', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164001, 'Hồ bơi, bể tắm nước nóng & vật tư', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164002, 'Vườn giường', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164003, 'Nhà kính & khay ươm hạt giống', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164004, 'Cây cảnh', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164005, 'Fresh Flowers', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164006, 'Vật dụng nuôi ong', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164007, 'Giàn & công cụ chăm sóc cây trồng', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164008, 'Kiểm soát sâu bệnh', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164009, 'Trang trí sân vườn', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164010, 'Tưới nước & Tưới tiêu', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164011, 'Bình & Chậu trong vườn', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164012, 'Nhà vườn', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164013, 'Hạt giống cây trồng & hoa', 17008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(164014, 'Đất vườn', 17008, 0, null, now(), now());

-- Ô tô & xe máy > Bộ phận thay thế cho ô tô
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165000, 'Thân, khung & cản trước', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165001, 'Cần gạt nước & rửa kính', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165002, 'Khói & khí thải', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165003, 'Bánh xe, vành bánh xe & phụ kiện', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165004, 'Lốp & phụ kiện', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165005, 'Chống va đập, thanh giằng và nhíp xe', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165006, 'Bộ tản nhiệt, làm mát động cơ & điều hòa', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165007, 'Hệ thống truyền động, hộp số & khớp ly hợp', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165008, 'Vòng bi & vòng đệm', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165009, 'Bộ phận động cơ', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165010, 'Hệ thống phanh', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165011, 'Đai, ống mềm & puli', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165012, 'Hệ thống nhiên liệu', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165013, 'Đánh lửa', 18000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(165014, 'Pin & phụ kiện', 18000, 0, null, now(), now());

-- Ô tô & xe máy > Linh kiện mô tô
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166000, 'Bu-gi', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166001, 'Khói & khí thải', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166002, 'Đèn', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166003, 'Hệ thống truyền động, hộp số & khớp ly hợp', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166004, 'Chống va đập, thanh giằng và nhíp xe', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166005, 'Lốp & phụ kiện', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166006, 'Hệ thống phanh', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166007, 'Pin & phụ kiện', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166008, 'Bánh xe, vành bánh xe & phụ kiện', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166009, 'Cáp & ống', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166010, 'Kèn & phụ kiện', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166011, 'Gương & phụ kiện', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166012, 'Bộ lọc cho xe máy', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166013, 'Khung & Phụ kiện', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166014, 'Dầu xe máy', 18001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(166015, 'Chất chống đông và chất bôi trơn cho xe máy', 18001, 0, null, now(), now());

-- Ô tô & xe máy > Motorcycles
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(167000, 'Xe máy hộp số tay', 18002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(167001, 'Xe máy hộp số tự động', 18002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(167002, 'Xe máy điện', 18002, 0, null, now(), now());

-- Ô tô & xe máy > Thiết bị điện tử trên ô tô
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168000, 'Camera hành trình', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168001, 'FM & Bluetooth Transmitters', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168002, 'USB Chargers', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168003, 'Hệ thống thông minh', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168004, 'Video giám sát', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168005, 'Hệ thống báo động & An ninh', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168006, 'Phụ kiện điện tử', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168007, 'Trình phát video trên ô tô', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168008, 'GPS & Phụ kiện', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168009, 'Thiết bị điện trên ô tô', 18003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(168010, 'Âm thanh trên ô tô', 18003, 0, null, now(), now());

-- Ô tô & xe máy > Phụ kiện bên ngoài ô tô
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169000, 'Tấm che nắng', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169001, 'Đồ trang trí đầu ăng-ten', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169002, 'Tấm chắn bùn & chắn nước bắn', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169003, 'Kèn & phụ kiện', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169004, 'Viền crôm & phụ kiện', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169005, 'Kệ', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169006, 'Decoration', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169007, 'Side Window Deflectors & Visors', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169008, 'Bộ dụng cụ gấp gương bên', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169009, 'Mái che & tấm che cho ô tô', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169010, 'Dán xe', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169011, 'Kính chống chói', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169012, 'Phim cửa sổ & Che nắng', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169013, 'Biển số', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169014, 'Cái kẹp biên lai thuế đường trên xe', 18004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(169015, 'Dải phản quang', 18004, 0, null, now(), now());

-- Ô tô & xe máy > Phụ kiện bên trong ô tô
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170000, 'Đồ trang trí', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170001, 'Hộc đựng đồ', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170002, 'Khung đỡ & Giá đỡ', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170003, 'Thảm chống trượt', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170004, 'Thảm ô tô', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170005, 'Nước hoa ô tô', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170006, 'Dụng cụ thoát hiểm', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170007, 'Seat Cushions', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170008, 'Steering Wheel Covers', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170009, 'Steering Locks & Security', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170010, 'Pedals & Gear Sticks', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170011, 'Gối cổ', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170012, 'Dán bên trong ô tô', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170013, 'Giá đỡ & Phụ kiện phía sau', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170014, 'Cấu kiện bên trong', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170015, 'Hộp đựng chìa khóa ô tô', 18005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(170016, 'Chốt & Kẹp', 18005, 0, null, now(), now());

-- Ô tô & xe máy > Dụng cụ sửa chữa ô tô
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171000, 'Trình đọc & Trình quét mã', 18006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171001, 'Công cụ chẩn đoán', 18006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171002, 'Công cụ kim loại tấm', 18006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171003, 'Dụng cụ sửa chữa ắc quy ô tô', 18006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171004, 'Công cụ kiểm tra ô tô', 18006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171005, 'Công cụ sửa chữa động cơ & Hộp số', 18006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171006, 'Công cụ sửa chữa & Lắp lốp', 18006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171007, 'Dụng cụ tháo lắp', 18006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(171008, 'Dụng cụ sửa chữa thân xe', 18006, 0, null, now(), now());

-- Ô tô & xe máy > Đèn xe
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172000, 'Đèn trang trí', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172001, 'Đèn Light Bar & Đèn làm việc', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172002, 'Đèn pha ô tô (LED)', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172003, 'Dây điện', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172004, 'Vỏ bọc', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172005, 'Khung gầm', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172006, 'Đèn báo', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172007, 'Đèn pha ô tô (Xenon)', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172008, 'Đèn pha ô tô (Halogen)', 18007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(172009, 'Đèn sương mù', 18007, 0, null, now(), now());

-- Ô tô & xe máy > Xe Quads, Xe lưu động & Thuyền
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(173000, 'Đèn sương mù', 18008, 0, null, now(), now());
-- Ô tô & xe máy > Rửa & Bảo dưỡng ô tô
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174000, 'Oils', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174001, 'Máy đánh bóng & Phụ kiện', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174002, 'Sơn & Dụng cụ sửa chữa cửa sổ', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174003, 'Bảo dưỡng nội thất', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174004, 'Phụ kiện rửa xe', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174005, 'Súng phun nước & Bình phun bọt tuyết', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174006, 'Dung dịch vệ sinh & bảo dưỡng', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174007, 'Sửa chữa cửa sổ', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174008, 'Bảo dưỡng sơn', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174009, 'Bảo dưỡng động cơ', 18009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(174010, 'Máy rửa xe', 18009, 0, null, now(), now());

-- Phụ kiện thời trang > Nối tóc & tóc giả
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(175000, 'Tóc giả lót ren bện tổng hợp', 19000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(175001, 'Tóc giả toàn bộ đầu làm bằng máy', 19000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(175002, 'Tóc mái giả lót ren tổng hợp', 19000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(175003, 'Tóc nối tổng hợp & kẹp', 19000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(175004, 'Tóc giả phục sức tổng hợp', 19000, 0, null, now(), now());

-- Phụ kiện thời trang > Vải may váy
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176000, 'Batik', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176001, 'Ren', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176002, 'Cotton', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176003, 'Len', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176004, 'Nhung, Lụa & Satin', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176005, 'Da', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176006, 'Polyester', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176007, 'Denim', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176008, 'Canvas', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176009, 'Kain Pasang', 19001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(176010, 'Songket', 19001, 0, null, now(), now());

-- Phụ kiện thời trang > Phụ kiện quần áo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177000, 'Kẹp & Trâm cài cổ áo', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177001, 'Bộ phụ kiện thời trang', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177002, 'Khăn quàng cổ & Khăn choàng', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177003, 'Găng tay', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177004, 'Mũ', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177005, 'Thắt lưng', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177006, 'Cà vạt & Nơ cà vạt', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177007, 'Khăn tay', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177008, 'Khẩu trang & phụ kiện', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177009, 'Khuy măng sét', 19002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(177010, 'Chụp tai', 19002, 0, null, now(), now());

-- Phụ kiện thời trang > Kính mắt
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(178000, 'Gọng & Kính', 19003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(178001, 'Kính râm', 19003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(178002, 'Hộp kính & Phụ kiện', 19003, 0, null, now(), now());

-- Phụ kiện thời trang > Đồng hồ & Phụ kiện
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(179000, 'Đồng hồ nam', 19004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(179001, 'Đồng hồ nữ', 19004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(179002, 'Đồng hồ cặp đôi', 19004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(179003, 'Phụ kiện đồng hồ', 19004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES(179004, 'Đồng hồ unisex', 19004, 0, null, now(), now());

-- Phụ kiện thời trang > Phục sức & phụ kiện
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180000, 'Hoa tai', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180001, 'Lắc chân', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180002, 'Nhẫn', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180003, 'Vòng tay & Lắc tay', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180004, 'Dây chuyền', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180005, 'Hạt charm & Mặt dây chuyền', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180006, 'Trang sức cơ thể', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180007, 'Móc khóa', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180008, 'Bộ trang sức', 19005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (180009, 'Bộ điều chỉnh & Bảo vệ trang sức', 19005, 0, null, now(), now());

-- Phụ kiện thời trang > Phụ kiện cài đầu
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (190000, 'Băng đô', 19006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (190001, 'Bờm & Dây buộc tóc', 19006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (190002, 'Kẹp tóc & Ghim cài tóc', 19006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (190003, 'Phụ kiện cài đầu & Vương miện', 19006, 0, null, now(), now());

-- Đồ ăn & Đồ uống > Sữa và bơ sữa
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (191000, 'Sữa UHT', 20000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (191001, 'Sữa bột', 20000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (191002, 'Sữa thực vật', 20000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (191003, 'Sữa tươi', 20000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (191004, 'Sữa chua & sản phẩm làm từ sữa lên men', 20000, 0, null, now(), now());

-- Đồ ăn & Đồ uống > Đồ uống
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192000, 'Cà phê', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192001, 'Thực phẩm dinh dưỡng & đồ uống protein', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192002, 'Sản phẩm thay thế cà phê', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192003, 'Soda & nước có ga', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192004, 'Trà', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192005, 'Đồ uống sô-cô-la & Sữa mạch nha', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192006, 'Nước ép & Sinh tố', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192007, 'Đồ uống có ga', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192008, 'Nước & Nước có vị', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192009, 'Đồ uống thể thao & Nước tăng lực', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192010, 'Đồ uống không cồn', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192011, 'Hỗn hợp đồ uống dạng bột', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192012, 'Topping đồ uống', 20001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (192013, 'Sirô & nước cô đặc', 20001, 0, null, now(), now());

-- Đồ ăn & Đồ uống > Thực phẩm ăn liền
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (193000, 'Mì gói', 20002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (193001, 'Yến sào', 20002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (193002, 'Thực phẩm đóng hộp, lọ & đóng gói', 20002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (193003, 'Rau muối chua, dưa chua & Chutney', 20002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (193004, 'Cơm & Cháo ăn liền', 20002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (193005, 'Lẩu ăn liền', 20002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (193006, 'Ngũ cốc ăn sáng, Ngũ cốc & Yến mạch', 20002, 0, null, now(), now());

-- Đồ ăn & Đồ uống > Kẹp & Đồ dùng nấu ăn cần thiết
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194000, 'Cơm', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194001, 'Pasta & Mì', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194002, 'Đậu & Ngũ cốc', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194003, 'Dầu', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194004, 'Đường & Chất tạo ngọt', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194005, 'Thảo mộc, Gia vị & Hạt nêm', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194006, 'Muối', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194007, 'Xốt nấu ăn', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194008, 'Giấm', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194009, 'Rượu nấu ăn', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194010, 'Nước hầm xương, Nước thịt & Súp ăn liền', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194011, 'Tương & hỗn hợp gia vị nấu ăn', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194012, 'Chất điều vị', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194013, 'Bột mì', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194014, 'Si-rô mật ong & phong', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194015, 'Mứt, nước xốt & chất phết lên bánh', 20003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (194016, 'Thực phẩm khô', 20003, 0, null, now(), now());

-- Đồ ăn & Đồ uống > Nướng bánh
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195000, 'Bánh mì vụn & nhân nhồi', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195001, 'Sữa đặc', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195002, 'Cao & Hương vị thực phẩm', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195003, 'Bột nở & Baking soda', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195004, 'Hỗn hợp nướng bánh', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195005, 'Bột làm bánh', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195006, 'Màu thực phẩm', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195007, 'Dụng cụ rắc đường, láng đường & trang trí bánh kem', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195008, 'Bột kem', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195009, 'Bơ & Bơ thực vật', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195010, 'Phô mai & Bột phô mai', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195011, 'Kem', 20004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (195012, 'Kẹo xốp', 20004, 0, null, now(), now());

-- Đồ ăn & Đồ uống > Đồ ăn vặt
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196000, 'Bánh quy, Bánh cookies & Bánh xốp', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196001, 'Khoai tây giòn & thức ăn nhanh có nhân', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196002, 'Sô-cô-la & đồ ăn nhẹ có sô-cô-la', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196003, 'Bánh ăn vặt và bánh bột nhào', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196004, 'Kẹo', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196005, 'Hạt', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196006, 'Bắp rang bơ', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196007, 'Rong biển', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196008, 'Quả hạch', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196009, 'Bánh pudding sữa trứng & thạch', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196010, 'Đồ ăn nhẹ khô', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196011, 'Kẹo cao su nhai & Kẹo cao su thổi', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196012, 'Thanh bánh', 20005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (196013, 'Bộ quà tặng', 20005, 0, null, now(), now());

-- Đồ ăn & Đồ uống > Thực phẩm tươi & đông lạnh
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197000, 'Pizza & focaccia', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197001, 'Sandwich & món cuốn', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197002, 'Súp & hầm', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197003, 'Pasta & nước xốt', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197004, 'Deli', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197005, 'Món ăn chế biến sẵn', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197006, 'Thịt', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197007, 'Hải sản', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197008, 'Thực phẩm thay thế thịt', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197009, 'Bánh mỳ', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197010, 'Bánh ngọt và bánh nướng', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197011, 'Bánh ngọt', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197012, 'Kem', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197013, 'Trứng', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197014, 'Đậu hũ', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197015, 'Rau', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197016, 'Hoa quả', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197017, 'Nấm', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197018, 'Thực phẩm đông lạnh', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197019, 'Thịt & Hải sản đã chế biến', 20006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (197020, 'Bộ dụng cụ ăn uống', 20006, 0, null, now(), now());

-- Sức khỏe > Thực phẩm bổ sung
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (198000, 'Thực phẩm chăm sóc sắc đẹp', 21000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (198001, 'Thực phẩm bổ sung thể hình', 21000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (198002, 'Thực phẩm bổ sung sức khỏe', 21000, 0, null, now(), now());

-- Sức khỏe > Vật tư y tế
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199000, 'Que thử kế hoạch hóa gia đình', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199001, 'Khẩu trang y tế', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199002, 'Cân trong nhà tắm', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199003, 'Vật dụng sơ cứu', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199004, 'Kiểm tra & Theo dõi Sức khỏe', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199005, 'Xe lăn', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199006, 'Trợ thính', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199007, 'Nhiệt kế', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199008, 'Mặt nạ bảo hộ PPE', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199009, 'Thuốc hỗ trợ', 21001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (199010, 'Gậy chống', 21001, 0, null, now(), now());

-- Sức khỏe > Thuốc & Phương pháp điều trị thay thế
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (200000, 'Châm cứu', 21002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (200001, 'Tinh dầu trị liệu bằng hương thơm', 21002, 0, null, now(), now());

-- Sách, tạp chí & âm thanh > Khoa học xã hội và nhân văn
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (201000, 'Tâm lý học & Mối quan hệ', 22000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (201001, 'Tôn giáo & Triết học', 22000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (201002, 'Chính trị, Luật & Khoa học xã hội', 22000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (201003, 'Lịch sử & Văn hóa', 22000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (201004, 'Sự nghiệp & Tự lực', 22000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (201005, 'Nuôi dạy con cái & Gia đình', 22000, 0, null, now(), now());

-- Sách, tạp chí & âm thanh > Văn học & Nghệ thuật
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (202000, 'Nhiếp ảnh & Video', 22001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (202001, 'Tiểu sử & Hồi ký', 22001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (202002, 'Văn học', 22001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (202003, 'Viễn tưởng', 22001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (202004, 'Biểu diễn nghệ thuật', 22001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (202005, 'Âm nhạc', 22001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (202006, 'Phim điện ảnh & Truyền hình', 22001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (202007, 'Vẽ tranh & Thiết kế', 22001, 0, null, now(), now());

-- Sách, tạp chí & âm thanh > Kinh tế & Quản lý
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (203000, 'Kinh doanh & Quản lý', 22002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (203001, 'Kinh tế', 22002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (203002, 'Tài chính & Đầu tư', 22002, 0, null, now(), now());

-- Sách, tạp chí & âm thanh > Sách dành cho trẻ em & trẻ sơ sinh
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (204000, 'Văn học & nghệ thuật thiếu nhi', 22003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (204001, 'Sách giáo dục sớm & sách mềm', 22003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (204002, 'Sách hoạt động', 22003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (204003, 'Sách tranh', 22003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (204004, 'Khoa học xã hội và nhân văn cho thiếu nhi', 22003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (204005, 'Khoa học và công nghệ cho thiếu nhi', 22003, 0, null, now(), now());

-- Sách, tạp chí & âm thanh > Khoa học & Công nghệ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (205000, 'Khoa học tự nhiên', 22004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (205001, 'Y khoa', 22004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (205002, 'Máy tính & Mạng', 22004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (205003, 'Kiến trúc', 22004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (205004, 'Nông lâm ngư nghiệp', 22004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (205005, 'Công nghệ công nghiệp', 22004, 0, null, now(), now());

-- Sách, tạp chí & âm thanh > Phong cách sống & Sở thích
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206000, 'Công thức & Nấu nướng', 22005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206001, 'Thủ công mỹ nghệ & Tự làm', 22005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206002, 'Sức khỏe, Thể hình & Ăn kiêng', 22005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206003, 'Du lịch & Bản đồ', 22005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206004, 'Truyện tranh & Manga', 22005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206005, 'Tử vi', 22005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206006, 'Thời trang & Làm đẹp', 22005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206007, 'Giáo dục thai sản & tiền sản', 22005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (206008, 'Thể thao & Thể hình', 22005, 0, null, now(), now());

-- Sách, tạp chí & âm thanh > Giáo dục & Trường học
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (207000, 'Sách giáo khoa', 22006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (207001, 'Ngôn ngữ & Từ điển', 22006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (207002, 'Sách tư vấn', 22006, 0, null, now(), now());

-- Thời trang trẻ em > Quần áo bé trai
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (208000, 'Trang phục & Phụ kiện', 23000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (208001, 'Đồ lót', 23000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (208002, 'Đồ ngủ', 23000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (208003, 'Áo', 23000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (208004, 'Áo choàng & Áo khoác', 23000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (208005, 'Quần', 23000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (208006, 'Bộ vét & Bộ', 23000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (208007, 'Tất', 23000, 1, null, now(), now());

-- Thời trang trẻ em > Quần áo bé gái
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209000, 'Trang phục & Phụ kiện', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209001, 'Đồ lót', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209002, 'Đồ ngủ', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209003, 'Áo', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209004, 'Áo choàng & Áo khoác', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209005, 'Quần', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209006, 'Bộ vét & Bộ', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209007, 'Váy', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209008, 'Chân váy', 23001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209009, 'Tất', 23001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (209010, 'Quần bó', 23001, 1, null, now(), now());

-- Thời trang trẻ em > Giày dép bé trai
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (211000, 'Bốt', 23002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (211001, 'Dép xăng đan & Dép tông', 23002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (211002, 'Giày thể thao', 23002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (211003, 'Dép lê', 23002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (211004, 'Giày đi dự tiệc', 23002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (211005, 'Giày đế bằng', 23002, 0, null, now(), now());

-- Thời trang trẻ em > Giày dép bé gái
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (212000, 'Bốt', 23003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (212001, 'Dép xăng đan & Dép tông', 23003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (212002, 'Giày thể thao', 23003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (212003, 'Dép lê', 23003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (212004, 'Giày đế bằng', 23003, 0, null, now(), now());

-- Thời trang trẻ em > Phụ kiện thời trang cho trẻ em
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213000, 'Túi xách & Hành lý', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213001, 'Mũ trẻ em', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213002, 'Kính mắt', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213003, 'Phụ kiện cài đầu', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213004, 'Găng tay', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213005, 'Thắt lưng', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213006, 'Khăn quàng cổ & Khăn choàng trẻ em', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213007, 'Đồng hồ', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213008, 'Phục sức & phụ kiện trẻ em', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213009, 'Chụp tai', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213010, 'Cà vạt & Nơ cà vạt', 23004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (213011, 'Mặt nạ', 23004, 0, null, now(), now());

-- Trang phục nam & Đồ lót > Áo nam
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (214000, 'Áo gilê và Áo gilet', 24000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (214001, 'Áo sơ mi', 24000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (214002, 'Áo khoác & Áo choàng', 24000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (214003, 'Áo hoodie & Áo len', 24000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (214004, 'Hàng dệt kim', 24000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (214005, 'Áo thun', 24000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (214006, 'Áo gi lê', 24000, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (214007, 'Áo Polo', 24000, 1, null, now(), now());

-- Trang phục nam & Đồ lót > Quần nam
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (215000, 'Quần short', 24001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (215001, 'Quần jean', 24001, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (215002, 'Quần dài', 24001, 1, null, now(), now());

-- Trang phục nam & Đồ lót > Trang phục đặc biệt dành cho nam
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (216000, 'Trang phục & Phụ kiện', 24002, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (216001, 'Quần áo bảo hộ lao động & Đồng phục', 24002, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (216002, 'Trang phục truyền thống', 24002, 1, null, now(), now());

-- Trang phục nam & Đồ lót > Đồ lót nam
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (217000, 'Đồ lót', 24003, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (217001, 'Áo gi lê', 24003, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (217002, 'Đồ giữ ấm mặc bên trong', 24003, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (217003, 'Tất', 24003, 1, null, now(), now());

-- Trang phục nam & Đồ lót > Đồ ngủ nam
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (218000, 'Áo liền quần rộng', 24004, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (218001, 'Bộ ngủ', 24004, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (218002, 'Áo choàng tắm & Áo choàng', 24004, 1, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (218003, 'Áo ngủ', 24004, 1, null, now(), now());

-- Trang phục nam & Đồ lót > Bộ vét và quần yếm nam
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (219000, 'Bộ', 24005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (219001, 'Bộ vét', 24005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (219002, 'Quần yếm', 24005, 0, null, now(), now());

-- Hành lý & Túi xách > Túi xách nữ
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (220001, 'Túi đeo chéo & Túi đeo vai', 25000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (220002, 'Ví', 25000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (220003, 'Túi ví cầm tay & Túi ví đeo cổ tay', 25000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (220004, 'Túi xách', 25000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (220005, 'Túi bao tử & Túi thắt lưng', 25000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (220006, 'Túi tote', 25000, 0, null, now(), now());

-- Hành lý & Túi xách > Túi xách nam
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (221001, 'Túi đeo chéo & Túi đeo vai', 25001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (221002, 'Ví', 25001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (221003, 'Túi ví cầm tay', 25001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (221004, 'Túi tote', 25001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (221005, 'Cặp tài liệu', 25001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (221006, 'Túi bao tử & Túi thắt lưng', 25001, 0, null, now(), now());

-- Hành lý & Túi xách > Hành lý & Túi du lịch
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (222001, 'Túi du lịch', 25002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (222002, 'Phụ kiện hành lý', 25002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (222003, 'Hành lý', 25002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (222004, 'Ví đựng thẻ', 25002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (222005, 'Bìa & Ví đựng hộ chiếu', 25002, 0, null, now(), now());

-- Hành lý & Túi xách > Túi đa năng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (223001, 'Túi đựng máy tính xách tay', 25003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (223002, 'Túi đựng đồ trang điểm', 25003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (223003, 'Ba lô', 25003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (223004, 'Túi đựng hộp cơm', 25003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (223005, 'Túi làm mát', 25003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (223006, 'Các túi mua sắm', 25003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (223007, 'Túi đựng đồ vệ sinh', 25003, 0, null, now(), now());

-- Hành lý & Túi xách > Phụ kiện túi
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (224001, 'Quai xách & Dây đeo dạng xích', 25004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (224002, 'Móc treo túi', 25004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (224003, 'Móc treo & Khăn cột túi', 25004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (224004, 'Túi nhiều ngăn', 25004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (224005, 'Vệ sinh & Bảo quản', 25004, 0, null, now(), now());

-- Bộ sưu tập > Khung giường & đầu giường
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (225001, 'Thẻ bài phi thể thao', 26000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (225002, 'Phụ kiện thẻ bài', 26000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (225003, 'Thẻ bài thể thao', 26000, 0, null, now(), now());

-- Bộ sưu tập > Bộ sưu tập thể thao
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226001, 'Áo thể thao', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226002, 'Ảnh chụp', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226003, 'Bóng', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226004, 'Cúp', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226005, 'Tượng nhỏ', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226006, 'Găng tay', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226007, 'Mũ', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226008, 'Giày', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226009, 'Câu lạc bộ golf', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226010, 'Cờ & Biểu ngữ', 26001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (226011, 'Ảnh in & Áp phích', 26001, 0, null, now(), now());

-- Bộ sưu tập > Giải trí
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (227001, 'Thẻ ảnh', 26002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (227002, 'Tượng nhỏ & tượng', 26002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (227003, 'Tem bưu chính', 26002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (227004, 'Ô tô mô hình & Đồ chơi Diecast', 26002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (227005, 'Đĩa', 26002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (227006, 'Ảnh in & Áp phích', 26002, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Bạch kim & Vàng Carat
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (228001, 'Dây chuyền', 27000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (228002, 'Mặt dây chuyền bằng bạch kim & vàng Carat', 27000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (228003, 'Nhẫn bạch kim & vàng Carat', 27000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (228004, 'Vòng tay', 27000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (228005, 'Lắc chân bằng bạch kim & vàng Carat', 27000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (228006, 'Khuyên tai bạch kim & vàng Carat', 27000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (228007, 'Bộ trang sức bạch kim & vàng Carat', 27000, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (228008, 'Phụ kiện quần áo bạch kim & vàng Carat', 27000, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Vàng
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (229001, 'Dây chuyền & Mặt dây chuyền vàng', 27001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (229002, 'Nhẫn vàng', 27001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (229003, 'Vòng tay & Lắc chân vàng', 27001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (229004, 'Khuyên tai vàng', 27001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (229005, 'Bộ trang sức bằng vàng', 27001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (229006, 'Phụ kiện quần áo bằng vàng', 27001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (229007, 'Đồ trang trí bằng vàng', 27001, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (229008, 'Vàng bán thành phẩm', 27001, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Bạc
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (230001, 'Dây chuyền & Mặt dây chuyền bạc', 27002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (230002, 'Nhẫn bạc', 27002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (230003, 'Vòng tay & Lắc chân bạc', 27002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (230004, 'Khuyên tai bạc', 27002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (230005, 'Bộ trang sức bằng bạc', 27002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (230006, 'Phụ kiện quần áo bằng bạc', 27002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (230007, 'Đồ trang trí bằng bạc', 27002, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (230008, 'Bạc bán thành phẩm', 27002, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Kim cương
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (231001, 'Dây chuyền & Mặt dây chuyền kim cương', 27003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (231002, 'Nhẫn kim cương', 27003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (231003, 'Vòng tay & Lắc chân kim cương', 27003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (231004, 'Khuyên tai kim cương', 27003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (231005, 'Bộ trang sức kim cương', 27003, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (231006, 'Phụ kiện quần áo kim cương', 27003, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Pha lê tự nhiên
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (232001, 'Dây chuyền & Mặt dây chuyền pha lê tự nhiên', 27004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (232002, 'Nhẫn pha lê tự nhiên', 27004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (232003, 'Vòng tay & Lắc chân pha lê tự nhiên', 27004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (232004, 'Khuyên tai pha lê tự nhiên', 27004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (232005, 'Bộ trang sức pha lê tự nhiên', 27004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (232006, 'Phụ kiện quần áo pha lê tự nhiên', 27004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (232007, 'Đồ trang trí bằng pha lê tự nhiên', 27004, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (232008, 'Pha lê tự nhiên bán thành phẩm', 27004, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Pha lê nhân tạo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (233001, 'Dây chuyền & Mặt dây chuyền pha lê không tự nhiên', 27005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (233002, 'Nhẫn pha lê không tự nhiên', 27005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (233003, 'Vòng tay & Lắc chân pha lê không phải tự nhiên', 27005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (233004, 'Khuyên tai pha lê không tự nhiên', 27005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (233005, 'Bộ trang sức pha lê không tự nhiên', 27005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (233006, 'Phụ kiện quần áo pha lê không tự nhiên', 27005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (233007, 'Đồ trang trí bằng pha lê không tự nhiên', 27005, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (233008, 'Pha lê không tự nhiên bán thành phẩm', 27005, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Ngọc bích
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (234001, 'Dây chuyền & Mặt dây chuyền ngọc bích', 27006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (234002, 'Nhẫn ngọc bích', 27006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (234003, 'Vòng tay & Lắc chân ngọc bích', 27006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (234004, 'Khuyên tai ngọc bích', 27006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (234005, 'Bộ trang sức ngọc bích', 27006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (234006, 'Phụ kiện quần áo ngọc bích', 27006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (234007, 'Đồ trang trí bằng ngọc bích', 27006, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (234008, 'Ngọc bích bán thành phẩm', 27006, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Hồng ngọc, Sapphire & Ngọc lục bảo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (235001, 'Dây chuyền & Mặt dây chuyền Hồng ngọc, Sapphire & Ngọc lục bảo', 27007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (235002, 'Nhẫn Hồng ngọc, Sapphire & Ngọc lục bảo', 27007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (235003, 'Vòng tay & Lắc chân Hồng ngọc, Sapphire & Ngọc lục bảo', 27007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (235004, 'Khuyên tai Hồng ngọc, Sapphire & Ngọc lục bảo', 27007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (235005, 'Bộ trang sức Hồng ngọc, Sapphire & Ngọc lục bảo', 27007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (235006, 'Phụ kiện quần áo bằng Hồng ngọc, Sapphire & Ngọc lục bảo', 27007, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (235007, 'Hồng ngọc, Sapphire & Ngọc lục bảo bán thành phẩm', 27007, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Đá bán quý
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (236001, 'Dây chuyền & Mặt dây chuyền bằng đá bán quý', 27008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (236002, 'Nhẫn đá bán quý', 27008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (236003, 'Vòng tay & Lắc chân bằng đá bán quý', 27008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (236004, 'Khuyên tai bằng đá bán quý', 27008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (236005, 'Bộ trang sức bằng đá bán quý', 27008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (236006, 'Phụ kiện quần áo bằng đá bán quý', 27008, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (236007, 'Đá bán quý bán thành phẩm', 27008, 0, null, now(), now());

-- Phụ kiện trang sức & Phái sinh > Đá quý nhân tạo
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (237001, 'Dây chuyền & Mặt dây chuyền đá quý nhân tạo', 27009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (237002, 'Nhẫn đá quý nhân tạo', 27009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (237003, 'Vòng tay & Lắc chân đá quý nhân tạo', 27009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (237004, 'Khuyên tai đá quý nhân tạo', 27009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (237005, 'Bộ trang sức bằng đá quý nhân tạo', 27009, 0, null, now(), now());
INSERT IGNORE INTO categories (id, name, parent_id, size_table, description, created_at, updated_at) VALUES (237006, 'Phụ kiện quần áo bằng đá quý nhân tạo', 27009, 0, null, now(), now());
