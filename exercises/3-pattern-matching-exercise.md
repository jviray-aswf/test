# Exercise
1. Which characters have names that start with 'Captain'
2. Which characters have names that end with 'Man'
3. Which characters have hair and eyes that starts with 'Bl'
4. What powers contain the word 'ion'
5. What powers start with a 5-letter word
6. What powers end with a 5-letter word
7. What powers contain both an opening and closing parenthesis?
8. What characters start with a 3-letter word or end with a 3-letter word?
9. What characters start with a 3-letter word or end with a 3-letter word, and also has `Black` hair?
10. What characters start with a 3-letter word or end with a 3-letter word, and either has `Black` hair or `Black` eyes?
11. What characters start with a 3-letter word or end with a 3-letter word, and either has `Black` hair or `Black` eyes, or has a both `Blond` hair and `Blue` eyes.

---
### Answer Key
```
1. 5 rows
2. 15 rows
3. 70 rows
4. 20 rows
5. 9 rows
6. 9 rows
7. 4 rows
8. 49 rows
9. 7 rows
10. 9 rows
11. 11 rows
```

---
# REFERENCE

### Pattern Matching Operators
| operator | description  |
|----------|--------------|
| % | Any zero or more characters |
| _ | Any one character |

### Pattern Matching
#### Starts with
```sql
select *
from character
where name LIKE 'Black%'
```

#### Ends with
```sql
select *
from character
where name LIKE '%Man'
```

#### Contains
```sql
select *
from character
where name LIKE '%car%'
```

#### exactly 5 letters
```sql
select *
from character
where name LIKE '_____'
```

#### Starts with 3-letter word and ends with 4 letter word
```sql
select *
from character
where name LIKE '___ ____'
```

#### Starts with 3-letter word
```sql
select *
from character
where name LIKE '___ %'
```