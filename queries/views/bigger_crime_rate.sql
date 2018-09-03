CREATE VIEW bigger_crime_rate(crime_rate) AS
SELECT cd2.crimeRate
FROM casen_data as cd2, ge_avg_sector as ge
WHERE cd2.code = ge.sector_id;