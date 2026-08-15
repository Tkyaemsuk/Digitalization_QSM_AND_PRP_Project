UPDATE Sampling
SET
    FillingDate = '{{FillingDate}}',
    ExpiredDate = '{{ExpiredDate}}',
    production_update_uid = '{{pdt_id}}'
WHERE SamplingID = {{sampID}};