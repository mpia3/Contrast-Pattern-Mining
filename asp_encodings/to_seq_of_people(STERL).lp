% from
% seq_event(Date, Seq_position, (Type_op, Caller, Callee, Street_a, Street_b, Time, Weekday, Duration))
% to
% seq(Date, Seq_position, (Type, Caller, Callee))

seq(Date, Seq_position, ((Caller, Callee), Type, Time)) :- seq_event(Date, Seq_position, (Type, Caller, Callee, _, _, Time, _, _)).
%*
seq(Date, Seq_position, Caller) :- seq_event(Date, Seq_position, (_, Caller, _, _, _, _, _, _)).
seq(Date, Seq_position, Callee) :- seq_event(Date, Seq_position, (_, _, Callee, _, _, _, _, _)).
*%

number_of_sequences(N) :- N = #count{D : seq(D, _, _)}.

len_sequence(D, L) :- L = #max{P : seq(D, P, _), seq(D1, _, _), D != D1}, seq(D, _, _).
avg_len_sequences(A) :- S = #sum{L, D : len_sequence(D, L)}, number_of_sequences(N), A = S/N.

max_len_sequences(D, N) :- N = #max{L : len_sequence(_, L)}, len_sequence(D, N).

%*
#show len_sequence/2.
*%
#show number_of_sequences/1.
#show max_len_sequences/2.
#show avg_len_sequences/1.
#show seq/3.
