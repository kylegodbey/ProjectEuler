top=0
def is_pal(n):
	pal_str = str(n)
	if pal_str[:1] == pal_str[5:6] and pal_str[1:2] == pal_str[4:5] and pal_str[2:3] == pal_str[3:4]:
		return True
	return False

for i in range(333,1000):
	for j in range(333,1000):
		a = i*j
		if is_pal(a) and a > top:
			top = a
			x=i
			y=j
		j+=1
	i += 1


print top
print x
print y
