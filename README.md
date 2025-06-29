# macroeconomics
This repository contains all necessary files to run the climate change EDIAM model.

Based on the framework created by Edmundo Molina-Pérez et al (2020), the following four scripts will be found:

- ClimateCalibration.r: describes the method for determining model's climate coefficients using GCMs raw data
- Ediam_vFrontiers.r : contains mathematical structure of Ediam model an describes how the input from experimental design is processed into the model to estimate the output used in the analysis
- Main_vFrontiers.r : describes the routines for a) creating the experimental design, b) estimating the optimal policy response across policy regimes, and c) data post-processing for scenario discovery and data visualization.
- sdprim_vFrontiers.r : describes routines and analyses carried out for applying the Patient Rule Induction Method (PRIM) algorithm to experimental results.

More information can be found here: https://github.com/emolinaperez/Ediam_vFrontiers/blob/Master/README.md

