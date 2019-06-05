CC	= gcc -g
FFLAGS	= -O3
MAIN	= Ford_Fulkerson

Ford_Fulkerson	: $(MAIN).o 
	$(CC) $(FFLAGS) $(MAIN).o -o $(MAIN) -lm

$(MAIN).o: $(MAIN).c 
	$(CC) -c $(MAIN).c

clean:
	rm -f *.o

veryclean:
	rm -f $(MAIN)
	rm -f *.o
	rm -f *.*~
