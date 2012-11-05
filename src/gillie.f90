module gillie_mod
    implicit none
contains
    function gillie_name() result(myname)
        character(:), allocatable :: myname ! Use fortran 2003 allocatable return, needs gfortran 4.6 or better
        myname="Gillie"
    end function
end module