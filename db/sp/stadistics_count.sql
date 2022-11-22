CREATE PROCEDURE prueba_dos(a VARCHAR)
RETURN TABLE (
    module VARCHAR,
    date_count DATE,
)
AS $$
DECLARE
    result 
BEGIN
    SELECT * FROM stadistics ORDER BY date_count ASC;
END;
$$ LANGUAGE plpgsql;
