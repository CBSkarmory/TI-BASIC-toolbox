ClrHome
Lbl MM
ClrHome
Menu("How?","SideValid",1,"3rd side",2,"AngleType",3,"EXIT",EX)
Lbl EX
Return

Lbl 3
ClrHome
Input "Side1:",A:Input "Side2:",B:Input "Side3:",C
If not(A+B>C and B+C>A and A+C>B)
Goto IN
If A>B and A>C
1->D
If B>A and B>C
2->D
If C>A and C>B
3->D
If A=B and B>C
1->D
If B=C and B>A
2->D
If C=A and A>B
1->D
If D=1:Then
	A->X:C->A:X->C
End
If D=2:Then
	B->X:C->B:X->C
End
A^^2+B^^2->E
C^^2->C
Disp ""
If E<C
Disp "Obtuse"
If E>C
Disp "Acute"
If E=C
Disp "Right"
Pause 
Goto MM

Lbl 1
ClrHome
Input "A:",A
Input "B:",B
Input "C:",C
If A+B>C and B+C>A and A+C>B
Then
	Disp "Valid"
	Else
	Lbl IN
	Disp "invalid"
	Pause 
	Goto MM
End

Lbl 2
ClrHome
Input "A:",A
Input "B:",B
A+B->C
max(A,B)-min(A,B)->D
ClrHome
Output(1,1,D)
Output(1,4,"<X<")
Output(1,7,C)
Pause 
Goto MM