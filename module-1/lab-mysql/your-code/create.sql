CREATE TABLE IF NOT EXISTS cars(
    vehicle_identification_number integer primary key,
    manufacturer text,
    model text,
    car_year integer,
    car_color text
);

CREATE TABLE IF NOT EXISTS salespersons(
    staff_id text primary key,
    name text,
    store integer
);

CREATE TABLE IF NOT EXISTS customers(
    customer_id integer primary key,
    name text,
    phone_number text,
    email integer,
    address text,
    city text,
    state text,
    country text,
    postal_code integer
);

CREATE TABLE IF NOT EXISTS invoices(
    invoice_number integer,
    invoice_date date,
    vehicle_identification_number integer,
    customer_id integer,
    staff_id text,
    PRIMARY KEY (invoice_number),
   	FOREIGN KEY (vehicle_identification_number) 
      REFERENCES cars (vehicle_identification_number),
   	FOREIGN KEY (customer_id) 
      REFERENCES customers (customer_id),
    FOREIGN KEY (staff_id) 
      REFERENCES salespersons (staff_id)
);

