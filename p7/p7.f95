program p7

  implicit none

  integer, parameter :: wp=kind(1.0D0)

  integer :: i, k, primenum
  i = 7
  primenum = 4
  do
    i= i + 2
    do k=3, i-1, 2
      if (mod(i,k)==0) then
        exit
      else if (k >= (i/2)) then
        primenum = primenum + 1
        exit
      endif
    enddo


    if (primenum == 10001) then
      write (*,*) i
      exit
    endif
  enddo
end program
