program p3

  implicit none

  integer, parameter :: wp = kind(1.0D0)

  real(wp) :: n, nmax, biggest, num
  integer(kind=8) :: i,k
  num = 600851475143.0_wp
  nmax = num/2.0
  write(*,*) floor(nmax,8)
  write(*,*) "hey"
  i=3
  do while (i < floor(nmax,8))
    if (int(modulo(num,real(i)))==0) then

      do k=3,floor(real(i)/2,8),2
        if (modulo(i,k)==0) then
          !write (*,*) "made it"
          exit
        else if (k==floor(real(i)/2,8) .OR. k==floor(real(i)/2,8)-1) then
          write(*,*) i
          biggest = real(i)
        endif
      end do
    endif
    i = i + 2
  end do

write (*,*) biggest

end program p3
