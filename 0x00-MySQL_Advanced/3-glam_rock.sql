-- Assuming the table name is 'metal_bands' and it's already imported into your database

SELECT
    band_name,
    IF(split IS NULL OR split = 0, 2022 - formed, split - formed) AS lifespan
FROM
    metal_bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;
