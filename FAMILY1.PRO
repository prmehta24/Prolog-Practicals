%http://www.texample.net/tikz/examples/family-tree/ - used the family tree found here

predicates
male(symbol)
female(symbol)
father(symbol,symbol)
mother(symbol,symbol)
sibling(symbol,symbol)
parent(symbol,symbol)
cousin(symbol,symbol)
grandparent(symbol,symbol)
aunt(symbol,symbol)
uncle(symbol,symbol)
brother(symbol,symbol)
sister(symbol,symbol)

clauses
male(jim).
male(alfred).
male(charles).
male(joe).
male(howard).
male(nick).
female(jane).
female(berta).
female(doris).
female(heather).
female(barbara).
female(liz).
father(jim,alfred).
father(jim,berta).
father(jim,charles).
father(jim,doris).
father(alfred,joe).
father(alfred,heather).
father(alfred,barbara).
mother(jane,alfred).
mother(jane,berta).
mother(jane,charles).
mother(jane,doris).
mother(berta,howard).
mother(doris,nick).
mother(doris,liz).
parent(X,Y):-father(X,Y).
parent(X,Y):-mother(X,Y).
sibling(X,Y):-father(Z,X),father(Z,Y),X<>Y.
sibling(X,Y):-mother(Z,X),mother(Z,Y),X<>Y.
cousin(X,Y):-parent(Z,X),parent(W,Y),Z<>W,sibling(Z,W).
grandparent(X,Y):-parent(Z,Y),parent(X,Z).
aunt(X,Y):-parent(Z,Y),female(X),sibling(X,Z).
uncle(X,Y):-parent(Z,Y),male(X),sibling(X,Z).
brother(X,Y):-sibling(X,Y),male(X).
sister(X,Y):-sibling(X,Y),female(X).
niece(X,Y):-sibling(Z,Y),parent(Z,X),female(X).
nephew(X,Y):-sibling(Z,Y),parent(Z,X),male(X).






