program p9

  implicit none

  integer, parameter :: wp = kind(1.0D0)
  integer(wp) :: a,b,c,sum,sum1,final

  do a = 200, 332
    b = 349 + 1

    sum = floor(real((1000-a)/2))
    do
      c = 1000 - a- b

      do
        if ((a + b + c == 1000) .AND. (a**2 + b**2 == c**2)) then
          final = a*b*c
          write (*,*) final
          exit
        endif
        
        c = c + 1
        if (c==(1000 - a - b) .OR. c > (1000-a-b)) then
          exit
        endif
      enddo

      b = b + 1

      if (b==sum) then
        !write(*,*) 1000000000+b
        exit
      endif
    enddo
  enddo


end program
