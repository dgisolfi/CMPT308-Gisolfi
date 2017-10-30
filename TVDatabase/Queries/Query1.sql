--Query1.sql
--List the characters on shows sponsored by Levi's
--Author: Daniel Gisolfi
--TV Database

SELECT DISTINCT C.char_name, T.show_name
FROM zCharacter C, zTVShow T, zSponsorBy SponB, zSponsor S, zPlay P
WHERE S.sponsor_name = '&PleaseEnterSponsorName'
AND S.sponsor_num = SponB.sponsor_num
AND SponB.show_num = T.show_num
AND C.char_num = P.char_num
AND P.show_num = T.show_num;