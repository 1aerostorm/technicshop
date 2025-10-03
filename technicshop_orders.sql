USE ideadb;

INSERT INTO `Order` (`u_id`, `created`)
VALUES (3, NOW());

INSERT INTO `Order` (`u_id`, `created`)
VALUES (2, NOW());

INSERT INTO `Order` (`u_id`, `created`)
VALUES (2, NOW());

INSERT INTO `Order` (`u_id`, `created`)
VALUES (1, NOW());

INSERT INTO `Order` (`u_id`, `created`)
VALUES (1, NOW());

INSERT INTO `Order` (`u_id`, `created`)
VALUES (1, NOW());

# order 1, u_id = 3

INSERT INTO `OrderItem` (`ord_id`, `prod_id`, `count`)
VALUES (1, 3, 2);

# order 2, u_id = 2

INSERT INTO `OrderItem` (`ord_id`, `prod_id`, `count`)
VALUES (2, 3, 1);
INSERT INTO `OrderItem` (`ord_id`, `prod_id`, `count`)
VALUES (2, 4, 2);

# order 3, u_id = 2

INSERT INTO `OrderItem` (`ord_id`, `prod_id`, `count`)
VALUES (3, 2, 1);

# order 4, u_id = 1

INSERT INTO `OrderItem` (`ord_id`, `prod_id`, `count`)
VALUES (4, 2, 1);
INSERT INTO `OrderItem` (`ord_id`, `prod_id`, `count`)
VALUES (4, 1, 1);

# order 5, u_id = 1

INSERT INTO `OrderItem` (`ord_id`, `prod_id`, `count`)
VALUES (5, 1, 2);

# order 6, u_id = 1

INSERT INTO `OrderItem` (`ord_id`, `prod_id`, `count`)
VALUES (6, 4, 10);
