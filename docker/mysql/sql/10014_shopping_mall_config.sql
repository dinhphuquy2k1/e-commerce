SET
    CHARSET UTF8;

INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (1, 'Điện thoại nổi bật', 0, 5, 25, 1, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (2, 'ads', 2, 5, 25, 2, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (3, 'Laptop nổi bật', 0, 5, 15, 3, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (4, 'ads', 2, 5, 25, 4, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (5, 'Màn hình nổi bật', 0, 5, 15, 5, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (6, 'ads', 2, 5, 25, 6, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (7, 'Âm thanh nổi bật', 1, 5, 25, 7, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (8, 'ads', 2, 5, 25, 8, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (9, 'Điện máy nổi bật', 1, 5, 25, 9, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (10, 'ads', 2, 5, 25, 10, now(), now());
INSERT IGNORE INTO shopping_mall_configs (id, title, type, columns_per_row, quantity, display_order, created_at,
                                          updated_at)
VALUES (11, 'Tablet', 1, 5, 25, 11, now(), now());

-- Điện thoại nổi bật
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (1, 'HONOR', 1, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (2, 'Xiaomi', 1, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (3, 'OPPO', 1, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (4, 'OSCAL', 1, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (5, 'TECNO', 1, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (6, 'REALME', 1, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (7, 'Vivo', 1, now(), now());
-- Laptop nổi bật
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (8, 'ASUS', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (9, 'MSI', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (10, 'DELL', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (11, 'Lenovo', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (12, 'MacBook', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (13, 'LG', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (14, 'HUAWEI', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (15, 'HP', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (16, 'GIGABYTE', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (17, 'Itel', 3, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (18, 'Xiaomi', 3, now(), now());
-- Màn hình nổi bật
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (19, 'MSI', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (20, 'Xiaomi', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (21, 'ViewSonic', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (22, 'VSP', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (23, 'Samsung', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (24, 'Acer', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (25, 'GIGABYTE', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (26, 'Lenovo', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (27, 'Dell', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (28, 'HP', 5, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (29, 'LG', 5, now(), now());
-- Âm thanh nổi bật
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (30, 'Loa', 7, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (31, 'Tai nghe', 7, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (32, 'JBL', 7, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (33, 'Marshall', 7, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (34, 'Sony', 7, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (35, 'Alpha Works', 7, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (36, 'Baseus', 7, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (37, 'SoundPEATS', 7, now(), now());
-- Điện máy nổi bật
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (38, 'Xiaomi', 9, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (39, 'Casper', 9, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (40, 'Coocaa', 9, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (41, 'Samsung', 9, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (42, 'Itel', 9, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (43, 'SKYWORTH', 9, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (44, 'TOSHIBA', 9, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (45, 'LG', 9, now(), now());
-- Tablet
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (46, 'Samsung', 11, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (47, 'Xiaomi', 11, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (48, 'TCL', 11, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (49, 'Lenovo', 11, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (50, 'HTC', 11, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (51, 'OPPO', 11, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (52, 'HUAWEI', 11, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (53, 'Nokia', 11, now(), now());
INSERT IGNORE INTO shopping_mall_tags
    (id, name, shopping_mall_config_id, created_at, updated_at)
VALUES (54, 'Yuho', 11, now(), now());

-- ads
INSERT INTO shopping_mall_items
(id, name, product_id, shopping_mall_tag_id, shopping_mall_config_id, link, created_at, updated_at)
VALUES(1, 'ads', null, null, 2, '', now(), now());
INSERT INTO shopping_mall_items
(id, name, product_id, shopping_mall_tag_id, shopping_mall_config_id, link, created_at, updated_at)
VALUES(2, 'ads', null, null, 4, '', now(), now());
INSERT INTO shopping_mall_items
(id, name, product_id, shopping_mall_tag_id, shopping_mall_config_id, link, created_at, updated_at)
VALUES(3, 'ads', null, null, 6, '', now(), now());
INSERT INTO shopping_mall_items
(id, name, product_id, shopping_mall_tag_id, shopping_mall_config_id, link, created_at, updated_at)
VALUES(4, 'ads', null, null, 8, '', now(), now());
INSERT INTO shopping_mall_items
(id, name, product_id, shopping_mall_tag_id, shopping_mall_config_id, link, created_at, updated_at)
VALUES(5, 'ads', null, null, 10, '', now(), now());
INSERT IGNORE INTO medias
(id, media_url, product_id, category_id, shopping_mall_item_id, type, genitive, created_at, updated_at)
VALUES (1, 'ads/xiaomi-1200x200.png', null, null, 1, 0, 0, now(), now());
INSERT IGNORE INTO medias
(id, media_url, product_id, category_id, shopping_mall_item_id, type, genitive, created_at, updated_at)
VALUES (2, 'ads/xiaomi-1200x200.png', null, null, 2, 0, 0, now(), now());
INSERT IGNORE INTO medias
(id, media_url, product_id, category_id, shopping_mall_item_id, type, genitive, created_at, updated_at)
VALUES (3, 'ads/xiaomi-1200x200.png', null, null, 3, 0, 0, now(), now());
INSERT IGNORE INTO medias
(id, media_url, product_id, category_id, shopping_mall_item_id, type, genitive, created_at, updated_at)
VALUES (4, 'ads/xiaomi-1200x200.png', null, null, 4, 0, 0, now(), now());
INSERT IGNORE INTO medias
(id, media_url, product_id, category_id, shopping_mall_item_id, type, genitive, created_at, updated_at)
VALUES (5, 'ads/xiaomi-1200x200.png', null, null, 5, 0, 0, now(), now());
