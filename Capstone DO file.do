egen id= group(country)
xtset id time
gen lfg1= lfg[_n-1]
gen inv1= inv[_n-1]
gen trade1= trade[_n-1]
gen gini1= gini[_n-1]
xtreg gdp gini1
xtreg gdp gini1, re
xtreg gdp gini1 lfg1, re
xtreg gdp gini1 lfg1 inv1, re
xtreg gdp gini1 lfg1 inv1 trade1, re
xtreg gdp gini1, fe
xtreg gdp gini1 lfg1, fe
xtreg gdp gini1 lfg1 inv1, fe
xtreg gdp gini1 lfg1 inv1 trade1, fe
corr gdp gini1 lfg1 inv1 trade1
xtreg gdp gini1 lfg1 inv1 trade1, re
xtreg gdp gini1 lfg1 inv1 trade1, fe
