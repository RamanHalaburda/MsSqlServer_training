use computer;

/*insert into Laptop values('7','1750','400','32','6','800','10');
select * from Laptop;*/

/*insert into PC values('13','1260','500','64','40','40x','850');
select * from PC;*/

/*insert into Printer values('7','1401','y','Jet','300');
select * from Printer;*/

/*insert into Product values('E','2114','PC');
select * from Product;*/

/*insert into PC values('14','2114','600','128','60','52x','950');
select * from PC;*/

/*
select * from PC where price between 600 and 950;*/

/*
select * from PC where price in (600,950);*/

/*
select * from PC where price between 600 and 950;*/

/*
select distinct model from PC;*/

/*
select count(model) from PC;
select count(distinct model) from PC;*/

/*
select * from Printer where type = 'Jet' and price < 300;*/
/*
select * from Product order by model ASC;
select * from Product order by model DESC;*/

/*
select * from Printer;
update Printer set Printer.price = Printer.price + 10 where Printer.model between 1300 and 1405;
select * from Printer;*/

/*
select top 3 * from Laptop order by price asc;*/

/*
select min(price) as min_price from PC;
select max(screen) as max_screen from Laptop;*/

/*select * from Laptop;*/
/*select COUNT(*) from Laptop group by model;*/
/*select AVG(price) as avg_price from Printer;*/
/*select AVG(screen) as avg_screen from Laptop;*/
/*select screen, count(screen) from Laptop group by screen;*/

/*select * from Product;*/
/*select * from Product WHERE type LIKE 'P%';*/
/*select * from Product WHERE type LIKE '%r';*/
/*select * from Product WHERE type LIKE '%in%';*/
/*select * from Product WHERE type LIKE '_C%';*/
/*select * from Product WHERE type LIKE 'P%r';*/

/*
select top 2 * from Product where type in('PC');
select top 2 type, COUNT(model) as Qty_model from Product where type not in('PC') group by type;*/

/*
select maker + ', ' + model + ', ' + Product.type as full_name from Product;*/

/*
select Printer.code as printer_id, Product.type as product_type, Printer.price as printer_price
	from Printer
	inner join Product ON Printer.model = Product.model; */
	
/*right join*/

/*left join*/

/*full join*/

/* tables must be similar */ /*
select * from Laptop
union all
select * from PC;*/

/*
select count(model) as Qty_model from Laptop
	group by model having model > 1390;*/

/*
select * from PC
	where model between 1200 and 1900 
		and exists (select * from Product where model between 1200 and 1900);*/

/* any, all */ /*
select * from PC;
select PC.code, PC.model from PC
	where PC.code = ANY (select PC.code from PC where PC.price > 900);*/

/* select into (new table must be exist) */ /*
select top 3 * into TopThreePricePC from PC; */

/*
select count(*),
	case
		when price < 700 then 'cheap'
		when price >=700 then 'expensive'
		else 'null'
	end as cost
	from PC
	group by price;*/

/* insert into select */