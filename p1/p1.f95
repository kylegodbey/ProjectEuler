  program p1



  implicit none
  integer :: k, summ
  summ = 0
  do k=3, 999
    if ((modulo(k,3)==0) .AND. (modulo(k,5) == 0))  then
      summ = summ + k
    else if (modulo(k,3)==0) then
      summ = summ + k
    else if (modulo(k,5)==0) then
      summ = summ + k
    endif
  end do

  write(*,*) summ

end program p1
