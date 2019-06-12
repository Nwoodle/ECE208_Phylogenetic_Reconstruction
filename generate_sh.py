import os


def generate_sh(thresholds):
	directory = os.getcwd()
	with open('newick.sh','w+') as f:
		f.write('cd {}\n'.format(directory))
		a = [x for x in os.listdir()]
		for x in a:
			if x.endswith('tree.txt') and (not x.startswith('newicked')):
				name = os.path.splitext(x)[0]
				for threshold in thresholds:
					f.write('nw_ed {} \'i & (b<{})\' o | tee newicked_{}_{}.txt\n'.format(x,threshold,round(1 - threshold,3),name))
					# f.write('nw_ed {} \'i & (b<{})\' o | tee newicked_{}_{}.txt\n'.format(x,threshold,round(1 - threshold,3),name))




if __name__ == '__main__':
	thresholds = [0.8,0.9,0.95,0.96,0.97,0.98,0.99,0.999,1]
	generate_sh(thresholds)