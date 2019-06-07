import os


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


seq_len = '200'
ntree = 'top50'
dir1 = 'result_eval'
dir2 = 'baseline_eval'
print(get_RFdata(ntree, seq_len, dir2))
