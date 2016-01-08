# Rosalind RNA problem

with open("rosalind_rna.txt", "r") as source:
	my_string = source.read().strip()

output_string = ""

for i in my_string:
	if i == "T":
		output_string += "U"
	else:
		output_string += i

#print(output_string)

destination = open("rosalind_rna_solution.txt", "w")

destination.write(output_string)

destination.close()