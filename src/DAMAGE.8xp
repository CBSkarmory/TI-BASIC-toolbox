:"Pokemon damage calc. v1.3
ClrHome
Input "ATK:",A
Input "BP :",B
Input "WB :",C
Input "AB :",D
Input "STAB?",E:Input "SE?:",F
Input "lv :",J
ClrHome
Input "HP :",G
Input "DEF:",H
Input "SRD:",I
If I=.25:(100/32)->I:If I=.5:(100/16)->I:If I=1:12.5->I:If I=2:25->I:If I=4:50->I
Menu("Lefties?","Y",Y,"N",N)
Lbl Y:(100/16)->U:Goto 1
Lbl N:0->U
Lbl 1:Menu("Grounded?","Y",YS,"N",NS)
Lbl YS:1->S
Goto 2
Lbl NS:0->S
Lbl 2

A/H->N
(2J+10)/250->J
FJBNCDE->O
If O<1:1->O
O*.85->Q
If Q<1:1->Q
G/O->P:G/Q->R
100/P->P:100/R->R:
ClrHome
Output(1,1,Q):Output(1,8," to      "):Output(1,12,O):Output(2,1,"Damage"):Output(3,1,R):Output(3,8," to       "):Output(3,12,P):Output(4,1,"percent")

0->Y:0->X
If R>=100:Then:1->X:Else
If P>=100:Then:1->X:1->Y:End:End

If not(X) and R+I>=100:Then:2->X:Else:If X=0 and P+I>=100:Then:2->X:1->Y:End:End

If X=0 and R+I+12.5>=100 and S=1:Then:3->X:Else:If X=0 and P+I+12.5>=100 and S=1:Then:3->X:1->Y:End:End

If X=0 and 2R>=100+U:Then:4->X:Else:If X=0 and 2P>=100+U:Then:4->X:1->Y:End:End

If X=0 and 2R+I>=100+U:Then:5->X:Else:If X=0 and 2P+I>=100+U:Then:5->X:1->Y:End:End

If X=0 and 2R+I+12.5>=100+U and S=1:Then:6->X:Else:If X=0 and 2P+I+12.5>=100+U and S=1:Then:6->X:1->Y:End:End
If X=0 and 3R>=100+2U:Then:7->X:1->Y:Else:If X=0 and 3P>=100+2U:Then:7->X:1->Y:End:End
If X=0 and 3R+I>=100+2U:Then:8->X:1->Y:Else:If X=0 and 3P+I>=100+2U:Then:8->X:1->Y:End:End

If X=0 and 3R+I+12.5>=100+2U and S=1:Then:9->X:1->Y:Else:If X=0 and 3P+I+12.5>=100+2U and S=1:Then:9->X:1->Y:End:End

If Y=1:Output(5,1,"potential")

If X=1
Then
	Output(5,11,"OHKO")
End
If X=2
Then
	Output(5,11,"OHKO  after SR")
End
If X=3
Then
	Output(5,11,"OHKO  afterSR and 1   layer spikes")
End

If (X>=4 or X=0) and U:Output(8,1,"lefties factored")
If X=4
Then
	Output(5,11,"2HKO")
End
If X=5
Then
	Output(5,11,"2HKO  after SR")
End
If X=6
Then
	Output(5,11,"2HKO  afterSR and 1   layer spikes"
End

If X=7
Then
	Output(5,11,"3HKO"
End
If X=8
Then
	Output(5,11,"3HKO  after SR")
End
If X=9
Then
	Output(5,11,"3HKO  afterSR and 1   layer spikes")
End
Pause :ClrHome
"