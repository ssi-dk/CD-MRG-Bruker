# CD-MRG-Bruker
Here we store scripts and documentation for our Bruker software

## Bruker Data Analysis (DA)
Tasks in Data Analysis (DA) can be automated using Bruker's Visual Basic Script (VBS) integration. 

To process loaded files in DA using scripts,

1) click ***Method*** -> ***Open Script Only ...***;
2) Click ***Method*** -> ***Run***

We have scripts to perform the following on files loaded into DA:

- [Export Bruker files to mzML](https://github.com/ssi-dk/CD-MRG-Bruker/blob/main/DataAnalysis/exportMzML.dascript) 

- [Recalculate linespectra from profile spectra](https://github.com/ssi-dk/CD-MRG-Bruker/blob/main/DataAnalysis/recalc_linespectra.dascript) 

### Batch processing
Bruker DataAnalysis is not designed to handle multiple files; loading more than 10-20 files typically causes the program to freeze. If you want to process multiple data files (i.e. a batch) using DA, the best option is to use the ProcessWithMethod  (AutomationEngine script) program which you can start in DA by clicking ***Tools*** -> ***ProcessWithMethod*** 

In ProcessWithMethod you load a method file that you want to apply to all files in the Analysis list, which you define by clicking on the select button

#### Editing the method file
Open Bruker Compass MethodEditor and load the method file. Click Method -> Script to view the command run for each file, and click Method -> Parameters to view and set the parameters used by the commands. For instance, to change the parameters for the Sum Peak algorithm used to compoute the line spectra, open the file recalc_linespectra.m and then click Method -> Parameters and then click on the MassList->Sum Peak  section as shown below

[](/readme_assets/compass_parameters_sumpeak.PNG)





