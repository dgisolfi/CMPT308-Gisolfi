--Query1.sql
--List the characters on shows sponsored by Levi's
--Author: Daniel Gisolfi
--TV Database

SELECT C.char_name, T.show_name
FROM zCharacter AS C, zTVShow AS T, zSponsorBy AS SponB, zSponsor AS S, zPlay AS P
WHERE S.sponsor_name = "Levis"
AND S.sponsor_num = SponB.sponsor_num
AND SponB.show_num = T.show_num
AND C.char_num = P.char_num
AND P.show_num = T.show_num;