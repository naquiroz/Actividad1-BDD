CREATE TABLE
sector(
  code int PRIMARY KEY,
  sector_name varchar(30)
);

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

.separator |
.import comunas.csv