import json

with open("json_test.txt", "r") as f:
	stuff = []
	for line in f:
		stuff.append(line.strip())

print("printing straight from the file's output", "\n")
for i in stuff:
	print(i)

print("\n""I think that's all that's in the json file", "\n")

listODicts = json.loads(stuff[0])

dic1 = listODicts[0]

print(dic1.keys())

tupleTable = []

for i in listODicts:
	tupleTable.append((i["PartyId"], i["Type"]))

print(tupleTable)