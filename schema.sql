CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "phone" TEXT,
    "address" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "services" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "price_per_hour" REAL NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "employees" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "service_id" INTEGER,
    "customer_id" INTEGER,
    "date" DATE,
    "duration_hours" REAL,
    "status" TEXT CHECK("status" IN ('scheduled', 'completed', 'cancelled')),
    "created_at" DATETIME,
    PRIMARY KEY("id"),
    FOREIGN KEY("service_id") REFERENCES "services"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);


CREATE TABLE "order_employees" (
    "order_id" INTEGER,
    "employee_id" INTEGER,
    PRIMARY KEY("order_id", "employee_id"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY ("employee_id") REFERENCES "employees"("id")
);
