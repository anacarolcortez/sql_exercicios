SELECT DISTINCT descCountry from tb_players;

SELECT
    DATE(dtCreatedAt) AS dtDAP,
    count(DISTINCT idPlayer) as DAP
FROM tb_lobby_stats_player
GROUP BY dtDAP
ORDER BY DAP;
