-- Create the customers table
CREATE TABLE customers (
  customer_id NUMBER PRIMARY KEY,
  customer_name VARCHAR2(50),
  customer_email VARCHAR2(50)
);

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (1, 'John Smith', 'john.smith@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (2, 'Jane Doe', 'jane.doe@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (3, 'Bob Johnson', 'bob.johnson@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (4, 'Alice Brown', 'alice.brown@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (5, 'Peter Lee', 'peter.lee@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (6, 'Susan Chen', 'susan.chen@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (7, 'Mike Davis', 'mike.davis@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (8, 'Julia Kim', 'julia.kim@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (9, 'Tommy Nguyen', 'tommy.nguyen@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (10, 'Kelly Smith', 'kelly.smith@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (11, 'Mark Johnson', 'mark.johnson@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (12, 'Emily Brown', 'emily.brown@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (13, 'David Lee', 'david.lee@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (14, 'Linda Chen', 'linda.chen@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (15, 'Jason Davis', 'jason.davis@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (16, 'Sophia Kim', 'sophia.kim@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (17, 'Jack Nguyen', 'jack.nguyen@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (18, 'Sara Lee', 'sara.lee@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (19, 'David Brown', 'david.brown@example.com');

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (20, 'Karen Lee', 'karen.lee@example.com');
INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES (20, 'Karen Lee', 'karen.lee@example.com');

-- Create the orders table
CREATE TABLE orders_customer (
  order_id NUMBER PRIMARY KEY,
  order_date DATE,
  order_amount NUMBER,
  customer_id NUMBER REFERENCES customers(customer_id)
);

-- Insert 50 rows of order data for the 20 customers
DECLARE
  i NUMBER;
BEGIN
  FOR i IN 1..50 LOOP
    INSERT INTO orders_customer (order_id, order_date, order_amount, customer_id)
    VALUES (i, SYSDATE - TRUNC(DBMS_RANDOM.VALUE(1, 365)), TRUNC(DBMS_RANDOM.VALUE(100, 1000)), TRUNC(DBMS_RANDOM.VALUE(1, 20)));
  END LOOP;
END;
/

-- Get the top 10 customers based on their total order amounts
SELECT customer_name, total_order_amount
FROM (
  SELECT c.customer_name, SUM(o.order_amount) as total_order_amount
  FROM customers c
  JOIN orders_customer  o ON c.customer_id = o.customer_id
  GROUP BY c.customer_name
  ORDER BY total_order_amount DESC
) t
WHERE ROWNUM <= 3;
