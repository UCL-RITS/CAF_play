module gillie_test
    use gillie_mod
contains
    function test_name() result(success)
        logical :: success
        write(*,*) gillie_name()
        success=(gillie_name()=="Gillie")
    end function
end module