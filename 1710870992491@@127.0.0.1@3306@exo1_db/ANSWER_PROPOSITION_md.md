-- SQLBook: Markup
## SQL

1. `SELECT * FROM Users WHERE FirstName = 'John';`
2. `SELECT COUNT(*) FROM Users;`
3. `SELECT FirstName, LastName, Email FROM Users;`
4. `SELECT * FROM Users WHERE Age < 30;`
5. `DELETE FROM Users WHERE Email LIKE '%@example.com';`
6. `SELECT DISTINCT Name FROM Categories;`
7. `SELECT COUNT(DISTINCT CategoryId) FROM Categories;`
8. `SELECT * FROM Products WHERE Price > 100;`
9. `SELECT * FROM Products WHERE StockQuantity = 0;`
10. `UPDATE Products SET Price = Price * 1.1 WHERE CategoryId = <category_id>;`
11. `INSERT INTO Categories (Name, create_time) VALUES ('New Category', NOW());`
12. `DELETE FROM Categories WHERE CategoryId = <category_id>;`
13. `SELECT ProductName, MIN(Price) FROM Products;`
14. `SELECT COUNT(*) FROM Products;`
15. `SELECT CategoryId, COUNT(*) AS TotalProducts FROM Products GROUP BY CategoryId;`
16. `SELECT p.*, c.Name FROM Products p INNER JOIN Categories c ON p.CategoryId = c.CategoryId;`
17. `SELECT AVG(Price) FROM Products;`
18. `SELECT u.*, COUNT(o.*) AS TotalOrders FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID GROUP BY u.UserID;`
19. `INSERT INTO Users (FirstName, LastName, Email, Age, create_time) VALUES ('John', 'Doe', 'john@example.com', 30, NOW());`
20. `UPDATE Users SET Email = 'new_email@example.com' WHERE UserID = <user_id>;`
21. `DELETE FROM Users WHERE UserID = <user_id>;`
22. `SELECT u.*, COUNT(o.*) AS TotalOrders FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID GROUP BY u.UserID ORDER BY u.Age DESC;`
23. `SELECT * FROM Products ORDER BY StockQuantity DESC LIMIT 1;`
24. `SELECT COUNT(*) FROM Products WHERE Price < 50;`
25. (Cette requête nécessite une jointure complexe et n'est pas fournie ici)
26. `SELECT c.Name, AVG(p.Price) AS AveragePrice FROM Categories c INNER JOIN Products p ON c.CategoryId = p.CategoryId GROUP BY c.CategoryId ORDER BY AveragePrice DESC;`
27. `INSERT INTO Products (ProductName, Price, StockQuantity, CategoryId, create_time) VALUES ('New Product', 99.99, 100, 1, NOW());`
28. `UPDATE Products SET StockQuantity = StockQuantity + 10 WHERE ProductId = <product_id>;`
29. `DELETE FROM Products WHERE ProductId = <product_id>;`
30. `SELECT FirstName, create_time FROM Users;`
31. `SELECT u.*, COUNT(o.*) AS TotalOrders FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID WHERE u.Age < 40 GROUP BY u.UserID;`
32. `SELECT MAX(Price) FROM Products;`
33. `SELECT u.*, COUNT(o.*) AS TotalOrders FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID GROUP BY u.UserID ORDER BY u.Age ASC;`
34. (Cette requête nécessite une jointure complexe et n'est pas fournie ici)
35. `INSERT INTO Users (FirstName, LastName, Email, Age, create_time) VALUES ('John', 'Doe', 'john@example.com', 30, NOW());`
36. `UPDATE Products SET CategoryId = <new_category_id> WHERE ProductId = <product_id>;`
37. `DELETE FROM Categories WHERE CategoryId = <category_id>;`
38. `DELETE FROM Products WHERE Price < 10;`
39. `SELECT u.*, COUNT(o.*) AS TotalOrders FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID WHERE u.FirstName LIKE 'A%' GROUP BY u.UserID;`
40. `SELECT p.*, c.Name FROM Products p INNER JOIN Categories c ON p.CategoryId = c.CategoryId ORDER BY c.Name ASC;`
41. `SELECT c.Name, AVG(p.Price) AS AveragePrice FROM Categories c INNER JOIN Products p ON c.CategoryId = p.CategoryId WHERE p.ProductId IN (SELECT ProductId FROM Users WHERE Age < 30) GROUP BY c.CategoryId;`
42. `INSERT INTO Products (ProductName, Price, StockQuantity, CategoryId, create_time) SELECT 'New Product', 99.99, 100, CategoryId, NOW() FROM Categories WHERE Name = 'Electronics';`
43. `UPDATE Categories SET Name = 'New Category Name' WHERE CategoryId = <category_id>;`
44. `DELETE FROM Users WHERE UserID = <user_id> AND EXISTS (SELECT * FROM Orders WHERE UserID = <user_id>);`
45. `SELECT u.*, COUNT(o.*) AS TotalOrders FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID WHERE u.FirstName LIKE 'A%' GROUP BY u.UserID HAVING SUM(o.TotalAmount) > 1000;`
46. `SELECT COUNT(*) FROM Products WHERE StockQuantity < 10;`
47. `SELECT p.*, c.Name FROM Products p INNER JOIN Categories c ON p.CategoryId = c.CategoryId ORDER BY p.StockQuantity DESC;`
48. `SELECT AVG(p.Price) FROM Products p INNER JOIN Orders o ON p.ProductId = o.ProductId INNER JOIN Users u ON o.UserID = u.UserID WHERE u.Age < 30;`
49. `SELECT u.*, COUNT(o.*) AS TotalOrders FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID GROUP BY u.UserID ORDER BY u.create_time ASC;`
50. `SELECT u.*, COUNT(o.*) AS TotalOrders FROM Users u LEFT JOIN Orders o ON u.UserID = o.UserID GROUP BY u.UserID HAVING SUM(o.TotalAmount) > 1000 ORDER BY u.Age ASC;`
-- SQLBook: Markup
## MongoDB

Bien sûr ! Voici la liste des 50 requêtes similaires pour MongoDB :

1. **Sélectionnez tous les utilisateurs dont le prénom est "John".**
```javascript
db.Users.find({ FirstName: "John" });
```

2. **Trouvez le nombre total d'utilisateurs dans la collection Users.**
```javascript
db.Users.count();
```

3. **Sélectionnez le prénom et le nom de tous les utilisateurs avec leur adresse e-mail.**
```javascript
db.Users.find({}, { FirstName: 1, LastName: 1, Email: 1 });
```

4. **Sélectionnez les utilisateurs âgés de moins de 30 ans.**
```javascript
db.Users.find({ Age: { $lt: 30 } });
```

5. **Supprimez tous les utilisateurs dont l'adresse e-mail se termine par "@example.com".**
```javascript
db.Users.deleteMany({ Email: /@example.com$/ });
```

6. **Sélectionnez les noms de catégories distinctes dans la collection Categories.**
```javascript
db.Categories.distinct("Name");
```

7. **Trouvez le nombre total de catégories dans la collection Categories.**
```javascript
db.Categories.count();
```

8. **Sélectionnez tous les produits dont le prix est supérieur à 100.**
```javascript
db.Products.find({ Price: { $gt: 100 } });
```

9. **Sélectionnez les produits dont le stock est épuisé (StockQuantity = 0).**
```javascript
db.Products.find({ StockQuantity: 0 });
```

10. **Mettez à jour le prix de tous les produits dans une catégorie spécifique.**
```javascript
db.Products.updateMany({ CategoryId: <category_id> }, { $mul: { Price: 1.1 } });
```

11. **Insérez une nouvelle catégorie dans la collection Categories.**
```javascript
db.Categories.insertOne({ Name: "New Category", create_time: new Date() });
```

12. **Supprimez une catégorie spécifique de la collection Categories.**
```javascript
db.Categories.deleteOne({ CategoryId: <category_id> });
```

13. **Sélectionnez le nom et le prix du produit le moins cher.**
```javascript
db.Products.findOne({}, { ProductName: 1, Price: 1 }).sort({ Price: 1 });
```

14. **Sélectionnez le nombre total de produits dans la collection Products.**
```javascript
db.Products.count();
```

15. **Trouvez le nombre total de produits dans chaque catégorie.**
```javascript
db.Products.aggregate([{ $group: { _id: "$CategoryId", TotalProducts: { $sum: 1 } } }]);
```

16. **Sélectionnez les produits avec leur nom de catégorie correspondant.**
```javascript
db.Products.aggregate([
    {
        $lookup: {
            from: "Categories",
            localField: "CategoryId",
            foreignField: "CategoryId",
            as: "CategoryInfo"
        }
    }
]);
```

17. **Trouvez le prix moyen de tous les produits.**
```javascript
db.Products.aggregate([{ $group: { _id: null, AvgPrice: { $avg: "$Price" } } }]);
```

18. **Sélectionnez les utilisateurs avec le nombre total de produits achetés.**
```javascript
db.Users.aggregate([
    {
        $lookup: {
            from: "Orders",
            localField: "UserID",
            foreignField: "UserID",
            as: "OrderInfo"
        }
    },
    {
        $project: {
            FirstName: 1,
            LastName: 1,
            TotalOrders: { $size: "$OrderInfo" }
        }
    }
]);
```

19. **Insérez un nouvel utilisateur en spécifiant son prénom, nom, adresse e-mail et âge.**
```javascript
db.Users.insertOne({ FirstName: "John", LastName: "Doe", Email: "john@example.com", Age: 30, create_time: new Date() });
```

20. **Mettez à jour l'adresse e-mail d'un utilisateur spécifique.**
```javascript
db.Users.updateOne({ UserID: <user_id> }, { $set: { Email: "new_email@example.com" } });
```

21. **Supprimez un utilisateur spécifique de la collection Users.**
```javascript
db.Users.deleteOne({ UserID: <user_id> });
```

22. **Sélectionnez les utilisateurs avec le nombre total de produits qu'ils ont achetés, classés par ordre décroissant.**
```javascript
db.Users.aggregate([
    {
        $lookup: {
            from: "Orders",
            localField: "UserID",
            foreignField: "UserID",
            as: "OrderInfo"
        }
    },
    {
        $project: {
            FirstName: 1,
            LastName: 1,
            TotalOrders: { $size: "$OrderInfo" }
        }
    },
    {
        $sort: { TotalOrders: -1 }
    }
]);
```

23. **Sélectionnez les produits avec leur nom de catégorie correspondant.**
```javascript
db.Products.aggregate([
    {
        $lookup: {
            from: "Categories",
            localField: "CategoryId",
            foreignField: "CategoryId",
            as: "CategoryInfo"
        }
    }
]);
```

24. **Trouvez le prix moyen des produits dans chaque catégorie.**
```javascript
db.Products.aggregate([
    {
        $group: {
            _id: "$CategoryId",
            AvgPrice: { $avg: "$Price" }
        }
    }
]);
```

25. **Sélectionnez les utilisateurs qui ont acheté au moins un produit dans chaque catégorie.**
```javascript
// Requête complexe nécessitant une approche personnalisée basée sur la logique métier.
```

26. **Sélectionnez le nom de catégorie avec le prix moyen le plus élevé de ses produits.**
```javascript
// Requête complexe nécessitant une approche personnalisée basée sur la logique métier.
```

27. **Insérez un nouveau produit en spécifiant son nom, son prix, sa quantité en stock et sa catégorie.**
```javascript
db.Products.insertOne({ ProductName: "New Product", Price: 99.99, StockQuantity: 100, CategoryId: <category_id>, create_time: new Date() });
```

28. **Mettez à jour le stock d'un produit spécifique.**
```javascript
db.Products.updateOne({ ProductId: <product_id> }, { $inc: { StockQuantity: 10 } });
```

29. **Supprimez un produit spécifique de la collection Products.**
```javascript
db.Products.deleteOne({ ProductId: <product_id> });
```

30. **Sélectionnez les utilisateurs avec la date de leur première inscription.**
```javascript
db.Users.find({}, { FirstName: 1, LastName: 1, create_time: 1 });
```
