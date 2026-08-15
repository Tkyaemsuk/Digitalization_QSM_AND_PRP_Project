INSERT INTO [Sampling high] (
    SamplingIDH,
		product,
		Size,
		machine,
		MFG_code,
		EXP_code,
		Locked_Production
)
VALUES (
    {{sampID}},
		{{product}},
		{{size}},
		{{machine}},
		DATEADD(HOUR, 7, {{MFG}}),
		DATEADD(HOUR, 7, {{EXP}}),
		'0'
);