dict1 = {
	's0':{
		'name': 'f1',
		'marks': 50
	},
	's1':{
		'name': 'f2',
		'marks': 86
	},
	's2':{
		'name': 'f3',
		'marks': 34
	},
	's3':{
		'name': 'f4',
		'marks': 56
	}
}
dict2 = {
	'p0':{
		'name': 'g1',
		'marks': 50
	},
	'p1':{
		'name': 'g2',
		'marks': 41
	},
	'p2':{
		'name': 'g3',
		'marks': 78
	},
	'p3':{
		'name': 'g4',
		'marks': 65
	},
	'p4':{
		'name': 'g5',
		'marks': 25
	}
}

# adding another key
dict1['s4']={
		'name': 'f5',
		'marks': 33
	}

# concatenate the two dictionaries
new_dict = {
    'dict1': dict1,
    'dict2': dict2
}

# sort dictionary basis on marks
def mysort(e):
  return e['year']


# print(list(new_dict))
print(list(new_dict.items()).sort(key=mysort))
# for i in list(new_dict.items()):
#     print(i)