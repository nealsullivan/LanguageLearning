with open("rosalind_revc.txt", "r") as f:
	source = f.read().strip()
	source = source.upper()
	s_n = source[::-1]

out = ""

for i in s_n:
	if i == "A":
		out += "T"
	elif i == "T":
		out += "A"
	elif i == "C":
		out += "G"
	elif i == "G":
		out += "C"

with open("REVC_solution.txt", "w") as o:
	o.write(out)