# Contrast-Pattern-Mining
A declarative approach to Contrast Pattern Mining in Answer Set Programming (ASP)

## Contents
- folder 'asp_encodigs': contrast pattern mining encoding
- folder 'examples': contrast pattern mining examples

## Setup

### Requirements 
Clingo 5.4.0 for stable models/answer sets.

For running the solution adopted on Windows:
1. Linux subsystem for Windows (Ubuntu 20.04.4) 
2. Download miniconda and after the installation type on Ubuntu terminal the following commands:
''conda create –n potassco –c conda-forge clingo=5.4.0'' then
''conda activate potassco''

for more detail about clingo tool see: https://potassco.org/clingo/

## Example
From the command line run: "clingo asp_encodings/absolute_emerging.lp examples/normal_cancer_db.lp -c minSup=2 -c maxLength=3 -c class=normal -c minDiff=0 -c minLength=1 -n0"

Output like this:
"clingo version 5.4.0
  Reading from absolute_emerging.lp ...
  Solving...
  Answer: 1
  in_pattern(g2(h)) absolute_diff(0)
  Answer: 2
  in_pattern(g1(h)) absolute_diff(1)
  Answer: 3
  in_pattern(g2(h)) in_pattern(g1(h)) absolute_diff(2)
  Answer: 4
  in_pattern(g4(h)) absolute_diff(1)
  Answer: 5
  in_pattern(g3(l)) absolute_diff(1)
  Answer: 6
  in_pattern(g3(l)) in_pattern(g4(h)) absolute_diff(0)
  Answer: 7
  in_pattern(g3(l)) in_pattern(g1(h)) absolute_diff(0)
  Answer: 8
  in_pattern(g4(h)) in_pattern(g1(h)) absolute_diff(0)
  Answer: 9
  in_pattern(g3(l)) in_pattern(g4(h)) in_pattern(g1(h)) absolute_diff(0)
  Answer: 10
  in_pattern(g2(h)) in_pattern(g4(h)) absolute_diff(1)
  Answer: 11
  in_pattern(g2(h)) in_pattern(g3(l)) absolute_diff(1)
  Answer: 12
  in_pattern(g2(h)) in_pattern(g3(l)) in_pattern(g4(h)) absolute_diff(0)
  Answer: 13
  in_pattern(g2(h)) in_pattern(g3(l)) in_pattern(g1(h)) absolute_diff(1)
  Answer: 14
  in_pattern(g2(h)) in_pattern(g4(h)) in_pattern(g1(h)) absolute_diff(1)
  Answer: 15
  in_pattern(g4(l)) absolute_diff(1)
  Answer: 16
  in_pattern(g2(h)) in_pattern(g4(l)) absolute_diff(1)
  Answer: 17
  in_pattern(g4(l)) in_pattern(g1(h)) absolute_diff(1)
  Answer: 18
  in_pattern(g2(h)) in_pattern(g4(l)) in_pattern(g1(h)) absolute_diff(1)
  Answer: 19
  in_pattern(g3(h)) absolute_diff(1)
  Answer: 20
  in_pattern(g2(h)) in_pattern(g3(h)) absolute_diff(1)
  Answer: 21
  in_pattern(g1(h)) in_pattern(g3(h)) absolute_diff(1)
  Answer: 22
  in_pattern(g2(h)) in_pattern(g1(h)) in_pattern(g3(h)) absolute_diff(1)
  Answer: 23
  in_pattern(g4(l)) in_pattern(g3(h)) absolute_diff(0)
  Answer: 24
  in_pattern(g2(h)) in_pattern(g4(l)) in_pattern(g3(h)) absolute_diff(0)
  Answer: 25
  in_pattern(g4(l)) in_pattern(g1(h)) in_pattern(g3(h)) absolute_diff(1)
  Answer: 26
  in_pattern(g1(l)) in_pattern(g2(l)) absolute_diff(1)
  Answer: 27
  in_pattern(g1(l)) in_pattern(g3(l)) in_pattern(g2(l)) absolute_diff(1)
  Answer: 28
  in_pattern(g1(l)) in_pattern(g4(h)) in_pattern(g2(l)) absolute_diff(1)
  Answer: 29
  in_pattern(g1(l)) absolute_diff(1)
  Answer: 30
  in_pattern(g1(l)) in_pattern(g2(h)) absolute_diff(2)
  Answer: 31
  in_pattern(g1(l)) in_pattern(g4(h)) absolute_diff(1)
  Answer: 32
  in_pattern(g1(l)) in_pattern(g3(l)) absolute_diff(1)
  Answer: 33
  in_pattern(g1(l)) in_pattern(g3(l)) in_pattern(g4(h)) absolute_diff(0)
  Answer: 34
  in_pattern(g1(l)) in_pattern(g2(h)) in_pattern(g4(h)) absolute_diff(0)
  Answer: 35
  in_pattern(g1(l)) in_pattern(g3(h)) absolute_diff(0)
  Answer: 36
  in_pattern(g1(l)) in_pattern(g2(h)) in_pattern(g3(h)) absolute_diff(0)
  Answer: 37
  in_pattern(g1(l)) in_pattern(g4(h)) in_pattern(g3(h)) absolute_diff(1)
  Answer: 38
  in_pattern(g4(h)) in_pattern(g3(h)) absolute_diff(1)
  Answer: 39
  in_pattern(g2(h)) in_pattern(g4(h)) in_pattern(g3(h)) absolute_diff(1)
  Answer: 40
  in_pattern(g2(l)) absolute_diff(0)
  Answer: 41
  in_pattern(g3(l)) in_pattern(g2(l)) absolute_diff(0)
  Answer: 42
  in_pattern(g4(h)) in_pattern(g2(l)) absolute_diff(0)
  Answer: 43
  in_pattern(g3(l)) in_pattern(g4(h)) in_pattern(g2(l)) absolute_diff(0)
  SATISFIABLE

  Models       : 43
  Calls        : 1
  Time         : 0.050s (Solving: 0.01s 1st Model: 0.00s Unsat: 0.00s)
  CPU Time     : 0.021s"
  
- normal_cancer_db.lp: problem definition
- absolute_emerging.lp: contrast patterns generator

## Acknowledgments
This is an extract from Gioacchino Sterlicchio's master degree thesis in Cybersecurity at University of Bari. This work is based from COST Action 17124 ``Digital forensics: evidence analysis via intelligent systems and practices (DigForASP)'', supported by COST (European Cooperation in Science and Technology). Special thanks to Prof. Francesca Alessandra Lisi, from University of Bari, supervisor of the master's degree thesis.
