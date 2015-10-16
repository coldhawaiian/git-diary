Transact SQL
===========

```sql
SELECT Id, Tags
FROM Posts
ORDER BY Id
OFFSET 0 ROWS FETCH NEXT 500 ROWS ONLY 
```
