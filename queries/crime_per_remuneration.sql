-- Todas los ids_de comunas con remuneración < al promedio nacional, que tienen tasa de delicuencia >= a las que tienen remuneración>= promedio nacioal
-- Como sqlite no soporta ALL lo remplazamos por una sintaxis equivalente sacado de https://stackoverflow.com/questions/13168929/sqlite-syntax-for-all

SELECT lt.sector_id, cd.crimeRate AS rate
FROM lt_avg_sector AS lt, casen_data AS cd
WHERE lt.sector_id = cd.code AND rate < (SELECT MAX(bg.crime_rate) FROM bigger_crime_rate as bg);