create table clients
(
    clientID serial,
    clientName varchar(255) not null,
    clientEmail varchar(255) not null,
    primary key (clientID)
);

-- drop table clients cascade;

-- insert into clients (clientName, clientEmail) values
-- ('James Embrey', 'james.embrey@revature.net'), ('Semaj Yember', 'semaj.yember@revature.net');

select * from clients;

-- delete from clients;


-- CHECK AGAIN v
create table shoppinglist
(
    itemID serial,
    clientID bigserial,
    productName varchar(255) not null,
    primary key(itemID),
    foreign key(clientID) references clients(clientID)
);

-- drop table shoppinglist cascade;

-- insert into shoppinglist (productName) VALUES
-- ("Eggs"), ("Samsung S9000"); 

select * from shoppinglist;


create table expenses
(
    lineitemID serial,
    -- orderID int not null,
    -- itemID int not null,
    subtotal decimal(10, 2) not null,
    price decimal(10, 2) not null,
    primary key(lineitemID)
    -- foreign key(itemID) references shoppinglist(itemID)
    -- foreign key(orderID) references orders(orderID)
);

-- drop table expenses cascade;


create table orders
(
    orderID serial,
    total decimal(13, 2) not null,
    primary key (orderID),
    foreign key (clientID) references clients(clientID)
);

-- drop table orders cascade;

-- insert into orders (total) VALUES
-- (12.07);


create table vendors
(
    vendorID serial primary key,
    vendorName varchar(255),
    vendorProduct varchar(255),
    vendorCost decimal(10, 2),
    vendorQuantity numeric(100)
);

insert into vendors(vendorName, vendorProduct, vendorCost, vendorQuantity) VALUES
('EEFoods', 'Bacon', 5.50, 100), ('EEFoods', 'Cinnamon Toast Crunch', 2.50, 100), ('EEFoods', 'Eggs', 1.60, 100), ('EEEntertainment', 'Dark Side of the Moon Vinyl', 24.99, 100), ('EEEntertainment', 'Fight Club', 7.00, 100), ('EEEntertainment', 'Zelda Breath of the Wild', 39.99, 100), ('EETechnology', 'Oculus Quest 2', 300.00, 100), ('EETechnology', 'Samsung S9000', 900.00, 100), ('EETechnology', 'Tile Mate', 24.99, 100);


-- drop table vendors cascade;

create table vendorinventory
(
    vendorInvID serial primary key,
    vendorName varchar(255) not null,
    vendorItem varchar(255) not null,
    vendorCost decimal(3, 2) not null,
    foreign key (vendorName) references vendors(vendorName)
);

-- drop table vendorinventory cascade;


create table notFoundTable
(
    notFoundID serial primary key,

);



-- select * from clients

-- drop table clients

-- DELETE FROM Clients
-- WHERE id = 1;

-- drop table vendors

-- insert into vendors (vendorName, vendorProduct, vendorCost, vendorQuantity) values


-- create table EarlyBirdProduce
-- (
--     id serial primary key,
--     productName varchar(100),
--     productCost decimal(10, 2),
--     productQuantity numeric(100)
-- );

-- insert into EarlyBirdProduce (productName, productCost, productQuantity) values
-- ('Eggs', 1.60, 100), ('Sliced Bacon', 5.50, 100), ('Cinnamon Toast Crunch', 2.50, 100); 

-- select * from EarlyBirdProduce

-- DELETE FROM EarlyBirdProduce
-- WHERE id = 4;

-- drop table EarlyBirdProduce


-- create table TheEntertainer
-- (
--     id serial primary key,
--     productName varchar(100),
--     productCost decimal(10, 2),
--     productQuantity numeric(100)
-- );

-- insert into TheEntertainer (productName, productCost, productQuantity) values
-- ('Fight Club', 7.00, 100), ('Zelda BOTW', 39.99, 100), ('Dark Side of the Moon Vinyl', 24.99, 100);

-- select * from TheEntertainer

-- drop table TheEntertainer


-- create table Technotrocity
-- (
--     id serial primary key,
--     productName varchar(100),
--     productCost decimal(10, 2),
--     productQuantity numeric(100)
-- );

-- insert into Technotrocity (productName, productCost, productQuantity) values
-- ('Samsung S9000', 900.00, 100), ('Tile Mate', 24.99, 100), ('Oculus Quest 2', 300.00, 100);

-- select * from Technotrocity

-- drop table Technotrocity