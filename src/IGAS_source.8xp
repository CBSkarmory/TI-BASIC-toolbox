Goto A
Lbl EX
ClrHome
Return
End
Lbl A
ClrHome
Disp "~1 for unkown"
Input "P",P
Input "V",V
Input "n",N
Input "T",T
Menu("Pressure Unit","atm",1,"kPa",2)
Lbl 1:0.0821->R
Goto 3
Lbl 2:8.315->R
Lbl 3
NRT->A:PV->B
If P=~1:Then
	A/V->X:Goto 9
End
If V=~1:Then
	A/P->X:Goto 9
End
If N=~1:Then
B/(RT)->X:Goto 9:End
If T=~1:Then:B/(NR)->X:Goto 9
End
Lbl 9
ClrHome:Disp X:Pause :Goto EX:End