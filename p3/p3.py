a = 600851475143**0.5
b=600851475143
i=1

def is_prime(n):
	d=2
	while d*d <= n:
		if n%d == 0:
			return False
		d += 1
	return True

while i < a:
	if b%i == 0:
		top = i
		if is_prime(i):
			topprime = i
	i += 1

print topprime

	
