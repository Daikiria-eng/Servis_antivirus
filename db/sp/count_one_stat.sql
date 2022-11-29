CREATE OR REPLACE FUNCTION count_one_stat(stat_module VARCHAR,from_month INT)
RETURNS INT AS $counted$
DECLARE
    date_reference DATE;
    counted INT;
BEGIN
    date_reference=TO_DATE(CONCAT(DATE_PART('YEAR',CURRENT_DATE),'-',from_month),'YYYY-MM');
    SELECT COUNT(module) INTO counted FROM stadistics
    WHERE LOWER(module)=LOWER(stat_module)
    AND date_count >= date_reference
    AND date_count < (date_reference + INTERVAL '1 month')::DATE;

    RETURN counted;
END;
$counted$ LANGUAGE 'plpgsql';
