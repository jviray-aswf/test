# Exercise
1. How many teams operate out of each of the `headquarters`?
2. How many teams operate out of each of the `headquarters`, ignoring records that do not have a headquarters specified?
3. How many teams operate out of each of the `headquarters`, ignoring records that do not have a headquarters specified, and only headquarters with more than 1 team operating?
4. How many teams operate out of each of the `headquarters`, ignoring records that do not have a headquarters specified, and only headquarters with more than 1 team operating, sorted by headquarters with the most teams at the top?

---
### Answer Key
```
1. 11 rows
2. 10 rows
3. 3 rows
4. New York - 7
```

---
# REFERENCE

### Aggregate Functions
| function | description  |
|----------|--------------|
| count | # of records |
| sum | sum of records |
| min | minimum value of records |
| max | maximum value of records |
| avg | average value of records |

### ORDER BY
```sql
select *
from character
order by name asc
```
```sql
select *
from character
order by name desc
```
### GROUP BY
```sql
select hair
from character
group by hair
```
### GROUP BY - Aggregate function
```sql
select hair, count(id)
from character
group by hair
```
### GROUP BY - Multiple columns
```sql
select hair, eyes, count(id)
from character
group by hair, eyes
```
### GROUP BY - Where
```sql
select hair, count(id)
from character
where secret_identity = true
group by hair
```
### GROUP BY - Where - Having
```sql
select hair, count(id)
from character
where secret_identity = true
group by hair
having count(id) > 1
```
### GROUP BY - Where - Having - Sort
```sql
select hair, count(id)
from character
where secret_identity = true
group by hair
having count(id) > 1
order by count(id) desc
```

### Which character with a secret identity and multiple aliases has the highest combined strength?
```sql
select c.name, count(a.id), sum(c.strength)
from character c
join alias a on c.id = a.character_id
where c.secret_identity = true and c.strength is not null
group by c.name
having count(a.id) > 1
order by sum(c.strength) desc
```