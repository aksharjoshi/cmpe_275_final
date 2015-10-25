import sys
import windrose


print 'Number of arguments:', len(sys.argv), 'arguments.'
print('Argument List: %s' % str(sys.argv))


for x in sys.argv:
	print(x)
	windrose.readMesoData(x)

windrose.displayArray()

