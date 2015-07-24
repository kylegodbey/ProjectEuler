program p14
  implicit none

  integer, parameter :: wp=kind(1.0d0)

  integer(wp) :: j, maxchain, chainlen, temp, maxnum, maxnum1

  maxnum = 0
  maxchain = 0

  do j=3, 999999
    chainlen = 0
    temp = j
    do
      if(temp>maxnum1) maxnum1=temp
      chainlen = chainlen + 1
      if(temp==1) exit

      if(mod(temp,2)==0) then
        temp = temp / 2
      else
        temp = 3 * temp + 1
      endif
    end do
    if (chainlen > maxchain) then
      maxchain = chainlen
      maxnum = j
      !print *, "Current max chain from n="
      !print *, maxnum
      !print *, "Chain length:"
      !print *, maxchain
    endif
  enddo

  print *, "Number with the max chain length:"
  print *, maxnum
  print *, "Chain length:"
  print *, maxchain
  print *, "Highest number reached:",maxnum1

endprogram
