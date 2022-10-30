create table CUSTOMERS
(
    id             SERIAL,
    name           varchar(150) not null,
    surname        varchar(150) not null,
    age            int          not null,
    phone_number   varchar(20),
    primary key (id)
);

create table ORDERS
(
    id             SERIAL,
    date           date default current_date,
    customer_id    int not null,
    product_name   varchar(150) not null,
    amount         decimal,
    primary key (id),
    foreign key (customer_id) references CUSTOMERS(id)
);