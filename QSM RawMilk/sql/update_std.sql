BEGIN TRANSACTION;

-- อัปเดต Std_Price ในตาราง Price โดย ID = 1
UPDATE Price
SET Std_Price = {{Std_Price}},
 employee_update = {{employee_update}}
WHERE ID = 1;

COMMIT TRANSACTION;