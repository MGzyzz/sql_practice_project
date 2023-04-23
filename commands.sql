-- СОЗДАНИЕ БАЗЫ ДАННЫХ
create database kitchen;

-- СОЗДАНИЕ ТАБЛИЦЫ
create table order_client(
    id serial primary key,
    full_name varchar(255) not null,
    guest_number int not null,
    table_client int not null,
    order_client varchar(255) not null,
    order_acceptance_time timestamp not null,
    cooking_status varchar(20) not null,
    order_issued_to_customer timestamp not null
);

-- СОЗДАНИЕ ТАБЛИЦЫ
create table cooking_book(
    id serial primary key,
    list_of_dishes varchar(255) not null,
    ingredients varchar(255) not null,
    cooking_time varchar(255) not null
);

-- СОЗДАНИЕ ТАБЛИЦЫ
create table kitchen(
  list_of_dishes_to_be_prepared varchar(255) not null,
  which_products_were_taken varchar(255) not null,
  time_of_the_taken_products timestamp not null,
  cooking_status varchar(20) not null
);

-- СОЗДАНИЕ ТАБЛИЦЫ
create table warehouse(
    id serial primary key,
    product_name varchar(255) not null,
    product_type varchar(100) not null,
    quantity int not null
);

-- СОЗДАНИЕ БАЗЫ ДАННЫХ
create database hotel;

-- СОЗДАНИЕ ТАБЛИЦЫ
create table future_bookings(
    id serial primary key,
    full_name varchar(255) not null,
    phone_number bigint not null,
    reservation timestamp not null,
    room_count int not null,
    room_numbers int not null,
    room_class varchar(255) not null,
    regular_customer varchar(100) not null,
    check_out timestamp not null
);

-- СОЗДАНИЕ ТАБЛИЦЫ
create table booking_history (
    id serial primary key,
    full_name varchar(255) not null,
    phone_number bigint not null,
    booking_history_client varchar(255) not null,
    check_out varchar(255) not null,
    total_number_of_bookings int not null
);

-- СОЗДАНИЕ БАЗЫ ДАННЫХ
create database grocery_store;

-- СОЗДАНИЕ ТАБЛИЦЫ
create table warehouse(
    id serial primary key,
    product_name varchar(255) not null,
    product_type varchar(100) not null,
    quantity varchar(100) not null,
    price int not null,
    production_date timestamp not null,
    has_been_delivered timestamp not null,
    expiry_date int not null
);

-- СОЗДАНИЕ ТАБЛИЦЫ
create table price_history(
    id serial primary key,
    product_name varchar(255) not null,
    product_type varchar(100) not null,
    date_price_charge varchar(255) not null,
    price_change_history varchar(255) not null,
    warehouse_manager_confirmation varchar(100) not null,
    ceo_confirmation varchar(100) not null,
    confirmation_from_the_director_of_the_company varchar(100) not null
);

-- Запросы к таблицам с помощью команды select
select booking_history_client from booking_history;
select distinct full_name from booking_history;
select product_name from warehouse;
select quantity from warehouse;
select list_of_dishes_to_be_prepared from kitchen;
select cooking_status, order_issued_to_customer  from order_client;