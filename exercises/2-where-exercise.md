# Exercise
1. Return from the `character` table, records with `speed` greater than 4.
2. Return from the `character` table, records with `speed` greater than 4 and `durability` less than or equal to 3
3. Return from the `character` table, records with `hair` equal to 'Brown' or `eyes` equal to 'Brown'
4. Return from the `character` table, records with `secret_identity` equal to false
5. Return from the `team` table, records with `headquarters` equal to 'New York'
6. Return from the `team` table, records with `founded_on` greater than July 4, 1984
7. Return from the `team` table, records with `founded_on` greater than July 4, 1984 and `headquarters` = 'New York'
8. Return from the `team` table, records with `headquarters` not equal to 'New York'
9. Return from the `team` table, records with `name` equal to 'Kree' or 'Skrulls'
10. Return from the `team` table, records with `headquarters` having a null value
11. Return from the `team` table, records with `headquarters` having a non-null value
12. Return from the `team` table, records with `name` less than or equal to 'Defenders'
---
13. What characters have a power_level above 9000? (power_level = all stats multiplied)
14. What characters with names starting with 'X', 'Y', or 'Z' have a secret identity? 
15. What teams were founded in the 80s and 90s?
16. What teams without a headquarters were founded either in the 70s or the 2010s?

---
### Answer Key
```
1. 94 rows
2. 15 rows
3. 158 rows
4. 339 rows
5. 7 rows
6. 10 rows
7. 2 rows
8. 14 rows
9. 2 rows
10. 7 rows
11. 21 rows
12. 7 rows

13. 69 rows
14. 3 rows (Xorn, Yellow Claw, Zodiak)
15. 5 rows (Midnight Sons, New Mutants, Thunderbolts, Hellions, Avengers West Coast)
16. 2 rows (A-Force, Eternals)
```

---
# REFERENCE

### Comparison Operators
| operator | description  |
|----------|--------------|
| < | less than |
| \> | greater than |
| = | equal to |
| <> or != | not equal to |
| <= | less than or equal to |
| \>= | greater than or equal to |

### Numeric Comparison
```sql
select *
from character
where durability >= 0
```

### String Comparison
```sql
select *
from character
where name = 'Baron Zemo'
```

### Boolean Comparison
```sql
select *
from character
where secret_identity = true
```
```sql
select *
from character
where secret_identity = false
```

### Date Comparison
```sql
select *
from team
where founded_on < '2000-01-31'
```

### Null Comparison
```sql
select *
from team
where headquarters IS NULL
```
```sql
select *
from team
where headquarters IS NOT NULL
```

### Logical Operators
#### AND
```sql
select *
from character
where durability > 5 AND intelligence <= 0
```

#### OR
```sql
select *
from character
where fighting <= 4 OR speed <= 4
```

#### NOT
```sql
select *
from character
where NOT fighting <= 4 AND NOT strength < 5
```

#### PRECEDENCE
```sql
select *
from character
where (fighting = 0 or durability = 0 or speed = 0) and (intelligence = 7 or energy = 7)
```

#### COMPUTATION
```sql
select *
from character
where (fighting + speed) < 10
```