SELECT * FROM classicmodels.customers;
alter table customers add index index_customerNumber(customerNumber);
explain select * FROM customers where customerNumber = 175;
alter table customers add index idx_fullname(contactFirstName, contactLastName);
explain select * from customers where contactFirstName = 'Jean' or contactFirstName = 'King';
alter table customers drop index idx_fullname;