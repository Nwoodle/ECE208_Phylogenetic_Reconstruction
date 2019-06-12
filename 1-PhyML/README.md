# ECE 208 Gene Tree Contractio in Phylogenetic Reconstruction

## Step 1: PhyML Branch Test

This folder contains codes for performing the PhyML test to the first set ```01``` of the ```S101``` dataset with all sequence lengths.

### Insturction
- Run the *.sh file according to your OS.

### Environment
- Windows, Linux or Mac.
- Python3.x

### Contents

- ```perfom_phyml_01_linux.sh``` **script file for prforming aLRT test on Linux**
- ```perfom_phyml_01_windows.sh```**script file for prforming aLRT test on Windows (Git Bash)**
- ```perfom_phyml_01_mac.sh``` **script file for prforming aLRT test on Mac**
- ```S101\01``` The first subset ```01``` of the S101 dataset.(Not included)
- ```phyml.exe``` phyml for windows
- ```PhyML_linux``` phyml for linux
- ```PhyML_mac``` phyml for mac
- ```replace.py``` Sequence preprocessing file for replacing the *_0_0 of each genome name to mach the gene tree name. Will be automatically runned by script file.