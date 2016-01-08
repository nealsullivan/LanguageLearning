#IPRB_problem.py

given = [2, 3, 4]

given_d = {}

for i in len(given):
	if i == 0:
		given_d["D"] = given[i]
	elif i == 1:
		given_d["h"] = given[i]
	elif i == 2:
		given_d["r"] = given[i]

print(given_d.keys(), "\n", sum(given_d.values()))

total = 0
tracker = {}

for i in given:
	total += i

def first(i, total):
	return i/total

for i in given:
