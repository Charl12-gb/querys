## Tables

### User (name, age)
### Colors (user.name, color(nullable)

# QUerys

1. **Sélectionner tous les utilisateurs et leurs âges** :
   ```sql
   SELECT name, age FROM User;
   ```

2. **Sélectionner tous les utilisateurs qui ont un âge supérieur à 30 ans** :
   ```sql
   SELECT name, age FROM User WHERE age > 30;
   ```

3. **Sélectionner tous les utilisateurs et leurs couleurs associées, même si elles sont nulles** :
   ```sql
   SELECT User.name, Colors.color FROM User LEFT JOIN Colors ON User.name = Colors.name;
   ```

4. **Sélectionner tous les utilisateurs ayant une couleur non nulle** :
   ```sql
   SELECT User.name FROM User INNER JOIN Colors ON User.name = Colors.name WHERE Colors.color IS NOT NULL;
   ```

5. **Insérer un nouvel utilisateur avec son âge** :
   ```sql
   INSERT INTO User (name, age) VALUES ('John', 25);
   ```

6. **Insérer une nouvelle couleur pour un utilisateur existant** :
   ```sql
   INSERT INTO Colors (name, color) VALUES ('John', 'Blue');
   ```

7. **Mettre à jour l'âge d'un utilisateur** :
   ```sql
   UPDATE User SET age = 26 WHERE name = 'John';
   ```

8. **Mettre à jour la couleur d'un utilisateur existant** :
   ```sql
   UPDATE Colors SET color = 'Red' WHERE name = 'John';
   ```

9. **Supprimer un utilisateur et ses couleurs associées** :
   ```sql
   DELETE FROM User WHERE name = 'John';
   ```

10. **Supprimer toutes les couleurs pour un utilisateur spécifique** :
    ```sql
    DELETE FROM Colors WHERE name = 'John';
    ```

11. **Sélectionner tous les utilisateurs ayant des couleurs, triés par âge croissant** :
    ```sql
    SELECT User.name, User.age FROM User INNER JOIN Colors ON User.name = Colors.name ORDER BY User.age ASC;
    ```

12. **Sélectionner tous les utilisateurs n'ayant pas de couleurs associées** :
    ```sql
    SELECT User.name FROM User LEFT JOIN Colors ON User.name = Colors.name WHERE Colors.color IS NULL;
    ```

13. **Sélectionner l'âge moyen de tous les utilisateurs** :
    ```sql
    SELECT AVG(age) AS avg_age FROM User;
    ```

14. **Sélectionner le nombre total d'utilisateurs** :
    ```sql
    SELECT COUNT(*) AS total_users FROM User;
    ```

15. **Sélectionner la couleur la plus populaire parmi les utilisateurs ayant des couleurs associées** :
    ```sql
    SELECT color, COUNT(*) AS count FROM Colors GROUP BY color ORDER BY count DESC LIMIT 1;
    ```

16. **Sélectionner tous les utilisateurs dont le nom commence par 'A'** :
    ```sql
    SELECT * FROM User WHERE name LIKE 'A%';
    ```

17. **Sélectionner les utilisateurs ayant plus de 25 ans et dont le nom commence par 'J'** :
    ```sql
    SELECT * FROM User WHERE age > 25 AND name LIKE 'J%';
    ```

18. **Supprimer tous les utilisateurs ayant plus de 40 ans** :
    ```sql
    DELETE FROM User WHERE age > 40;
    ```

19. **Supprimer toutes les couleurs 'Blue' pour tous les utilisateurs** :
    ```sql
    DELETE FROM Colors WHERE color = 'Blue';
    ```

20. **Sélectionner tous les utilisateurs et leurs couleurs associées triés par nom d'utilisateur et âge** :
    ```sql
    SELECT User.name, User.age, Colors.color FROM User LEFT JOIN Colors ON User.name = Colors.name ORDER BY User.name ASC, User.age ASC;
    ```

21. **Sélectionner tous les utilisateurs dont l'âge est supérieur à la moyenne des âges dans la table** :
   ```sql
   SELECT name, age FROM User WHERE age > (SELECT AVG(age) FROM User);
   ```

22. **Sélectionner tous les utilisateurs et leurs couleurs associées (si elles existent)** :
   ```sql
   SELECT U.name, U.age, C.color
   FROM User U
   LEFT JOIN Colors C ON U.name = C.name;
   ```

23. **Sélectionner tous les utilisateurs dont l'âge est supérieur à la moyenne des âges de ceux ayant une couleur associée** :
   ```sql
   SELECT U.name, U.age
   FROM User U
   JOIN (SELECT name FROM Colors) C ON U.name = C.name
   WHERE U.age > (SELECT AVG(age) FROM User U2 WHERE U2.name = C.name);
   ```

24. **Sélectionner tous les utilisateurs dont l'âge est supérieur à celui du plus jeune utilisateur ayant une couleur associée** :
   ```sql
   SELECT U.name, U.age
   FROM User U
   JOIN (SELECT name, MIN(age) AS min_age FROM User GROUP BY name) MinAges ON U.name = MinAges.name
   WHERE U.age > MinAges.min_age;
   ```

25. **Sélectionner tous les utilisateurs dont l'âge est égal à l'âge du plus vieux utilisateur ayant une couleur associée** :
   ```sql
   SELECT U.name, U.age
   FROM User U
   JOIN (SELECT name, MAX(age) AS max_age FROM User GROUP BY name) MaxAges ON U.name = MaxAges.name
   WHERE U.age = MaxAges.max_age;
   ```

26. **Sélectionner tous les utilisateurs dont l'âge est supérieur à l'âge moyen des utilisateurs ayant une couleur associée** :
   ```sql
   SELECT U.name, U.age
   FROM User U
   JOIN (SELECT name, AVG(age) AS avg_age FROM User GROUP BY name) AvgAges ON U.name = AvgAges.name
   WHERE U.age > AvgAges.avg_age;
   ```

27. **Sélectionner tous les utilisateurs ayant une couleur associée mais dont l'âge est inférieur à celui de l'utilisateur le plus jeune** :
   ```sql
   SELECT U.name, U.age
   FROM User U
   JOIN Colors C ON U.name = C.name
   WHERE U.age < (SELECT MIN(age) FROM User);
   ```

28. **Sélectionner tous les utilisateurs n'ayant pas de couleur associée et dont l'âge est supérieur à 30 ans** :
   ```sql
   SELECT U.name, U.age
   FROM User U
   LEFT JOIN Colors C ON U.name = C.name
   WHERE C.name IS NULL AND U.age > 30;
   ```

29. **Sélectionner tous les utilisateurs dont l'âge est supérieur à la moyenne des âges des utilisateurs n'ayant pas de couleur associée** :
   ```sql
   SELECT U.name, U.age
   FROM User U
   JOIN (SELECT AVG(age) AS avg_age FROM User WHERE name NOT IN (SELECT name FROM Colors)) NoColorAges ON U.age > NoColorAges.avg_age;
   ```

30. **Sélectionner tous les utilisateurs ayant une couleur associée et dont l'âge est inférieur à la moyenne des âges des utilisateurs ayant une couleur associée** :
    ```sql
    SELECT U.name, U.age
    FROM User U
    JOIN (SELECT AVG(U2.age) AS avg_age FROM User U2 JOIN Colors C ON U2.name = C.name) ColorAges ON U.age < ColorAges.avg_age;
    ```
