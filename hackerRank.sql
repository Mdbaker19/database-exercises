# CITY NAME START AND END WITH VOWEL
SELECT DISTINCT city FROM station
WHERE LEFT(city,1) IN ('a', 'e', 'i', 'o', 'u')
AND RIGHT(city, 1) IN ('a', 'e', 'i', 'o', 'u');

# ENDS WITH VOWEL
SELECT DISTINCT city
FROM station
WHERE city LIKE
      '%a' OR city LIKE
              '%e' OR city LIKE
                      '%i' OR city LIKE
                              '%o' OR city LIKE
                                      '%u';

# TWO SEPARATE QUERY WITH SHORTEST ALPHABETICAL CITY NAME
# WITH LONGEST ALPHABETICAL CITY NAME

(SELECT city, LENGTH(city)
 FROM station
 ORDER BY LENGTH(city), city
 LIMIT 1)
UNION
(SELECT city, LENGTH(city)
 FROM station
 ORDER BY LENGTH(city) DESC, city
 LIMIT 1);

SELECT DISTINCT city FROM station
WHERE LEFT(city,1) NOT IN ('A', 'E', 'I', 'O', 'U');

SELECT name FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3), id;

SELECT name FROM employee
WHERE salary > 2000 AND
        months < 10
ORDER BY employee_id;