Program notas

implicit none

character(len=8):: DNI                                                  ! DNI del alumno - 8 caracteres

character(len=10):: S1, S2, S3, S4, S5, S6, S7, S8, S9, S10             ! Respuestas preguntas - 10 caracteres

character(len=10):: R1, R2, R3, R4, R5, R6, R7, R8, R9, R10

character(len=6) :: Expediente                                          ! Numero de expediente del alumno - 6 caracteres

Character(len=1) :: Curso                                               ! Grupo del alumno - 1 caracter

Character(len=2) :: Clase                                               ! Clase del alumno - 2 caracteres

integer :: udata , EoF , N 
real    :: D
character(len=500) line


open(file= "p1_T7.txt", newunit = udata)


 do 
 read(unit = udata, iostat = EoF , fmt = '(A)') line                    !lector primera linea (fila)

 
write(*,*) line


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


read (*,*)

if (EoF<0)then                                                          !if (EoF>-1) termina el bucle tras solo un ciclo
        exit
    else
    end if


 end do


!_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_!
!_______________________________________________!
 
 
 open(file= "solutions.csv", newunit = udata)

do

 read(unit = udata, iostat = EoF , fmt = '(A)') line   !lector primera linea (fila)

 
write(*,*) line

S1=line(41:50)    
write(*,*)"Respuesta Correcta 1= ", S1           !relaccion entre el DNI y la respuesta pregunta 1

S2=line(51:60)    
write(*,*)"Respuesta Correcta 2= ", S2           !relaccion entre el DNI y la respuesta pregunta 2

S3=line(61:70)    
write(*,*)"Respuesta Correcta 3= ", S3           !relaccion entre el DNI y la respuesta pregunta 3

S4=line(71:80)    
write(*,*)"Respuesta Correcta 4= ", S4           !relaccion entre el DNI y la respuesta pregunta 4

S5=line(81:90)    
write(*,*)"Respuesta Correcta 5= ", S5           !relaccion entre el DNI y la respuesta pregunta 5

S6=line(91:100)  
write(*,*)"Respuesta Correcta 6= ", S6           !relaccion entre el DNI y la respuesta pregunta 6

S7=line(101:110)  
write(*,*)"Respuesta Correcta 7= ", S7           !relaccion entre el DNI y la respuesta pregunta 7

S8=line(111:120)  
write(*,*)"Respuesta Correcta 8= ", S8           !relaccion entre el DNI y la respuesta pregunta 8

S9=line(121:130)  
write(*,*)"Respuesta Correcta 9= ", S9           !relaccion entre el DNI y la respuesta pregunta 9

S10=line(131:140) 
write(*,*)"Respuesta Correcta 10= ", S10          !relaccion entre el DNI y la respuesta pregunta 10

read(*,*)

if (EoF<0)then
        exit
    else
end if
 

end do

read (*,*)

N= 0
D= S1-R1
do

if (D < 1*10-4) then 

N=N+1

else 
exit
end if 

write(*,*) "Nota=", N


end do

 
end program
