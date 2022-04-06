SELECT COUNT(*) FROM tb_lobby_stats_player;

SELECT * FROM tb_lobby_stats_player LIMIT 10;

SELECT * FROM tb_players WHERE descCountry = 'br' AND strftime('%Y', dtBirth) = '1992';

SELECT * FROM tb_players_medalha WHERE flActive = 1;

SELECT idLobbyGame, idPlayer, qtKill, qtHs, qtShots, vlDamage, round(100.0 * qtHs/qtKill, 2) as txHs FROM tb_lobby_stats_player WHERE txHs > 50.0;