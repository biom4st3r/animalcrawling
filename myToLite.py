import sys
import re

IF = sys.argv[1]
OF = sys.argv[2]
PATTERN = re.compile('VARCHAR\([0-9]+\)')

with open(OF, 'w+') as outfile:
    with open(IF, 'r') as infile:
        data = infile.read()
        data = data.replace('INT', 'INTEGER')
        data = data.replace('AUTO_INCREMENT','')
        data = data.replace('REFERENCE','REFERENCES')
        data = data.replace("FLOAT","REAL")
        data = data.replace("TINYINTEGER","INTEGER")
        print(PATTERN.findall(data))
        data = PATTERN.sub('TEXT', data)
        outfile.write(data)
