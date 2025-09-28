
-- Ecommerce Sample Database Schema and Data

CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY,
    name TEXT,
    country TEXT,
    signup_date DATE
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    name TEXT,
    category TEXT,
    price REAL
);

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    order_date DATE,
    total_amount REAL,
    FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

CREATE TABLE Order_Items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    subtotal REAL,
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(product_id) REFERENCES Products(product_id)
);

-- Insert Users
INSERT INTO Users VALUES (1, 'Alice', 'India', '2023-01-15');
INSERT INTO Users VALUES (2, 'Bob', 'USA', '2023-02-20');
INSERT INTO Users VALUES (3, 'Charlie', 'UK', '2023-03-05');
INSERT INTO Users VALUES (4, 'Diana', 'India', '2023-03-22');
INSERT INTO Users VALUES (5, 'Ethan', 'Canada', '2023-04-10');

-- Insert Products
INSERT INTO Products VALUES (1, 'Laptop', 'Electronics', 800);
INSERT INTO Products VALUES (2, 'Phone', 'Electronics', 500);
INSERT INTO Products VALUES (3, 'Headphones', 'Accessories', 50);
INSERT INTO Products VALUES (4, 'Shoes', 'Fashion', 100);
INSERT INTO Products VALUES (5, 'Backpack', 'Fashion', 70);

-- Insert Orders
INSERT INTO Orders VALUES (1, 1, '2023-05-01', 850);
INSERT INTO Orders VALUES (2, 2, '2023-05-02', 500);
INSERT INTO Orders VALUES (3, 3, '2023-05-03', 120);
INSERT INTO Orders VALUES (4, 1, '2023-05-04', 570);
INSERT INTO Orders VALUES (5, 4, '2023-05-05', 1000);

-- Insert Order_Items
INSERT INTO Order_Items VALUES (1, 1, 1, 1, 800);
INSERT INTO Order_Items VALUES (2, 1, 3, 1, 50);
INSERT INTO Order_Items VALUES (3, 2, 2, 1, 500);
INSERT INTO Order_Items VALUES (4, 3, 4, 1, 100);
INSERT INTO Order_Items VALUES (5, 3, 3, 1, 20);
INSERT INTO Order_Items VALUES (6, 4, 2, 1, 500);
INSERT INTO Order_Items VALUES (7, 4, 5, 1, 70);
INSERT INTO Order_Items VALUES (8, 5, 1, 1, 800);
INSERT INTO Order_Items VALUES (9, 5, 2, 1, 500);
INSERT INTO Order_Items VALUES (10, 5, 4, 1, 100);
