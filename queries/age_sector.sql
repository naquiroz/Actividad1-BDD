CREATE VIEW age_sector_relation(sector_id, age, remunerationAvg) AS
SELECT cd.code,(2 * dm.e0a4
+ 7  * dm.e5a9
+ 12 * dm.e10a14
+ 17 * dm.e15a19
+ 22 * dm.e20a24
+ 27 * dm.e25a29
+ 32 * dm.e30a34
+ 37 * dm.e35a39
+ 42 * dm.e40a44
+ 47 * dm.e45a49
+ 52 * dm.e50a54
+ 57 * dm.e55a59
+ 62 * dm.e60a64
+ 67 * dm.e65a69
+ 72 * dm.e70a74 
+ 77 * dm.e75a79 
+ 85 * dm.e80omas)/(dm.e0a4
+ dm.e5a9
+ dm.e10a14
+ dm.e15a19
+ dm.e20a24
+ dm.e25a29
+ dm.e30a34
+ dm.e35a39
+ dm.e40a44
+ dm.e45a49
+ dm.e50a54
+ dm.e55a59
+ dm.e60a64
+ dm.e65a69
+ dm.e70a74
+ dm.e75a79
+ dm.e80omas
),cd.remunerationAvg
FROM casen_data AS cd, demografia AS dm
WHERE cd.code = dm.codigocomuna
ORDER BY cd.code
;








