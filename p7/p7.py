j=1
i=2

def is_prime(n):
	d=2
	while d*d <= n:
		if n%d == 0:
			return False
		d += 1
	return True

while i:
	if is_prime(i):
		top = i
		j+=1
		if j==10002:
			break
	i+=1
print top
