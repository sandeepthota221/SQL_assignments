CREATE DATABASE SQL_123;

USE SQL_123;

CREATE TABLE Product_Info (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL
);


INSERT INTO Product_Info (product_id, product_name)
VALUES
    (1001, 'Blog'),
    (1002, 'YouTube'),
    (1003, 'Education');

CREATE TABLE Product_Info_Likes (
    user_id INT,
    product_id INT,
    liked_date DATE,
    FOREIGN KEY (product_id) REFERENCES Product_Info(product_id)
);

INSERT INTO Product_Info_Likes (user_id, product_id, liked_date)
VALUES
    (1, 1001, '2023-08-19'),
    (2, 1003, '2023-01-18');

SELECT P.product_id
FROM Product_Info AS P
LEFT JOIN Product_Info_Likes AS PL ON P.product_id = PL.product_id
WHERE PL.product_id IS NULL;
