UPDATE Price
SET
    Fat = '{{Fat}}',
    Fat_cut = '{{Fat_cut}}',
    SNF = '{{SNF}}',
    SNF_cut = '{{SNF_cut}}',
    FP = '{{FP1}}',
    FP_Cut = '{{FP_Cut}}',
    SPC = '{{SPC}}',
    SPC_cut = '{{SPC_cut}}',
    SCC = '{{SCC}}',
    SCC_cut = '{{SCC_cut}}'
WHERE [Grade] = '{{Grade}}';