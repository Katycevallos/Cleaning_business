/*Which service generate the most revenue, and what is the average duration per job for each service(only completed orders)*/
SELECT
   "s"."name" AS "service",
   COUNT("o"."id") AS "total_jobs",
   ROUND(AVG("o"."duration_hours"), 2) AS "avg_duration",
    SUM("o"."duration_hours" * "s"."price_per_hour") AS "total_revenue"
FROM "services" "s"
JOIN "orders" "o" ON "o"."service_id" = "s"."id"
WHERE "o"."status" = 'completed'
GROUP BY "s"."name"
ORDER BY "total_revenue" DESC;

/* Which employee is the most and least utilized based on total hours worked (only for completed jobs)?*/
SELECT
    "e"."name" AS "employee_name",
    COUNT("oe"."order_id") AS "total_orders",
    SUM("duration_hours") AS "total_hours"
FROM "employees" "e"
JOIN "order_employees" "oe" ON "oe"."employee_id" = "e"."id"
JOIN "orders" "o" ON "o"."id" = "oe"."order_id"
WHERE "o"."status" = 'completed'
GROUP BY "employee_name"
ORDER BY "total_hours" DESC;

/* What is the cancellation percentage*/

SELECT
    "s"."name" AS "service_name",
    COUNT("o"."id") AS "total_orders",
    SUM(
        CASE WHEN "o"."status" = 'cancelled' THEN 1
        ELSE 0
        END
    ) AS "total_cancelled_orders",
    ROUND(SUM(
         CASE WHEN "o"."status" = 'cancelled' THEN 1
        ELSE 0
        END
    ) * 100 /COUNT("o"."id"), 2) AS "cancellation_percentage"
    FROM "orders" "o"
    JOIN "services" "s" ON "s"."id" = "o"."service_id"
    GROUP BY "service_name"
    ORDER BY "cancellation_percentage" DESC;

