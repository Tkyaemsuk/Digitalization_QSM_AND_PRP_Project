SELECT 
    (SELECT COUNT(id)
     FROM temperature_30
     WHERE sampID = {{ samp }}) AS count30,

    (SELECT COUNT(id)
     FROM temperature_55
     WHERE sampID = {{ samp }}) AS count55;