/* Objective function */

max: Xoa+Xob+Xoc+Xab+Xad+Xbd+Xbe+Xbc+Xce+Xdt+Xed+Xet;

/* Constraints */
Xoa<=5;
Xob<=7;
Xoc<=4;
Xab<=3;
Xad<=1;
Xbd<=4;
Xbe<=5;
Xbc<=2;
Xce<=4;
Xdt<=9;
Xed<=1;
Xet<=6;
Xoa-Xab-Xad=0;
Xob+Xab-bd-be-bc=0;
Xoc+Xbc-Xce=0;
Xad+Xbd+Xed -Xdt =0;
Xbe+Xce-Xde-Xet=0;


