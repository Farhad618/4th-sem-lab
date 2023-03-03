# using type() function display different basic data types in python
data = [1, 1.5, 'name', True, [], {}, ()]

for d in data:
	print(str(d) + ' is ' + str(type(d).__name__))
