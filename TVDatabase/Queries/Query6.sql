--Query6.sql
--A spin-off is a show that was created from another “parent" show. Identify the spinoffs that appeared on a different network than their parent show.
--Author: Daniel Gisolfi
--TV Database

SELECT SpinoffShow.show_name, SpinoffShow.network_id, ParentShow.show_name, ParentShow.network_id
FROM (
  SELECT *
  FROM zTVShow
  INNER JOIN zSpinoff ON zSpinoff.spinoff_num = zTVShow.show_num) SpinoffShow

INNER JOIN(
  SELECT *
  FROM zTVShow
  INNER JOIN zSpinoff ON zSpinoff.parent_num = zTVShow.show_num) ParentShow

ON SpinoffShow.show_num = ParentShow.spinoff_num
WHERE SpinoffShow.network_id <> ParentShow.network_id;