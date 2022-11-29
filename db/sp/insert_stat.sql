CREATE OR REPLACE FUNCTION insert_stat(idUser INT, moduleName VARCHAR, dateCount VARCHAR)
RETURNS BOOLEAN AS $status$
DECLARE
    total BOOLEAN;
BEGIN
    total=false;
    INSERT INTO stadistics (id_user,module,date_count) VALUES (idUser,moduleName,TO_DATE(dateCount,'YYYY-MM-DD'));
    total=true;

    RETURN total;
END;
$status$ LANGUAGE plpgsql;
