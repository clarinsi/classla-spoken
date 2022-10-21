import sys
for line in sys.stdin:
	if '\t' in line:
		line=line.split('\t')
		line[1]=line[1].lower()
		if ' ' in line[2]:
			continue
		if line[6]=='-1':
			line[6]='_'
		line='\t'.join(line)
	sys.stdout.write(line)
