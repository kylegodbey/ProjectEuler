program p12
  implicit none

  integer, parameter :: wp=kind(1.0d0)

  integer(wp) :: j, n, summ, numm, root

  n = 5

  do
    summ = 0
    numm = 0
    do j=1,n
      summ = summ + j
    enddo
    root = floor(sqrt(real(summ)))

    do j=1,root
      if (mod(summ,j)==0 .AND. j==root) numm = numm - 1
      if (mod(summ,j)==0) numm = numm + 2
    enddo

    if (numm > 500) then
      print *, " The nth triangle number: "
      print *, n
      print *, " The actual number: "
      print *, summ
      print *, " How many divisors it has: "
      print *, numm
      exit
    endif

    n = n + 1

  enddo
endprogram
