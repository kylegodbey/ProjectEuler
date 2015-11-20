program p5

  implicit none

  integer(wp) :: i,k
  i=2520

  do
    i = i + 20

    if ((mod(i,20)==0) .AND. mod(i,19)==0) .AND. mod(i,18)==0) .AND. mod(i,17)==0) .AND. mod(i,16)==0) .AND. /
    mod(i,15)==0) .AND. mod(i,14)==0) .AND. mod(i,13)==0) .AND. mod(i,12)==0) .AND. mod(i,11)==0)) then
      write (*,*) i
      exit
    end If

    if (i==1000) write (*,*) i
    if (i==10000) write (*,*) i
    if (i==100000) write (*,*) i
    if (i==1000000) write (*,*) i
    if (i==10000000) write (*,*) i
    if (i==100000000) write (*,*) i


  end do

end program
