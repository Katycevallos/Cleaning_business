/* Query 1 */
CREATE INDEX "orders_status_service_index"
ON "orders"("status", "service_id");

/* Query 2 */
CREATE INDEX "orders_status_index"
ON "orders"("status","id", "duration_hours");

CREATE INDEX "orders_employees_employee_order_index"
ON "order_employees"("employee_id", "order_id");

/* Query 3 */
CREATE INDEX "orders_service_status_index"
ON "orders"("service_id", "status");
