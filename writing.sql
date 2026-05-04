INSERT INTO "services" ("id", "name", "price_per_hour") VALUES
(1, "House Cleaning", 30),
(2, "Bond Cleaning", 50),
(3, "Office Cleaning", 40),
(4, "Carpet Cleaning", 45),
(5, "Construction Cleaning", 50);

INSERT INTO "employees" ("id", "name") VALUES
(1, "Carlos"),
(2, "Maria"),
(3, "Belen"),
(4, "Nicole");

INSERT INTO "customers" ("id", "first_name", "last_name", "phone", "address") VALUES
(101, 'John', 'Smith', '0400000001', 'Brisbane'),
(102, 'Anna', 'Brown', '0400000002', 'Brisbane'),
(103, 'Luis', 'Garcia', '0400000003', 'Brisbane'),
(104, 'Emma', 'Wilson', '0400000004', 'Brisbane'),
(105, 'Noah', 'Taylor', '0400000005', 'Brisbane'),
(106, 'Mia', 'Anderson', '0400000006', 'Brisbane'),
(107, 'Lucas', 'Thomas', '0400000007', 'Brisbane'),
(108, 'Olivia', 'Moore', '0400000008', 'Brisbane'),
(109, 'Ethan', 'Martin', '0400000009', 'Brisbane'),
(110, 'Ava', 'Lee', '0400000010', 'Brisbane'),
(111, 'Mateo', 'Perez', '0400000011', 'Brisbane'),
(112, 'Sophia', 'Clark', '0400000012', 'Brisbane'),
(113, 'Daniel', 'Lopez', '0400000013', 'Brisbane'),
(114, 'Isabella', 'Hall', '0400000014', 'Brisbane'),
(115, 'David', 'Allen', '0400000015', 'Brisbane'),
(116, 'Camila', 'Young', '0400000016', 'Brisbane'),
(117, 'James', 'Hernandez', '0400000017', 'Brisbane'),
(118, 'Charlotte', 'King', '0400000018', 'Brisbane'),
(119, 'Benjamin', 'Wright', '0400000019', 'Brisbane'),
(120, 'Amelia', 'Scott', '0400000020', 'Brisbane');

INSERT INTO "orders" ("id", "service_id", "customer_id", "date", "duration_hours", "status", "created_at") VALUES
(1, 1, 101, '2026-04-01', 2.0, 'completed', '2026-03-30 10:15:00'),
(2, 2, 102, '2026-04-01', 4.0, 'completed', '2026-03-30 11:20:00'),
(3, 3, 103, '2026-04-02', 3.0, 'scheduled', '2026-03-31 09:10:00'),
(4, 5, 104, '2026-04-02', 5.0, 'scheduled', '2026-03-31 14:00:00'),
(5, 1, 105, '2026-04-03', 2.5, 'completed', '2026-04-01 08:45:00'),
(6, 4, 106, '2026-04-03', 3.5, 'cancelled', '2026-04-01 12:30:00'),
(7, 2, 107, '2026-04-04', 4.5, 'completed', '2026-04-02 10:00:00'),
(8, 3, 108, '2026-04-04', 3.0, 'scheduled', '2026-04-02 15:20:00'),
(9, 5, 109, '2026-04-05', 6.0, 'scheduled', '2026-04-03 09:50:00'),
(10, 1, 110, '2026-04-05', 2.0, 'completed', '2026-04-03 11:10:00'),
(11, 4, 111, '2026-04-06', 3.0, 'completed', '2026-04-04 08:30:00'),
(12, 2, 112, '2026-04-06', 4.0, 'scheduled', '2026-04-04 13:40:00'),
(13, 3, 113, '2026-04-07', 3.5, 'completed', '2026-04-05 10:25:00'),
(14, 5, 114, '2026-04-07', 5.5, 'scheduled', '2026-04-05 16:00:00'),
(15, 1, 115, '2026-04-08', 2.0, 'completed', '2026-04-06 09:00:00'),
(16, 2, 116, '2026-04-08', 4.0, 'scheduled', '2026-04-06 12:15:00'),
(17, 3, 117, '2026-04-09', 3.0, 'completed', '2026-04-07 10:45:00'),
(18, 4, 118, '2026-04-09', 3.5, 'cancelled', '2026-04-07 14:10:00'),
(19, 5, 119, '2026-04-10', 6.0, 'scheduled', '2026-04-08 11:30:00'),
(20, 1, 120, '2026-04-10', 2.5, 'completed', '2026-04-08 15:00:00');

INSERT INTO "order_employees" ("order_id", "employee_id") VALUES
-- Single employee jobs
(1, 1),
(3, 2),
(5, 3),
(6, 4),
(8, 1),
(10, 2),
(11, 3),
(13, 4),
(15, 1),
(17, 2),
(18, 3),
(20, 4),

-- Two-employee jobs (bigger services)
(2, 1), (2, 2),
(4, 3), (4, 4),
(7, 1), (7, 3),
(9, 2), (9, 4),
(12, 1), (12, 4),
(14, 2), (14, 3),
(16, 1), (16, 2),
(19, 3), (19, 4);