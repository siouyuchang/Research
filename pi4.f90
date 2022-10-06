program pi
	  implicit none
	  character*20 :: file_name
	  integer :: i
	  real :: area
	  real :: rerror
	  real :: sub
	  real, parameter :: pii = 4.0*atan(1.0)
	  integer, parameter :: NMAX = 8
	  integer, dimension(NMAX) :: n_iteration
	  n_iteration = (/10, 100, 1000, 10000, &
				100000, 1000000, 10000000, 100000000/)
	  file_name = "pi_error.dat"
	  open(unit=1,file=trim(file_name))
	  write(1,11) "# ", "N", "relative errors"
	  do i =1,NMAX
		area=0.
		call compute_integral(n_iteration(i),area)
	  	rerror=((2.*area)-pii)/pii
		write(1,12) n_iteration(i), rerror
	  enddo
	  close(1)
11 format(a2, a10, a24)
12 format(2x, i10, e24.14)
end program pi
real function my_func(x)
	  real:: x
	  my_func=sqrt(1.0-x**2.0)
	  return
end function
subroutine compute_integral(N,A)
	  implicit none
	  integer,intent(in) :: N
	  real,intent(inout) :: A
        integer :: i
	  real :: h
	  real :: dA
	  real :: x
	  real :: dx
	  real :: my_func
	  dx=2./N
        do i =1,N
      	    x=-1.+dx*(i-0.5)
                h=my_func(x)
                dA=dx*h
                A=A+dA
        enddo
	  return
end subroutine compute_integral












