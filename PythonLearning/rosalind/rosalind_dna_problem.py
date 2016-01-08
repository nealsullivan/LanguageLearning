# dna info problem
with open("rosalind_dna.txt", "r") as my_file:
	my_string = my_file.read().strip()

my_dict = {}

for i in my_string:
	if i in my_dict:
		my_dict[i] += 1
	else:
		my_dict[i] = 1

rtrn_string = ""

for i, j in sorted(my_dict.items()):
	rtrn_string += (" " + str(j))
	
print (rtrn_string)