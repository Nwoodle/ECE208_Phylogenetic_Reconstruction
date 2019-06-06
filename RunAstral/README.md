Run Astral tools for estimating an unrooted species tree given a set of unrooted gene trees. 

1. Collect all 40 newicked genes tree files that set contracted threshold range from 0.001 to 0.5, put them in subfolder named newick.

2. In the subfolder named newick, there is a script file named head.sh, which will fecth the top 50, top 200, top 500 and top 1000 genes and put name in a seperate new files, respectively. Just run ./head.sh in terminal Then 160 new newicked gene trees files with different top K number(K=50, 200, 500, 1000) are generated and saved in subfolder named newicktop. 

3. There are also four script files in the RunAstral folder, named test1.sh, test2.sh, test3.sh, test4.sh, each one of the will run Astral tools in 40 different newicked gene trees files from subfolder newicktop, whcih means we can run Astral tools in parallel, by running four script files at the same time. Just run ./test1.sh for example in terminal.

4. All the result files after running Astral tools will be saved in the subfolder named newick_astral_result. 

