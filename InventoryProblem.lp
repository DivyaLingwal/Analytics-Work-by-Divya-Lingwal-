/* Objective function */
/* x1,x2,x3,x4 are variables defining quantity of raw materials bought which are less than 200*/
/* y1,y2,y3,y4 are variables defining quantity of raw materials, which is the amount above 200 on which company is supposed to get a discount*/
/* z1,z2,z3,z4 are the quantity of items which are left in inventory for usage in next month */
/* b1,b2,b3,b4 are binary variables which is 0 if quantity bought in a particular month is less than 200 and 1 if vice versa */
min: 12x1 + 10y1 + 14x2 +12y2 +16x3 +14y3 + 18x4 +16y4 + 2z1 +2z2 +2z3 +2z4; 
/* Constraints */

x1 - 200b1 >= 0;
x2 - 200b2 >= 0;
x3 - 200b3 >= 0;
x4 - 200b4 >= 0;

0<=x1<=200;
0<=x2<=200;
0<=x3<=200;
0<=x4<=200;

y1 -100000 b1 <= 0 ;
y2 -100000 b2 <= 0 ;
y3 -100000 b3 <= 0 ;
y4 -100000 b4 <= 0 ;


x1 + y1 -z1 =150;
z1 + x2+ y2 -z2 =200;
z2 + x3 +y3 - z3 =250;
z3 + x4 +y4 - z4 =150;

bin b1,b2,b3,b4;
 
