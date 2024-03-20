INSERT INTO Users (FirstName, LastName, Email, Age, create_time) 
VALUES 
    ('John', 'Doe', 'john.doe@example.com', 30, CURRENT_DATE),
    ('Alice', 'Smith', 'alice.smith@example.com', 25, CURRENT_DATE),
    ('Bob', 'Johnson', 'bob.johnson@example.com', 35, CURRENT_DATE),
    ('Emily', 'Brown', 'emily.brown@example.com', 28, CURRENT_DATE),
    ('Michael', 'Wilson', 'michael.wilson@example.com', 40, CURRENT_DATE),
    ('Emma', 'Jones', 'emma.jones@example.com', 22, CURRENT_DATE),
    ('David', 'Taylor', 'david.taylor@example.com', 33, CURRENT_DATE),
    ('Sophia', 'Martinez', 'sophia.martinez@example.com', 29, CURRENT_DATE),
    ('James', 'Anderson', 'james.anderson@example.com', 31, CURRENT_DATE),
    ('Olivia', 'Thomas', 'olivia.thomas@example.com', 27, CURRENT_DATE);


INSERT INTO Categories (Name, create_time) 
VALUES 
    ('Electronics', CURRENT_DATE),
    ('Clothing', CURRENT_DATE),
    ('Home & Garden', CURRENT_DATE),
    ('Books', CURRENT_DATE),
    ('Sports & Outdoors', CURRENT_DATE),
    ('Toys & Games', CURRENT_DATE),
    ('Health & Beauty', CURRENT_DATE),
    ('Automotive', CURRENT_DATE),
    ('Food & Grocery', CURRENT_DATE),
    ('Music & Movies', CURRENT_DATE);


INSERT INTO Products (ProductName, CategoryId, Price, StockQuantity, create_time) 
VALUES 
    ('Smartphone', 1, 599.99, 100, CURRENT_DATE),
    ('Laptop', 1, 999.99, 50, CURRENT_DATE),
    ('T-shirt', 2, 19.99, 200, CURRENT_DATE),
    ('Jeans', 2, 39.99, 150, CURRENT_DATE),
    ('Sofa', 3, 799.99, 20, CURRENT_DATE),
    ('Coffee Table', 3, 149.99, 30, CURRENT_DATE),
    ('Harry Potter Book Set', 4, 49.99, 100, CURRENT_DATE),
    ('Football', 5, 29.99, 50, CURRENT_DATE),
    ('Board Game', 6, 24.99, 80, CURRENT_DATE),
    ('Shampoo', 1, 9.99, 150, CURRENT_DATE);
