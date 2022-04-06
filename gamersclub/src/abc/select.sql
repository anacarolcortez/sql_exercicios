SELECT * FROM tb_lobby_stats_player LIMIT 10;

SELECT * FROM tb_players WHERE descCountry = 'br' AND strftime('%Y', dtBirth) = '1992';

SELECT * FROM tb_players_medalha WHERE flActive = 1;

SELECT idLobbyGame, idPlayer, qtKill, qtHs, qtShots, vlDamage, round(100.0 * qtHs/qtKill, 2) as txHs FROM tb_lobby_stats_player WHERE txHs > 50.0;

SELECT 
    COUNT(*) as qtPlayers,
    COUNT(DISTINCT idRoom) as qtRooms
FROM tb_lobby_stats_player;

SELECT
    AVG(date('now') - date(dtBirth)) as age
FROM tb_players;

SELECT 
    SUM(flFacebook) as Facebook,
    SUM(flTwitter) as Twitter,
    SUM(flTwitch) as Twitch
FROM tb_players;