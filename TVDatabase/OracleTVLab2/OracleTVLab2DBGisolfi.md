

# Oracle TV Lab 2

##Daniel Gisolfi

### Query 1

get all the unique columns from zSponsorBy and zSponsor.

```sql
SELECT *
FROM zSponsorBy NATURAL JOIN zSponsor
ORDER BY zSponsor.sponsor_name;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/TVDatabase/Oracle%20TV%20Lab%202/images/1.png" width="500px">

### Query 2

Get all show numbers and the producers that produce them

```sql
SELECT zProdBy.show_num AS ShowNumber, zProducer.prod_name AS ProducerName
FROM zProducer join zProdBy using (prod_num);
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/TVDatabase/Oracle%20TV%20Lab%202/images/2.png" width="500px">

### Query 3

Give all the  Distributor names and Parent names

```sql
SELECT D.Distr_Name, P.ParenT_Name
FROM zDistributor D JOIN zParentComp P
ON D.parent_num = P.parent_num;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/TVDatabase/Oracle%20TV%20Lab%202/images/3.png" width="500px">

### Query 4

Get all Actors that recived an award and what award they recived

```sql
SELECT DISTINCT A.Actor_Name, AA.Award_name
FROM zActor_Award AA LEFT JOIN zActor A
ON AA.actor_num = A.actor_num
ORDER BY A.actor_name;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/TVDatabase/Oracle%20TV%20Lab%202/images/4.png" width="500px">

### Query 5

Give all Producers names and the names of there age

```sql
SELECT zProducer.prod_Name, zAgent.Agent_Name
FROM zProducer RIGHT JOIN zAgent
ON zProducer.agent_num = zAgent.agent_num
ORDER BY zProducer.prod_name;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/TVDatabase/Oracle%20TV%20Lab%202/images/5.png" width="500px">

### Query 6

Get the Show name and Award name ordered by show name.

```sql
SELECT DISTINCT T.Show_Name, S.Award_Name
FROM zShowAward S FULL OUTER JOIN zTVShow T 
ON S.show_num = T.show_num
Order BY T.show_name;
```

<img src="file:///Users/daniel/code-repos/CMPT308-Gisolfi/TVDatabase/Oracle%20TV%20Lab%202/images/6.png" width="500px">