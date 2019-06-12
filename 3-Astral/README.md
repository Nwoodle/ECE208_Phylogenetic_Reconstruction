# ECE 208 Gene Tree Contractio in Phylogenetic Reconstruction

## Step 3: ASTRALL-III Species Tree Generation

This folder contains codes for estimating an unrooted species tree given a set of unrooted gene trees. 

### Instruction

1. Collect all 40 contracted genes tree files, put them in ```/newick```.

2. In the subfolder named newick, there is a script file ```/newick/head.sh```, which will fecth the top 50, top 200, top 500 and top 1000 genes and put name in a seperate new files, respectively. Just run ./head.sh in terminal Then 160 new newicked gene trees files with different top K number(K=50, 200, 500, 1000) are generated and saved in subfolder named newicktop. 
   - if new data with different threshold provided, change line 50 of ```/newick/head.sh``` to corresponding threshold values.

3. Run ```generate_species_tree.sh``` to generate all the species trees with different sequence lengths, gene tree numbers and thresholds.
   - if new data with different threshold provided, change line 5 of ```/generate_species_tree.sh``` to corresponding threshold values.

4. All the result files after running Astral tools will be saved in the subfolder named newickresult.

### Contents
- ```/newick/head.sh``` **Run first to generate files with different gene tree numbers**
- ```generate_species_tree.sh``` **Run to generate species trees**
- ```astral.5.6.3.jar``` Astral-III runnable file
- ```/newick``` Data folder for contracted trees
- ```/newicktop``` Generated top N gene trees file folder
- ```/newickresult``` Result folder
- ```/lib``` library folder of Astral-III

