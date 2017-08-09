:"FOILing CALC
ClrHome
Disp "(AX+B)(CX+D)"
Prompt A,B,C,D
AC->N
AD->Y
BC->Z
AD+BC->O
BD->P
ClrHome
Output(2,1,N)
Output(2,4,"X^^2"):If O>=0:Output(2,6,"+")
Output(2,7,O)
Output(2,10,"X
If P>=0:Output(2,11,"+")
Output(2,12,P)

Output(1,1,N)
Output(1,4,"X"
Output(1,5,"^^2"
Output(1,7,Y
If Y>=0:Output(1,6,"+")
Output(1,9,"X"
Output(1,11,Z
If Z>=0:Output(1,10,"+")
Output(1,12,"X")
Output(1,13,"+")
Output(1,14,O)
Pause 
Menu("Cont?","Y",Y,"N",N)
ClrHome
Lbl N
Return
Lbl Y
N->A:O->B:P->C
a+bi
ClrHome
DelVar G
0->theta
If (A=0)(B=0)(C=0):999->theta
If theta=999:Goto AZ

If iPart(A)=A and iPart(B)=B and iPart(C)=C
Then
	Output(1,4,"+/-
	B^^2-4AC->F:F->O
	If F<0
	Then:1->G:~F->F
	End
	iPart(sqrt(F)->H
	1->J
	For(I,1,H
		If F/H^^2=iPart(F/H^^2):Then
			JH->J:F/H^^2->F
		End
	End
	9-(iPart(log(J)))->K
	If G=1:Then
		Output(1,9,"[i]"):K-1->K
	End
	abs(B)->M
	abs(2A)->N
	gcd(J,M)->L
	gcd(L,N)->L
	J/L->J
	B/L->Q
	A/L->P
	Output(1,1,~Q
	If not(J=1 and F!=1)
	Output(1,K,J
	If F!=1
	Then
		Output(1,10,"sqrt(
		Output(1,12,F
	End
	If 2P!=1
	Then
		Output(2,1,"----------------
		Output(3,6,2P
	End
End
((~B)+sqrt(B^^2-4AC))/(2A)->D
((~B)-sqrt(B^^2-4AC))/(2A)->E
Output(4,1,"X=
Output(6,1,"X=
Output(4,3,D
Output(6,3,E
Output(8,1,"DISC:
Output(8,6,O
Pause 
ClrHome
Return
Lbl AZ
ClrHome
Disp "X=0"
Pause 
ClrHome
"
