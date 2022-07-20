SELECT
univiersities AS university,
carrera AS career,
inscription_dates AS inscription_date,
Split_part(names,'-', 1) AS first_name,
Split_part(names,'-', 2) AS last_name,
sexo AS gender,
(current_date - to_date(fechas_nacimiento,'YYYY/mon/DD'))/365 -1 AS edad,
localidad,
email
FROM rio_cuarto_interamericana
WHERE 
univiersities LIKE 'Universidad-nacional-de-río-cuarto'
AND 
(TO_DATE(inscription_dates,'DD-mon-YY') >= '2020-09-01') 
AND 
(TO_DATE(inscription_dates,'DD-mon-YY') <= '2021-02-01');