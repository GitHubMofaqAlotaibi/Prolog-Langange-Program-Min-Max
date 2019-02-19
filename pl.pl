% Mofaq Alotaibi_April 24, 2017_524-02
% implementation of program minimum and maximum 
% of a list of numbers, and returns 
% the min and max in a list.
% MAX prefers the greater value
% MIN prefers the lesser value
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %minmax([1,2,3],Result).
 minmax([H|T], Result):- %
 maxList(T, H, Result2),
 minList(T, H, Result1),
 Result=[Result1,Result2].
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 maxList([], Acc2, Acc2). 
 maxList([H2|T2], Acc2, Result2):- 
 (Acc2 > H2 -> NewAcc1 = Acc2; NewAcc1 = H2),
 maxList(T2, NewAcc1, Result2).  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 minList([], Acc1, Acc1). 
 minList([H1|T1], Acc1, Result1):- 
 (H1 < Acc1-> NewAcc = H1;NewAcc = Acc1),  
 minList(T1, NewAcc, Result1). 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%