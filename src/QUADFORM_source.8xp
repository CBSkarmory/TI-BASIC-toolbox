:"Quadratic Solver
a+bi
ClrHome
DelVar G
Input "A?:",A:Input "B?:",B:Input "C?:",C:ClrHome
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