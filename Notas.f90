program atun
implicit none
character(len=8):: DNI
character(len=10):: R1, R2, R3, R4, R5, R6, R7, R8, R9, R10
character(len=6) :: Expediente                                          ! Numero de expediente del alumno - 6 caracteres
Character(len=1) :: Curso                                               ! Grupo del alumno - 1 caracter
Character(len=2) :: Clase                                               ! Clase del alumno - 2 caracteres
character(len=500) line
real:: S1, S2, S3, S4, S5, S6, S7, S8, S9, S10
integer,parameter::m=10,n=1
real,dimension(m,n)::A
integer::i,j, X
real    :: Z

open(unit=2,file='solutions2.dat',status='old')
do i=1,m
read(2,*),(A(i,j),j=1,n)
end do


S1= A(1,1)
S2= A(2,1)
S3= A(3,1)
S4= A(4,1)
S5= A(5,1)
S6= A(6,1)
S7= A(7,1)
S8= A(8,1)
S9= A(9,1)
S10= A(10,1)


Write(*,*)"S1= ", S1            ! no es necesario sacarlo por pantalla
Write(*,*)"S2= ", S2
Write(*,*)"S3= ", S3
Write(*,*)"S4= ", S4
Write(*,*)"S5= ", S5
Write(*,*)"S6= ", S6
Write(*,*)"S7= ", S7
Write(*,*)"S8= ", S8
Write(*,*)"S9= ", S9
Write(*,*)"S10= ", S10

close (unit=2)

!______________________________________________________________________!


open(unit=1, file= "p1_T7.txt")
do 

 read(unit=1, fmt ='(A)') line                    !lector primera linea (fila)

 read(*,*)


DNI= line(1:8)
write(*,*) "DNI=", DNI                                                  !Datos del alumno puestos en el examen
Expediente= line(9:14)
write(*,*) "Expediente=", Expediente
Curso= line(15:16)
write(*,*) "Curso=", Curso
Clase= line(17:18)
write(*,*) "Clase=", Clase
R1=line(41:50)    
write(*,*)"Respuesta 1= ", R1                                            !relaccion entre el DNI y la respuesta pregunta 1-10
R2=line(51:60)    
write(*,*)"Respuesta 2= ", R2           
R3=line(61:70) 
write(*,*)"Respuesta 3= ", R3           
R4=line(71:80)    
write(*,*)"Respuesta 4= ", R4          
R5=line(81:90)    
write(*,*)"Respuesta 5= ", R5          
R6=line(91:100)  
write(*,*)"Respuesta 6= ", R6           
R7=line(101:110)  
write(*,*)"Respuesta 7= ", R7           
R8=line(111:120)  
write(*,*)"Respuesta 8= ", R8           
R9=line(121:130)  
write(*,*)"Respuesta 9= ", R9           
R10=line(131:140) 
write(*,*)"Respuesta 10= ", R10        

read(*,*)

 






!_______________________________________________________________________ calculo nota
X= 0
Z= S1-R1
do

if (abs(Z) < 1*10-4) then 

X=X+1

else 
exit
end if 

write(*,*) "Nota=", X


end do
!_______________________________________________________________________
 

 end do
 close (unit=1)
END PROGRAM
