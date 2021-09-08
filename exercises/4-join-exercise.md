# Exercise
### INNER JOIN
1. Return the character`name` and alias `name` of all characters with aliases
2. Return the character `name` and alias `name` of all characters with aliases, whose character name has at least 8 letters, but alias name has exactly 4 
3. Return the character `name` and power `power_id` of all characters with powers
4. Return the character `name` and power `name` of all characters with powers
5. Return the character `name` and power `name` of all characters with powers, but only powers that do not contain the word 'Super'
6. Return the character `name` and power `name` of all characters with powers, but only powers that do not contain the word 'Super', and characters with a `strength` greater than 5 

### LEFT JOIN
7. Return all character `name` and any alias `name` (if any)
8. Return the character `name` of all characters without aliases
9. Return the character `name` of all characters without aliases, who also have a `secret_identity`
10. Return the character `name` of all characters who are not on a team
___
11. What teams headquartered in 'New York' have members with the power of `Flight`
12. Who are all the active members of the 'X-Men' with a secret identity, but no aliases?

---
### Answer Key
```
1. 1256 rows
2. 21 rows
3. 363 rows
4. 363 rows
5. 256 rows
6. 54 rows

7. 1446 rows
8. 190 rows
9. 78 rows
10. 405 rows

11. 4 Rows (X-Men x2, Avengers, Secret Avengers)
12. 1 Row (Cecilia Reyes)
```

---
# REFERENCE

### INNER JOIN
```sql
select *
from character c
join alias a on c.id = a.character_id
```

### Multi-Table INNER JOIN
```sql
select *
from team t
join team_character tc on t.id = tc.team_id
join character c on tc.character_id = c.id
```

### LEFT JOIN
```sql
select *
from character c
left join alias a on c.id = a.character_id
```