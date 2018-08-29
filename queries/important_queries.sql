
.open casen.db

CREATE TABLE 
casen_data(
  code int PRIMARY KEY,
  populationProjection int, 
  remunerationAvg float, 
  readingSimceAvg int, 
  mathSimceAvg int, 
  historySimceAvg int, 
  psuAvg float, 
  readingPsuAvg float, 
  mathPsuAvg float, 
  crimeRate float);


-- Comunas con promedio < promedio nacional

CREATE VIEW lt_avg_sector(sector_id) AS
SELECT cd.remunerationAvg AS average
FROM casen_data AS cd
WHERE average < ( 
  SELECT AVG(remunerationAvg) -- Promedio nacional
  FROM casen_data
  );

-- Comunas con promedio > promedio nacional

CREATE VIEW ge_avg_sector(sector_id) AS
SELECT cd.remunerationAvg AS average
FROM casen_data AS cd
WHERE average >= ( 
  SELECT AVG(remunerationAvg) -- Promedio nacional
  FROM casen_data
  );

-- Tasa de delicuencia con id comuna de las comunas con remuneracion < Promedio nacional

-- Tasa de delicuencia comuna de las comunas con reumnearacion > Promedio nacional


-- Todas los ids_de comunas con < promedional que tiene tasa de delicuencia >= a las del promedio nacioal

SELECT sector_id, casen_data.crimeRate as rate
WHERE sector_id = code AND rate < ANY(
  SELECT casen_data.crimeRate as rate_big
  WHERE sector_id == 
)