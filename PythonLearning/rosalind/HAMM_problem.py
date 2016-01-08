#HAMM_problem.py
with open("rosalind_hamm.txt", "r") as s:
	s_l = []

	for line in s:
		s_l.append(line.strip())

# for troubleshooting
"""
for i in s_l:
	print (i)
"""

def hamm_dist(l1, l2):
	count = 0

	if len(l1) == len(l2):
		for i in range(len(l1)):
			if l1[i] != l2[i]:
				count += 1

	return str(count)

with open("HAMM_solution.txt", "w") as o:
	o.write(hamm_dist(s_l[0], s_l[1]))