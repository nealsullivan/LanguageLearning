# fib problem

with open("rosalind_fib.txt", "r") as f:
	n, k = f.read().split()
	n = int(n)
	k = int(k)

fibs = [1, 1]

for i in range(2, n):
	fibs.append(fibs[(i-1)] + (fibs[(i-2)] * k))

answer = fibs.pop()

with open("fibs_answer.txt", "w") as o:
	o.write(str(answer))