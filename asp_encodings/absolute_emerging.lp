#const minSup=2.
#const maxLength=3.
%#const minLength = 1. %param for minimum lenght constraint
#const minDiff = 1.
#const class=positive.

%link facts to objects used in the encoding
item(I) :- db(_,I).
transaction(T) :- db(T,_).

%problem encoding (frequent itemset mining)
{in_pattern(I)} :- item(I).
in_support(T) :- {conflict_at(T,I) : item(I)} 0, transaction(T), class(T, class).
out_support(T) :- {conflict_out(T,I) : item(I)} 0, transaction(T), not class(T, class).
conflict_at(T,I) :- not db(T,I), in_pattern(I), transaction(T), class(T, class).
conflict_out(T,I) :- not db(T,I), in_pattern(I), transaction(T), not class(T, class).

%definition of absolute support difference (Dong et al.)
absolute_diff(D) :- N = #count{ T : in_support(T)}, M = #count{T : out_support(T)}, D = |N-M|.

%length constraint (an itemsets with AT LEAST maxLength+1 items cannot exist)
:- maxLength+1 {in_pattern(I)}.
:- {in_pattern(I)} 0.

%frequency constraint (patterns supported by AT MOST minSup-2 transactions cannot be considered frequent)
:- {in_support(T)} minSup-2.

%absolute growth-rate constraint (patterns with absolute support difference LOWER than minDif cannot be considered contrast patterns)
:- absolute_diff(D), D < minDiff.

%constraint for specific db with none line 
:- in_pattern(caller(none)).
:- in_pattern(callee(none)).
:- in_pattern(street_a(none)).
:- in_pattern(street_b(none)).

%constraint for pattern of minimum lenght
%:- #count{T : in_pattern(T)} < minlen.

%print an answer-set as made of the facts listed in in_pattern/1 and absolute_diff/1
#show in_pattern/1.
#show absolute_diff/1.
