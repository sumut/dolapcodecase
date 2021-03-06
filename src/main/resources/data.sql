INSERT INTO domain_value_type(code, description, deleted, create_time)
VALUES ('SHOE_BRAND', 'Brands which produce shoes', 0, CURRENT_TIMESTAMP());
INSERT INTO domain_value_type(code, description, deleted, create_time)
VALUES ('DRESS_BRAND', 'Brands which produce dresses', 0, CURRENT_TIMESTAMP());
INSERT INTO domain_value_type(code, description, deleted, create_time)
VALUES ('USAGE_STATUS', 'Usage status of products', 0, CURRENT_TIMESTAMP());
INSERT INTO domain_value_type(code, description, deleted, create_time)
VALUES ('DRESS_SIZE', 'Dress size of products', 0, CURRENT_TIMESTAMP());
INSERT INTO domain_value_type(code, description, deleted, create_time)
VALUES ('SHOE_TYPE', 'Types of shoe products', 0, CURRENT_TIMESTAMP());
INSERT INTO domain_value_type(code, description, deleted, create_time)
VALUES ('DRESS_TYPE', 'Types of dress products', 0, CURRENT_TIMESTAMP());

INSERT INTO brand(code, name, description, deleted, create_time)
VALUES ('ADIDAS', 'Adidas', 'German Sport Brand', 0, CURRENT_TIMESTAMP());
INSERT INTO brand(code, name, description, deleted, create_time)
VALUES ('NIKE', 'Nike', 'American Sport Brand', 0, CURRENT_TIMESTAMP());

INSERT INTO brand(code, name, description, deleted, create_time)
VALUES ('LCWAIKIKI', 'LC Waikiki', 'French Clothing Brand', 0, CURRENT_TIMESTAMP());
INSERT INTO brand(code, name, description, deleted, create_time)
VALUES ('H_M', 'H&M', 'Sweedish Clothing Brand', 0, CURRENT_TIMESTAMP());

INSERT INTO brand_produces_relation(brand_id, produces_id)
VALUES ((SELECT id FROM brand WHERE code = 'ADIDAS'), (SELECT id FROM domain_value_type WHERE code = 'SHOE_BRAND'));
INSERT INTO brand_produces_relation(brand_id, produces_id)
VALUES ((SELECT id FROM brand WHERE code = 'NIKE'), (SELECT id FROM domain_value_type WHERE code = 'SHOE_BRAND'));

INSERT INTO brand_produces_relation(brand_id, produces_id)
VALUES ((SELECT id FROM brand WHERE code = 'LCWAIKIKI'), (SELECT id FROM domain_value_type WHERE code = 'DRESS_BRAND'));
INSERT INTO brand_produces_relation(brand_id, produces_id)
VALUES ((SELECT id FROM brand WHERE code = 'H_M'), (SELECT id FROM domain_value_type WHERE code = 'DRESS_BRAND'));

INSERT INTO category_type (code, name, description, deleted, create_time)
VALUES ('MAN', 'Man', 'contains products for men', 0, CURRENT_TIMESTAMP());
INSERT INTO category_type(code, name, description, deleted, create_time)
VALUES ('WOMAN', 'Woman', 'contains products for womans', 0, CURRENT_TIMESTAMP());

INSERT INTO category (code, name, description, category_type_id, deleted, create_time)
VALUES ('CLOTHING', 'Clothing', 'contains clothing products', (SELECT id FROM category_type WHERE code = 'MAN'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO category (code, name, description, category_type_id, deleted, create_time)
VALUES ('SHOES', 'Shoe', 'contains shoe products', (SELECT id FROM category_type WHERE code = 'MAN'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO category (code, name, description, category_type_id, deleted, create_time)
VALUES ('CLOTHING', 'Clothing', 'contains clothing products', (SELECT id FROM category_type WHERE code = 'WOMAN'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO category (code, name, description, category_type_id, deleted, create_time)
VALUES ('SHOES', 'Shoe', 'contains shoe products', (SELECT id FROM category_type WHERE code = 'WOMAN'), 0,
        CURRENT_TIMESTAMP());

INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('NEW', 'New', 'New Product', (SELECT id FROM domain_value_type WHERE code = 'USAGE_STATUS'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('LESS_USED', 'Less Used', 'Less Used Product', (SELECT id FROM domain_value_type WHERE code = 'USAGE_STATUS'),
        0, CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('AVERAGE_USED', 'Average Used', 'Average Used Product',
        (SELECT id FROM domain_value_type WHERE code = 'USAGE_STATUS'), 0, CURRENT_TIMESTAMP());

INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('S', 'Small', 'Small sized product', (SELECT id FROM domain_value_type WHERE code = 'DRESS_SIZE'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('M', 'Medium', 'Medium sized product', (SELECT id FROM domain_value_type WHERE code = 'DRESS_SIZE'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('L', 'Large', 'Large sized product', (SELECT id FROM domain_value_type WHERE code = 'DRESS_SIZE'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('XL', 'XLarge', 'XLarge sized product', (SELECT id FROM domain_value_type WHERE code = 'DRESS_SIZE'), 0,
        CURRENT_TIMESTAMP());

INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('CASUAL', 'Casual Shoe', 'Casual Shoe Type', (SELECT id FROM domain_value_type WHERE code = 'SHOE_TYPE'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('RUNNING', 'Running Shoe', 'Running Shoe Type', (SELECT id FROM domain_value_type WHERE code = 'SHOE_TYPE'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('BASKETBALL', 'Basketball Shoe', 'Basketball Shoe Type',
        (SELECT id FROM domain_value_type WHERE code = 'SHOE_TYPE'), 0, CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('BOAT', 'Boat Shoe', 'Boat Shoe Type', (SELECT id FROM domain_value_type WHERE code = 'SHOE_TYPE'), 0,
        CURRENT_TIMESTAMP());

INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('JEAN', 'Jean', 'Jean Clothing Type', (SELECT id FROM domain_value_type WHERE code = 'DRESS_TYPE'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('TSHIRT', 'T-shirt', 'T-shirt Clothing Type', (SELECT id FROM domain_value_type WHERE code = 'DRESS_TYPE'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('COAT', 'Coat', 'Coat Clothing Type', (SELECT id FROM domain_value_type WHERE code = 'DRESS_TYPE'), 0,
        CURRENT_TIMESTAMP());
INSERT INTO domain_value(code, name, description, domain_value_type_id, deleted, create_time)
VALUES ('SKIRT', 'Skirt', 'Skirt Clothing Type', (SELECT id FROM domain_value_type WHERE code = 'DRESS_TYPE'), 0,
        CURRENT_TIMESTAMP());
