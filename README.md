# ECE 208 Gene Tree Contractio in Phylogenetic Reconstruction

> * Haoran Wu
> * Daoyu Li
> * Qinyan Li
> * Lin Huang

We used aLRT as the branch test for gene trees and compare RF distances of different thresholds given by the aLRT test.

This repository contains all of our codes regarding to our paper.

## Pipeline

Our project has four step:

### Step 1: PhyML Branch Test
```\1-PhyML```
Performing the PhyML test to the first set ```01``` of the ```S101``` dataset with all sequence lengths.

### Step 2: Contract tree
```\2-Contract_Tree```
Contracting gene trees according to its branch length.

### Step 3: ASTRALL-III Species Tree Generation
```\3-Astral```
Estimating an unrooted species tree given a set of unrooted gene trees. 

### Step 4: Compute RF distance and Plot the result
```\4-RF_result```
Computing RF distance and plotting the result

#### Go to the corresponding folder for detail instuctions.

#### Result:
![image](https://github.com/Nwoodle/ECE208_Phylogenetic_Reconstruction/raw/master/result.png)
