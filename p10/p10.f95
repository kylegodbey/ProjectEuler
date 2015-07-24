program p10

  implicit none

  integer, parameter :: wp = kind(1.0d0)

  integer, external :: prime

  integer(wp) :: n,sum
  sum = 17
  do n=11,2000000
    if (prime(n) == 1) sum = sum + n
  enddo

  print *, sum
  
endprogram
