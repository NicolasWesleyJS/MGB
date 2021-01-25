FC=gfortran
DEPFLAGS=-M -cpp
FFLAGS=-O3 -fdec-math -ffree-line-length-0 #-Wall -Wextra
SRC=$(wildcard *f90) #\ $(wildcard modules/*f90)
OBJ=${SRC:.f90=.o}

objetos:
	@echo $(OBJ)
	@echo $(SRC)


%.o: %.f90
	@echo rodando .o
	@$(FC) $(FFLAGS) -o $@ -c $<

%.mod: %.f90
	@echo Rodando .mod
	@$(FC) $(FFLAGS) -o $@ -c $< 

mgb: $(OBJ)
	echo rodando o programa!
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	rm *.o .mod