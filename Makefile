INC += ./
LIB += ./

CFLAGS += -Wall -c -g -DDEBUG
LFLAGS += -Wall -Bdynamic

OBJS = cap_pkt.o 

cappkt: $(OBJS)
	gcc $(LFLAGS) -L$(LIB) -lm -o $(@) $(OBJS)

%.o: %.c
	gcc $(CFLAGS) -I$(INC) -o $(@) $(<)

clean:
	rm *.o
#	rm wifi
