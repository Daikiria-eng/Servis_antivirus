CREATE OR REPLACE FUNCTION get_stats_by_module(from_month INT)
RETURNS TABLE(
    module_name VARCHAR,
    module_count INT
) AS $$
DECLARE
    itr VARCHAR;
BEGIN
    FOR itr IN SELECT DISTINCT(LOWER(module)) FROM STADISTICS LOOP
        module_name := itr;
        SELECT count_one_stat(itr,from_month) INTO module_count;
        RETURN NEXT;
    END LOOP;
END;
$$ LANGUAGE 'plpgsql';
