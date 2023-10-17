# Workflow for data compilation:

1. Run 'compile-insitu-data' (Python) to get a csv file with all the info from the initial datasets in the papers

2. Run 'add-WOA-data' (Python) to add T, S, O2 and nutrients (PO4, SiOH4) data and standard deviation for T, S, O2 and generate a file that can be used as input for CANYON-B.

3. If WOA data significantly changed for some reason (T, S, O2 data or year and month, location (lat, lon), order or number of measurements changed), then CANYON-B has to be re-run

4. For CANYON-B, run 'CANYONB_compiled_WOA' (Matlab, CANYON-B needs to be installed). For the uncertainty calculations later, dT, dS, dO2 also need to be re-run.

5. Run 'add-CANYONBresults-and-PyCO2Sys' (Python) to get carbonate system and calculate Omega. 

6. Run 'uncertainty-calculations' (Python) to add uncertainty DIC, TA, pH, and for Omega. 