create table if not exists CUSTOMERS
(
    id serial primary key,
    name varchar not null,
    surname varchar not null,
    age int     not null,
    phone_number varchar not null
);

create table if not exists ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id int,
    product_name varchar not null,
    amount int not null,
    foreign key (customer_id) references CUSTOMERS(id)
);




