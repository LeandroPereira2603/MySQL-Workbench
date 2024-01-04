```sql 

-- Maior > -- 

SELECT * FROM pessoas
WHERE ano > 2000
ORDER BY ano ;

-- Maior e igual >= -- 

SELECT * FROM pessoas
WHERE ano >= 2000
ORDER BY ano ;

-- Menor < -- 

SELECT * FROM pessoas
WHERE ano < 2000
ORDER BY ano ;


-- Menor e igual <= -- 

SELECT * FROM pessoas
WHERE ano <= 2000
ORDER BY ano ;

-- Negação != -- 

SELECT * FROM pessoas
WHERE ano != 2000
ORDER BY ano ;


-- diferente <> -- 

SELECT * FROM pessoas
WHERE ano <> 2000
ORDER BY ano ;
