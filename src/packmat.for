      SUBROUTINE PACKMAT
     1 (NTOT,IOFFD,IOFGND,IOFBND,ILOC,INDEX1,GND,BND,DIAG,DIAB)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION ILOC(1),INDEX1(1),GND(1),BND(1),DIAG(1),DIAB(1)
c      write(*,*)'packmat'
      N3 = NTOT + 1
      IF ( IOFFD .GT. N3 )  N3 = IOFFD
      N1 = IOFGND + 1
      N2 = IOFBND + 1
      write(99,'(2i7)')ntot,n3
      DO 4516  I=1, N3
      IF ( I .LE. NTOT )  THEN
      WRITE (99, 4514)  I,  ILOC(I),  INDEX1(I),  GND(N1),  BND(N2),
     1                       DIAG(I), DIAB(I)
 4514 FORMAT ( I5, 2I7, 1P, 4E24.14 )
          ELSE
      WRITE (99, 4514)   I,  ILOC(I),  INDEX1(I),  GND(N1),  BND(N2)
          ENDIF
      N1 = N1 + 1
 4516 N2 = N2 + 1
      RETURN
      END
      