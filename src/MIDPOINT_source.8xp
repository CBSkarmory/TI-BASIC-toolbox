:"Midpoint calc
ClrHome
Lbl MM
Menu("Midpt calc","CALC",A,"EXIT",EX)
Lbl EX
Return
Lbl A
Input "X1:",A
Input "X2:",B
Disp "",""
Input "Y1:",C
Input "Y2:",D
(A+C)/2->X
(B+D)/2->Y
ClrHome
Output(1,1,"X:"):Output(2,1,"Y:")
Output(1,4,X)
Output(2,4,Y)
Pause :Goto MM