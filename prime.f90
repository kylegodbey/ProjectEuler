function prime(n)
  implicit none

  integer, parameter :: wp = kind(1.0d0)

  integer(wp), intent(in) :: n

  integer(wp) :: j, prime, root


  root=floor(sqrt(real(n)))

  do j=2, root
    if (mod(n,j)==0) then
      prime = 0
      return
    endif
  enddo

  prime = 1
  return

endfunction
