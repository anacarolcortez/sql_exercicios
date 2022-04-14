SELECT 
    t1.idPlayer, t1.descCountry,
    t2.qt1Kill, t2.descMapName
FROM tb_players as t1
LEFT jOIN tb_lobby_stats_player as t2
ON t1.idPlayer = t2.idPlayer;

SELECT
    t1.idPlayer, t1.flWinner,
    t2.idMedal, t2.flActive,
    t3.descMedal
FROM tb_lobby_stats_player as t1

LEFT JOIN tb_players_medalha as t2
ON t1.idPlayer = t2.idPlayer
AND t2.flActive = 1

LEFT JOIN tb_medalha as t3
ON t2.idMedal = t3.idMedal
WHERE t3.descMedal in('Membro Plus', 'Membro Premium');

SELECT 
    t1.idPlayer,
    t2.descCountry,
    AVG(100.0 * t1.qtHs/t1.qtKill) as txAvgHs,
    COUNT(DISTINCT t1.idLobbyGame) as idLobbyGame,
    SUM(t1.qtKill) as qtKill
FROM tb_lobby_stats_player as t1

LEFT JOIN tb_players as t2
ON t1.idPlayer = t2.idPlayer

GROUP BY t1.idPlayer, t2.descCountry
ORDER BY txAvgHs DESC;