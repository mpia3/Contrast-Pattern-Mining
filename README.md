# Contrast-Pattern-Mining
A declarative approach to Contrast Pattern Mining in Answer Set Programming (ASP)

## Contents
- folder 'asp_encodigs': files contrast pattern mining
- folder 'data': datasets used (xls/xlsx format)
- folder 'experimentation_results': files .xlsx with experiments results
- folder 'output_files': instances for contrast pattern mining
- folder 'submodules': python script for contrast pattern mining preprocessing
- 'run_preprocessing_contrast_mining.sh': shell script for preprocessing dataset in ASP transactions syntax
- 'run_scalability_test_contrast_mining.sh': shell script for contrast pattern mining scalability experimentation

## Setup

### Requirements 
Clingo 5.4.0 for stable models/answer sets.

Python:
pyexcel-cli, pyexcel-xls, pyexcel-xlsx (to manage excel files).

For running the solution adopted on Windows:
1. Linux subsystem for Windows (Ubuntu 20.04.4) 
2. Download miniconda and after the installation type on Ubuntu terminal the following commands:
''conda create –n potassco –c conda-forge clingo=5.4.0'' then
''conda activate potassco''
3. pip install pyexcel-cli
4. pip install pyexcel-xls
5. pip install pyexcel-xlsx

for more information see: https://potassco.org/clingo/
