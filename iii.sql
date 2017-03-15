INSERT INTO customers_objr
(SELECT  cu.customerid,cu.firstname,cu.lastname,(cu.address1,cu.address2)::address,
	(cu.city,cu.state,cu.zip,cu.country,cu.region)::location,cu.email,cu.phone,
	(cu.creditcardtype,cu.creditcard,cu.creditcardexpiration)::credit_info,cu.username,
	cu.password,cu.age,cu.income,cu.gender FROM customers cu);

INSERT INTO products_objr
SELECT  pr.prod_id, (c.category,c.categoryname)::category, pr.title, pr.actor, pr.price
FROM products pr, categories c
WHERE pr.category = c.category;
