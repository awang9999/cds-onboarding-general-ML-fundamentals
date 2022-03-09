#!/bin/bash

jupyter nbconvert --to html --execute general_ml_solutions.ipynb
cp general_ml_solutions.html /sample_volume/general_ml_solutions.html
python -m http.server $EXPOSED_PORT 
