#gc_problem.py

my_dict = {}

def GC_percent(l):
	count = 0
	for i in l:
		if i == "C" or i == "G":
			count += 1
	return round((count * 100.000000)/(len(l) * 1.000000), 6)

def get_Id(l):
	Id = l[1:]
	return Id

def highest_GC(d):
	
	highest_GC = 0.00
	highest_i = ""

	for i in d:
		if GC_percent(d[i]) > highest_GC:
			
			highest_GC = GC_percent(d[i])
			highest_i = i

	return highest_i + "\n" + str(highest_GC)

with open("rosalind_gc.txt", "r") as src:
	last_Id = get_Id(src.readline().strip())

	running_strand = ""

	my_dict[last_Id] = running_strand

	for line in src:

		line = line.strip()

		if line[0] == ">":

			last_Id = get_Id(line)

			my_dict[get_Id(line)] = ""

		else:
			my_dict[last_Id] += line

#for debugging 
"""
for i in my_dict:
	print (i, " : ", my_dict[i], " : ", str(GC_percent(my_dict[i])))

print()
print(highest_GC(my_dict))
"""

with open("GC_answer.txt", "w") as o:
	o.write(highest_GC(my_dict))