############################# Makefile ##########################
#Variável
CC = gcc
DEPS = cliente.h  
OBJ = main.o cliente.o
EXEC = cliente
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
	
$(EXEC):$(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
	
clean: 
	rm -rf *.o $(EXEC)