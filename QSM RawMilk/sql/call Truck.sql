WITH cte AS (
    SELECT
        Supplier,
  Truck_no,
        Diver_name,

        DENSE_RANK() OVER (
            PARTITION BY Supplier
            ORDER BY Truck_no
        ) AS no
    FROM Truck
    WHERE Supplier = {{Supplier}}
)

SELECT DISTINCT
    no,
    Supplier,
   Truck_no,
    Diver_name
FROM cte
ORDER BY
    Supplier,
    no;