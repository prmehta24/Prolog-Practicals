%List program to add element at front or back/end of list, find element in list, and reverse a list
domains
List=integer*
Number=integer
Position=integer
Count=integer
predicates
addelementf(Number,List,List).
findelement(Number,List).
addelemente(Number,List,List)
reverselist(List,List,List)
clauses
addelementf(Number,List,[Number|List]).

findelement(Number,[Head|Tail]):-
Head=Number,
write("Found"),nl;
findelement(Number,Tail).

addelemente(Number,[],[Number]).
addelemente(Number,[Head|Tail],[Head|Tail2]):-
addelemente(Number,Tail,Tail2).

%http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse25
%reverselist([array],[empty],endvariable)

reverselist([Head|Tail],RList,TList):-
reverselist(Tail,[Head|RList],TList).
reverselist([],RList,RList).






