SELECT
    s.SamplingID,
    p.Product,
    v.Flavour
FROM HighAcid_Sampling_Flavour s
CROSS APPLY (
    VALUES (s.Product), (s.Product2)
) p(Product)
CROSS APPLY (
    VALUES (s.Flavour), (s.Flavour2), (s.Flavour3), (s.Flavour4), (s.Flavour5), (s.Flavour6)
) v(Flavour)
WHERE s.SamplingID = {{ SampID }}
  AND NULLIF(LTRIM(RTRIM(p.Product)), '') IS NOT NULL
  AND NULLIF(LTRIM(RTRIM(v.Flavour)), '') IS NOT NULL;