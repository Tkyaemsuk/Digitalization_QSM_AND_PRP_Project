SELECT 
	truck_no,
	Driver_name
FROM [TruckList] TL

LEFT JOIN Truck T
	ON TL.ref_no = T.id WHERE T.Supplier = {{name}}