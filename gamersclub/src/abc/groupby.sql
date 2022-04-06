SELECT 
    descCountry,
    SUM(flFacebook) as Facebook,
    SUM(flTwitter) as Twitter,
    SUM(flTwitch) as Twitch
FROM tb_players
GROUP BY descCountry;

SELECT 
    descCountry,
    COUNT(idPlayer) as qtPlayers,
    AVG(date('now') - date(dtBirth)) as age
FROM tb_players
GROUP BY descCountry;

SELECT 
    idPlayer, 
    AVG(flWinner) as winRate,
    COUNT(DISTINCT idLobbyGame) as qtLobby
FROM tb_lobby_stats_player
GROUP BY idPlayer
HAVING qtLobby >= 10
ORDER BY winRate DESC;
