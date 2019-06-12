import os
import sys
usage = "usage: %s search_text replace_text [infilename [outfilename]]" % os.path.basename(
    sys.argv[0])

if len(sys.argv) < 3:
    print(usage)

else:
    stext = sys.argv[1]
    rtext = sys.argv[2]

    if len(sys.argv) > 4:
        input = open(sys.argv[3])
        output = open(sys.argv[4], 'w')

        for s in input:
            output.write(s.replace(stext, rtext))
        print('Replaced!')

        input.close()
        output.close()