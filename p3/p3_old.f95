program p3

  implicit none

  integer, parameter :: wp = kind(1.0D0)
  integer, external :: prime
  integer(wp) :: i,k,num, primelarge,nmax
  num = 600851475143
  nmax = floor(sqrt(real(num)))

  do i=3, nmax, 2
    if(mod(num,i)==0 .AND. prime(i) == 1) primelarge = i
  enddo



write (*,*) primelarge

end program p3
