create table clients
(
    clientID serial,
    clientName varchar(255) not null,
    clientEmail varchar(255) not null,
    primary key (clientID)
);

drop table clients cascade;

select * from clients;

-- delete from clients;



-- CHECK AGAIN v
create table shoppinglist
(
    itemID serial,
    clientID bigserial,
    productName varchar(255),
    primary key(itemID),
    foreign key(clientID) references clients(clientID)
);

drop table shoppinglist cascade;

select * from shoppinglist;


create table expenses
(
    lineitemID serial,
    subtotal decimal(10, 2),
    -- orderID not null,
    primary key(lineitemID)
);

select * from expenses;

drop table expenses cascade;


create table orders
(
    orderSetID serial,
    -- clientID int not null,
    -- productName varchar(255),
    total decimal(13, 2),
    -- orderDate DATETIME
    primary key (orderSetID)
    -- foreign key (clientID) references clients(clientID)
);

select * from orders;

drop table orders cascade;


create table vendors
(
    vendorID int not null,
    vendorName varchar(100),
    vendorProduct varchar(100),
    vendorCost decimal(10, 2),
    vendorQuantity numeric(100),
    primary key (vendorID)
);

select * from vendors;

insert into vendors(vendorID, vendorName, vendorProduct, vendorCost, vendorQuantity) VALUES
(1, 'Pega', 'Steeleye Stout', 18.00, 100), (2, 'Pega', 'Louisiana Fiery Hot Pepper Sauce', 21.06, 100), (3, 'EEFood', 'Bacon', 5.50, 0), (4, 'EEFood', 'Cinnamon Toast Crunch', 2.50, 100), (5, 'EEFood', 'Eggs', 1.60, 100), (6, 'EEEntertainment', 'Dark Side of the Moon Vinyl', 24.99, 100), (7, 'EEEntertainment', 'Fight Club', 7.00, 100), (8, 'EEEntertainment', 'Zelda Breath of the Wild', 39.99, 100), (9, 'EETechnology', 'Oculus Quest 2', 300.00, 100), (10, 'EETechnology', 'Samsung S9000', 900.00, 100), (11, 'EETechnology', 'Tile Mate', 24.99, 100);

-- UPDATE vendors SET vendorQuantity = 100 WHERE vendorQuantity = 99;

-- UPDATE vendors SET vendorQuantity = 0 WHERE vendorQuantity = 99 AND vendorProduct = 'Steeleye Stout';

drop table vendors cascade;

-- create table vendorinventory
-- (
--     vendorInvID int not null,
--     vendorName varchar(255) not null,
--     vendorItem varchar(255) not null,
--     vendorCost numeric(3, 2) not null,
--     primary key (vendorInvID),
--     foreign key (vendorID) references vendors(vendorID)
-- );

-- drop table vendorinventory cascade;