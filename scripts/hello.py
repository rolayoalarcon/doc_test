print('hello, this is python')

print('\treading file')
with open('/input/prueba.txt') as file:
	lines = file.readlines()

print('This is your file...')
for l in lines:
	print('\t\t\t{}'.format(l))

lines.append('SALU2 DE ROBERGAS...')

print('Writing new modified file...')
with open('/output/prueba-mod.txt', 'w') as file:
	file.write('\n'.join(lines))