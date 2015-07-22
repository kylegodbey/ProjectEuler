program p5

  implicit none

  integer, parameter :: wp = kind(1.0D0)

  integer(wp) :: num,i,k
  i=400

  do
    i = i + 20
    num = 0
    do k=1,20
      if (mod(i,k)==0) num = num + 1
    end do

    if (i==1000) write (*,*) i
    if (i==10000) write (*,*) i
    if (i==100000) write (*,*) i
    if (i==1000000) write (*,*) i
    if (i==10000000) write (*,*) i
    if (i==100000000) write (*,*) i


    if (num==20) then
      write (*,*) i
      exit
    endif

  end do

end program
