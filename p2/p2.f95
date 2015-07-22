program p2

  implicit none
  integer :: i, k, summ
  i=1
  k=1
  summ=0
  do while (i < 4000000)

    i = i + k
    k = i - k
    if (modulo(i,2)==0) summ = summ + i

  end do

  write(*,*) summ

end program
