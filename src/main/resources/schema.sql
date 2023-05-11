CREATE TABLE CUSTOMERS (
                           id serial primary key,
                           name varchar (250) NOT NULL,
                           surname varchar (250) NOT NULL,
                           age int NOT NULL,
                           phone_number numeric (11,0) NOT NULL
);

CREATE TABLE ORDERS (
                        id serial primary key,
                        date date,
                        customer_id int NOT NULL,
                        product_name varchar (500) NOT NULL,
                        amount numeric (100) NOT NULL,
                        CONSTRAINT fk_customers FOREIGN KEY (customer_id)
                            REFERENCES customers (id)
);
