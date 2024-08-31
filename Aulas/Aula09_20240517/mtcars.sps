SET DECIMAL=DOT.

DATA LIST FILE= "mtcars.txt"  free (",")
ENCODING="Locale"
/ mpg cyl disp hp drat wt qsec vs am * gear (F8.0) carb 
  .

VARIABLE LABELS
mpg "mpg" 
 cyl "cyl" 
 disp "disp" 
 hp "hp" 
 drat "drat" 
 wt "wt" 
 qsec "qsec" 
 vs "vs" 
 am "am" 
 gear "gear" 
 carb "carb" 
 .

VALUE LABELS
/
gear 
1 "3" 
 2 "4" 
 3 "5" 
.
VARIABLE LEVEL mpg, cyl, disp, hp, drat, wt, qsec, vs, am, carb 
 (scale).

EXECUTE.
