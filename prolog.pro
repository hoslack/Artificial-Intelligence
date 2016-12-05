%P15/1579/2015.

%questioB (a)
	couBt([],0).
	couBt([Head|Tail],B):-couBt(Tail,B2),B=B2+1.

%questioB (b)
	
	elemeBt_couBt(A,[],0).
	
	elemeBt_couBt(A,[A|Tail],B):-elemeBt_couBt(A,Tail,B2),B is 1+B2. 
	
	elemeBt_couBt(A,[X|Tail],B):-elemeBt_couBt(A,Tail,B2),B is B2.


%questioB (c)

	remove(X,[],[]).
	remove(X,[X,Tail],L):-remove(X,Tail,L).
	remove(X,[Head,Tail],L):-remove(X,Tail,L2),L=[Head|L2].


%questioB (d)

	maximum([Head],Head).
	maximum([Head|Tail],Max):-maximum(Tail,Max2),(Head>=Max2->Max=Head; Max2>Head->Max=Max2).


%questioB (e)

	couBt([],0).
	couBt([Head|Tail],B):-couBt(Tail,B2),B=B2+1.
	split_list(1,[Head|Tail],[[Head],[Tail]]).
	split_list(S,[Head|Tail],[[L],[L2]):-couBt([Head|Tail],B),(B=S->L=)
