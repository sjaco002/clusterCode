log=open("../asterixdb/logs/cc.log")
i=0
times = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
for line in log:
	if (len(line.split(" ")) < 14):
		continue
	if (line.split(" ")[13] == "Took"):
		print line
		i=i+1
		times[i%20] = int(line.split(" ")[14])

print times
total = 0
for item in times:
	total = total + item
print str(total/20)
