
# Description of repository

### compilation
Compilation of the dataset and estimation of Ω, as described in the Methods (Section 2.1 and 2.2). Contains a sparate README for the workflow.

### validation
Validation of our method to estimate Ω, described and shown in SI.

- **glodap:** Validation of method using recent GLODAPv2.2022 data

- **cdisk4:** Comparison to measured values from the CDisK-IV cruise


### analysis
Analysis of the compiled dataset (Section 3). 

- **dissolution-above-saturation-horizon:** Investigating dissolution above the saturation horizon (Section 3.3.1)

- **omega-crit:** Investigating the existence of two dissolution regimes (Section 3.3.2)


### xgboost
Machine learning part (Feature Importance) as described in the Methods (Section 2.3) and discussed in Section 3.2.

Note that there is a separate environment.yml file for all jupyter notebooks in this folder.


### woa18
For part of the code, data from World Ocean Atlas 2018 is required. To run the code, download the files that are listed in 'required-woa18-files.txt' and save them locally. Copy the path to the folder with those files into the textfile 'path-to-woa18-files.txt'. 



## Code location for figures

- **Figure 3:** analysis/map-experiments.ipynb

- **Figures 4, 5, 6, S12:** analysis/overview-compilation.ipynb

- **Figures 7, 9, S14, S15:** xgboost/interpret-model-pfi-pdp.ipynb

- **Figure 8:** xgboost/plot-model-prediction.ipynb

- **Figures 10, 11, S16:** analysis/dissolution-above-saturation-horizon/m77-dissolution.ipynb

- **Figures 12, 13, S17:** analysis/omega-crit/Omega-crit-linear-regression-erf.ipynb

- **Figure 14:** analysis/omega-crit/different-omega-crit.ipynb

- **Figures S1, S2, S3, S4, S5, S6:** validation/glodap/glodap22-recent-woa-canyonb-comparison.ipynb

- **Figure S7, S8:** validation/nutrient-comparison-WOA-CANYONB.ipynb

- **Figures S9, S10:** validation/cdisk4/cdisk4-ctd-woa-canyonb-data-comparison.ipynb

- **Figure S11:** validation/cdisk4/cdisk4-ctd-woa-canyonb-data-comparison.ipynb

- **Figure S12:** analysis/experiment-conditions-representative.ipynb

- **Figures S13:** validation/uncertainty-calculations.ipynb




 
