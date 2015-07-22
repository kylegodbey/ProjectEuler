program p6

  implicit none

  integer, parameter :: wp=kind(1.0D0)

  integer :: i, sqnum, tbsq, diff
  sqnum = 0
  tbsq = 0
  do i=1,100
    sqnum = sqnum + i**2
    tbsq = tbsq + i
  end do

  tbsq = tbsq**2

  diff = tbsq - sqnum

  write (*,*) diff

end program
