-- Comunas con promedio < promedio nacional
CREATE VIEW lt_avg_sector(sector_id) AS
SELECT cd.code
FROM casen_data AS cd
WHERE cd.remunerationAvg < ( 
  SELECT AVG(cd2.remunerationAvg) -- Promedio nacional
  FROM casen_data AS cd2
  );