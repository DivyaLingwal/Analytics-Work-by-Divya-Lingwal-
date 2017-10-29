/* Objective function */

min:2Xoa+5Xob+4Xoc+2Xab+7Xad+4Xbd+3Xbe+Xbc+Xcb+4Xce+5Xdt+Xde+Xed+7Xet;

/* Constraints */
Xoa+Xob+Xoc=1;
-Xoa+Xab+Xad=0;
-Xob-Xab-Xcb+ba+bd+be+bc=0;
-Xoc+Xcb+Xce=0;
-Xad-Xbd-Xed +Xdt =0;
-Xbe-Xce-Xde+Xet=0;
-Xdt -Xde=-1;
