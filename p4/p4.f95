program p4

  implicit none

  integer, parameter :: wp = kind(1.0D0)

  real(wp) :: num, pali
  integer(wp) :: i,k,j,l


  do i=0,99
    do k=0,99
      j=900
      l=900
      j = i + j
      l = k + l
      num=j*l
      if (floor(num/10**5) == num - 10*floor(num/10)) then
        if ((floor(num/10**4) - 10*floor(num/10**5)) == (floor(num/10**1) - 10*floor(num/10**2))) then
          if ((floor(num/10**3) - 10*floor(num/10**4)) == (floor(num/10**2) - 10*floor(num/10**3))) then
            pali = num
            write (*,*) pali
            exit
          endif
        endif
      endif
    end do
  end do

end program
