-- Active: 1710859505632@@127.0.0.1@5432@exo1_db@public#Tables
CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    Age INT,
    create_time DATE
);

CREATE TABLE Categories (
    CategoryId SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    create_time DATE
);

CREATE TABLE Products (
    ProductId SERIAL PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    CategoryId INT,
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    create_time DATE
);
