INSERT INTO Sampling (
    FillingDate,
    ExpiredDate,
    Product,
    Product_Link,
    Flavour,
    Department,
    Machine,
    Size,
    Temperature,
    Temperature2,
    CreatedBY,
    Locked_Production,
    SamplingID
)
VALUES (
    DATEADD(HOUR, 7, {{Filldate}}),
    DATEADD(HOUR, 7, {{Expiredate}}),
    {{Product}},
    CASE
        WHEN {{Flavour}} IS NULL OR LTRIM(RTRIM({{Flavour}})) = ''
            THEN {{Product}}
        ELSE CONCAT({{Product}}, '-', {{Flavour}})
    END,
    {{Flavour}},
    {{DE}},
    {{MC}},
    {{Size}},
    '30',
    '55',
    SYSUTCDATETIME(),
    {{locked}},
    {{SampID}}
);