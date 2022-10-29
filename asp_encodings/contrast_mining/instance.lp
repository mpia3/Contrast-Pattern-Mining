%*
The data can be viewed as the result of discretizing5 each gene
into two intervals denoted by L (low) and H (high), 
of microarray gene expression data.
*%

%*
class(t1, cancer). db(t1, l). db(t1, h). db(t1, l). db(t1, h).
class(t2, cancer). db(t2, l). db(t2, h). db(t2, l). db(t2, l).
class(t3, cancer). db(t3, h). db(t3, l). db(t3, l). db(t3, h).
class(t4, cancer). db(t4, l). db(t4, h). db(t4, h). db(t4, l).

class(t5, normal). db(t5, h). db(t5, h). db(t5, l). db(t5, h).
class(t6, normal). db(t6, l). db(t6, h). db(t6, h). db(t6, h).
class(t7, normal). db(t7, l). db(t7, l). db(t7, l). db(t7, h).
class(t8, normal). db(t8, h). db(t8, h). db(t8, h). db(t8, l).
*%

class(t1, cancer). db(t1, g1(l)). db(t1, g2(h)). db(t1, g3(l)). db(t1, g4(h)).
class(t2, cancer). db(t2, g1(l)). db(t2, g2(h)). db(t2, g3(l)). db(t2, g4(l)).
class(t3, cancer). db(t3, g1(h)). db(t3, g2(l)). db(t3, g3(l)). db(t3, g4(h)).
class(t4, cancer). db(t4, g1(l)). db(t4, g2(h)). db(t4, g3(h)). db(t4, g4(l)).

class(t5, normal). db(t5, g1(h)). db(t5, g2(h)). db(t5, g3(l)). db(t5, g4(h)).
class(t6, normal). db(t6, g1(l)). db(t6, g2(h)). db(t6, g3(h)). db(t6, g4(h)).
class(t7, normal). db(t7, g1(l)). db(t7, g2(l)). db(t7, g3(l)). db(t7, g4(h)).
class(t8, normal). db(t8, g1(h)). db(t8, g2(h)). db(t8, g3(h)). db(t8, g4(l)).
