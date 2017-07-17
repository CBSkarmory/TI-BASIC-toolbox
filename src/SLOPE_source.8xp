:"Slope v1.4
ClrHome
For(X,1,16)
	Output(1,X,"-"
	Output(8,X,"-"
End
Output(2,1,"Slope Calculator"
Output(4,8,"by:SOUP"
Output(5,8,"[v1.4]"
Pause 
ClrHome
Lbl MM
Menu("Slope Calc v1.3","CALCULATE",CA,"Exit",EX)
Lbl CA
ClrHome
Input "X1:",A
Input "Y1:",B
Disp ""
Input "X2:",C
Input "Y2:",D
D-B->X
C-A->Y
If Y=0:Goto UN
X/Y->Z

ZA->F
B-F->F



ClrHome
Disp "Slope:"
Output(1,7,Z)
Output(2,1,"Xint:")
Output(2,6,(0-B)/Z)
Output(4,1,"b="
Output(4,3,F
Output(6,1,"^y:")
Output(7,1,"^x:")
Output(6,4,X)
Output(7,4,Y)

Pause 
Goto MM
Lbl UN
ClrHome
Disp "Undefined"
Lbl EX
"