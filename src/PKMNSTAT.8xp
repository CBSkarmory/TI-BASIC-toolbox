:"Pokemon stat calc. v1.0
ClrHome
Input "Base:",A:Input "EVs:",B
Input "IVs:",C
Input "Lv:",D
Input "Nature x:",E
Input "Item x:",F
Input "Boost x:",H
EFH->E
B/4->B
D/100->D
(B+C)*D->X
2DA+X->X
XE+5->X
ClrHome
Disp X
Pause 
ClrHome
"