SELECT

    idPlayer,
    descCountry,
    CASE 
        WHEN descCountry = 'br' THEN 'brasileira'
        WHEN descCountry = 'ar' THEN 'argentina'
        WHEN descCountry = 'cl' THEN 'chilena'
        WHEN descCountry = 'pe' THEN 'peruana'
        WHEN descCountry = 'uy' THEN 'uruguaia'
        WHEN descCountry = 'py' THEN 'paraguaia'
        WHEN descCountry = 'ca' THEN 'canadense'
        WHEN descCountry = 'us' THEN 'americana'
        WHEN descCountry = 'bo' THEN 'boliviana'
        WHEN descCountry = 'pt' THEN 'portuguesa'
        WHEN descCountry = 'sv' THEN 'salvadorenha'
        WHEN descCountry = 'cr' THEN 'costarriquenha'
        WHEN descCountry = 'ec' THEN 'equatoriana'
        ELSE 'NA'
    END AS nacionalidade

FROM tb_players;

SELECT

    idPlayer,
    descCountry,
    CASE 
        WHEN descCountry = 'br' THEN 'sim'
        WHEN descCountry IN ('ar', 'cl', 'uy') THEN 'talvez'
        ELSE 'não'
    END AS promocao

FROM tb_players;