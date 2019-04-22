function f(x,n)
    f=x**2-n
end function

function fp(x)
    fp=2*x
end function

integer n
write(*,*)"Enter n:"
read(*,*)n
if(n<=0)then
    write(*,*)n," must be positive"
    stop
end if
write(*,*)"Enter initial guess:"
read(*,*)x0

i=0
do
    i=i+1
    x=x0-f(x0,n)/fp(x0)
    write(*,*)i,x
    if(abs(x-x0)<0.001)exit
    x0=x
end do
end
