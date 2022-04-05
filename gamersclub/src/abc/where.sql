SELECT * FROM tb_players where descCountry = 'ar';

SELECT idPlayer, dtBirth FROM tb_players where descCountry = 'ar' AND dtBirth IS NOT NULL;