import os
import matplotlib.pyplot as plt
import numpy as np


def get_RFdata(ntree, seq_len, dir):
    '''
    get selected data from directory, given the 
    number of trees and sequence lengths, return RFs with all 
    sequence lengths.
    ntree: str, e.g. 'top50' 
    seq_len: str 
    output: dictionary where keys are thresholds and values are RF values.
    '''
    RF = {}
    for file in os.listdir(dir):
        decompf = file.split('_')
        if file[-3:] == 'txt' and seq_len == decompf[5] and ntree == decompf[
                -1].split('.')[0]:
            f = open(dir + "/" + file)
            content = f.readlines()
            thres = decompf[2]
            RF[thres] = float(content[1].split('\t')[1].split('\n')[0]) / 196
    return RF


seq_len_lst = ['200', '400', '800', '1600']
ntree_lst = ['top50', 'top200', 'top500', 'top1000']
dir1 = 'result_eval'
dir2 = 'baseline_eval'
thres = sorted([0.1, 0.01, 0.001, 0.2, 0.02, 0.03, 0.04, 0.05])

clr_lst = ['b', 'y', 'g', 'c']

fig = plt.figure()
ax0 = fig.add_subplot(111, frame_on=False, xticks=[],
                      yticks=[])  # creating a single axes
for j in range(4):
    ntree = ntree_lst[j]
    ax = fig.add_subplot(1, 4, j + 1)
    avg = np.zeros(8)  # same length as number of threshold
    for i in range(4):
        seq_len = seq_len_lst[i]
        dic = get_RFdata(ntree, seq_len, dir1)
        bl = get_RFdata(ntree, seq_len, dir2)
        y = []
        for k in sorted(dic, key=lambda x: x):
            y.append(dic[k])
        y = y[1:]
        avg += np.array(y)
        x_bl = [-1, 8]
        y_bl = [bl['non'], bl['10']]
        ax.set_title('ntree=' + ntree)
        ax.plot(y, color=clr_lst[i], linestyle='--', marker='.', label=seq_len)
        ax.scatter(x_bl, y_bl, color=clr_lst[i], marker='.')
    avg /= 4
    ax.plot(list(avg), color='k', linestyle='-', marker='.', label='average')
    ax.set_ylim(0.04, 0.18)
    xpos = list(range(-1, 9))
    group_labels = [str(i) for i in thres]
    group_labels = ['non(*)'] + group_labels + ['10(*)']
    ax.set_xticks(xpos)
    ax.set_xticklabels(group_labels, rotation=45)
ax.legend(loc='upper right', fontsize='small')
ax0.set_xlabel('contraction threshold')
ax0.xaxis.set_label_coords(0.5, -0.11)
ax0.set_ylabel('RF value')
ax0.yaxis.set_label_coords(-0.05, 0.5)
plt.show()
