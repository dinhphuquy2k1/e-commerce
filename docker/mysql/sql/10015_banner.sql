SET
    CHARSET UTF8;

INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (1, 'Mở bán Iphone 16 pro', 'Ưu đãi tới 7 triệu đồng', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (2, 'Back 2 School', 'Siêu sale tới 70%', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (3, 'Khuyến mãi phụ kiện Xiaomi', 'Giá chỉ từ 279.000đ', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (4, 'BTS MSI', 'Chọn sức mạnh mới. Chọn MSI', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (5, 'Amazfit T-rex 3', 'Quà tặng hấp dẫn', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (6, 'HONOR X7b | Giá chỉ từ 4.390.000đ', 'Mua ngay', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (7, 'HONOR 200', 'Chuyên gia ghi nét chân dung', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (8, 'ASUS AI', 'Học chất chơi chill', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (9, 'Mở bán Xiaomi 14T series', 'Tổng ưu đãi lên đến 5.5 triệu', '', now(), now());
INSERT IGNORE INTO banners
    (id, title, description, link, created_at, updated_at)
VALUES (10, 'Tecno Spark Go 1', 'Bứt phá và tỏa sáng', '', now(), now());

-- image
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/banner-titan-desert-website-desktop.png', null, null, null, 1, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/bts-1200x375.jpg', null, null, null, 2, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/khuyen-mai-xiaomi-1200x375.png', null, null, null, 3, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/kv-bts-02.jpg', null, null, null, 4, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/banner-web-amazfit-t-rex-3-01.jpg', null, null, null, 5, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/honor-x7b-1200x375.png', null, null, null, 6, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/honor-200-1200x375-3.png', null, null, null, 7, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/hoang-ha-1200-x-375.jpg', null, null, null, 8, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/web-14t-mo-ban.jpg', null, null, null, 9, 4, 3, now(), now());
INSERT IGNORE INTO medias
(media_url, product_id, category_id, shopping_mall_item_id, banner_id, `type`, genitive, created_at, updated_at)
VALUES ('banner/mo-ban-tecno-spark-go-1-01.jpg', null, null, null, 10, 4, 3, now(), now());
