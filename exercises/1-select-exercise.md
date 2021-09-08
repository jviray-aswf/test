# Exercise
1. Return all records and all columns from the `character` table
2. Return all records and all columns from the `power` table
3. Return only the `name` column from the `power` table
4. Return only the `name` column from the `power` table, but change the column name to 'superpower'
5. Return `name` and `headquarters` from the `team` table
6. Return `name` and `headquarters` from the `team` table, but change the column names to 'super_friends' and 'super_location' respectively
7. Return `name`, `energy`, and `intelligence` from the `character` table using a table alias called 'superhero'
8. Return `name` from the `character` table and the product of (durability, energy, fighting, intelligence, speed, strength) as the 'power_level' column

---
# REFERENCE

### All columns
```SQL
SELECT *
FROM character;
```

### Explicit Columns
```SQL
SELECT name, details
FROM character;
```

### Column Alias
```SQL
SELECT name as full_name, details as website
FROM character;
```

### Table Alias
```SQL
SELECT *
FROM character as c;
```

### Explicit Columns using Table Alias
```SQL
SELECT c.name, c.details
FROM character as c;
```

### Mathematical Operators
| operator | description  |
|----------|--------------|
| + | addition |
| - | subtraction |
| * | multiplication |
| / | division |
| % | modulo |
| ^ | exponentiation |