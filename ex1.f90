program ex1
implicit none
        ! define variables
        integer, dimension(100) :: n
        integer :: i
        do i = 1,100
                n(i)=i
        enddo
        print*, sum(n)
end program ex1
