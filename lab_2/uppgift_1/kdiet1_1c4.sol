Problem:    kdiet
Rows:       7
Columns:    7
Non-zeros:  49
Status:     OPTIMAL
Objective:  totalpris = 49.69123 (MINimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 totalpris    B        49.6912                             
     2 minnytta[energi]
                    NL          2000          2000                 0.000169525 
     3 minnytta[protein]
                    NL            55            55                    0.744949 
     4 minnytta[kalcium]
                    NL           800           800                   0.0105729 
     5 maxnytta[energi]
                    B           2000                       99999 
     6 maxnytta[protein]
                    B             55                       99999 
     7 maxnytta[kalcium]
                    B            800                       99999 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 port[havregryn]
                    NU             4             0             4    -0.0195901 
     2 port[kyckling]
                    B       0.373507             0             3 
     3 port[agg]    NL             0             0             2        2.7176 
     4 port[mjolk]  B        2.72648             0             8 
     5 port[paj]    NL             0             0             2       16.7164 
     6 port[bonor]  NL             0             0             2        7.6808 
     7 port[ananas] B        1.04719             0             7 

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 1.14e-13 on row 4
        max.rel.err = 7.10e-17 on row 4
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 7.11e-15 on column 2
        max.rel.err = 2.93e-16 on column 5
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
