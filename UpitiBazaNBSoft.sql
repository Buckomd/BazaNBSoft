 SELECT * FROM mydb.user where dateCreate BETWEEN (NOW() - INTERVAL 2 DAY) AND NOW();

 SELECT u.firstname, u.lastname, o.id, o.value FROM user u inner join mydb.order o on u.id = o.userId;

 SELECT u.firstname, u.lastname FROM mydb.user u inner join mydb.order o on u.id = o.userId group by o.userId having count(o.userId) >= 2;

 SELECT u.firstname, u.lastname, o.id, count(oi.id) numOfOrderItem  FROM mydb.user u inner join mydb.order o on u.id = o.userId inner join orderitem oi on o.id = oi.orderId group by oi.orderId;

 SELECT u.firstname, u.lastname, o.id FROM mydb.user u inner join mydb.order o on u.id = o.userId inner join orderitem oi on o.id = oi.orderId group by oi.orderId having count(oi.id) >= 2;

 SELECT u.firstname, u.lastname FROM mydb.user u inner join mydb.order o on u.id = o.userId inner join orderitem oi on o.id = oi.orderId group by oi.orderId having count(distinct oi.productId) > 2;
