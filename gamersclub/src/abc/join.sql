SELECT 
    t1.idPlayer, t1.descCountry,
    t2.qt1Kill, t2.descMapName
FROM tb_players as t1
LEFT jOIN tb_lobby_stats_player as t2
ON t1.idPlayer = t2.idPlayer
