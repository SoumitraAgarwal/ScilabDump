import os
from shutil import copy

subdirs = ['Algorithms', 'Preprocessing']

for subdir in subdirs:
	macros = os.listdir('Development/' + subdir)
	for macro in macros:
		files = os.listdir('Development/' + subdir + '/' + macro)
		for file in files:
			if(file[-3:] == 'sce'):
				copy('Development/' + subdir + '/' + macro + '/' + file, 'Copy')
				os.rename('Copy/' + file, 'Copy/' + macro + '_' + file)