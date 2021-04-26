use "F:\IT\Desktop\Capstone data.dta", clear
reg price rooms sqfeet
rvfplot, yline(0)
rvfplot, recast(scatter)
scatter price rooms
reg price room sqfeet
predict ut, resid
gen utsq=ut^2
reg utsq rooms sqfeet
estat hettest
reg price room sqfeet
reg price room sqfeet, robust
gen lnprice= log(price)
gen lnrooms= log(rooms)
gen lnsqfeet= log(sqfeet)
reg price rooms sqfeet
reg price rooms sqfeet, robust
reg lnrooms sqfeet
reg lnrooms sqfeet, robust
reg lnprice lnrooms lnsqfeet
reg lnprice lnrooms lnsqfeet, robust
reg price rooms sqfeet [weight=1/sqfeet]
