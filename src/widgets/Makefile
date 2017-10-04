PROG        = widgets
VERS        = 0.1.0
CC          = gcc
LD          = gcc

OPT_FLAGS   =  -O2

LIBRARIES   = 

CFLAGS      = $(OPT_FLAGS) -DUSE_MAEMO -Wall -I /home/burchr/code/libliqbase/
LDFLAGS     = -lm -L/home/burchr/code/libliqbase/src -lliqbase
RM          = /bin/rm -f

SUBDIRS     =  
aaa = desktopmanage liqui playground liqcalendar

SRCS        = $(wildcard *.c)

OBJS        = $(patsubst %.c,%.o,$(SRCS))

LIBS        = $(patsubst %.c,%.so,$(SRCS))

BINS        = $(patsubst %.c,%,$(SRCS))

.PHONY:     clean distclean

all:        $(LIBS) 
	@for i in $(SUBDIRS); do \
	echo "make all in $$i..."; \
	(cd $$i; $(MAKE) all); done



%.o : %.c
	$(CC) -c -fpic $(CFLAGS) $(CPPFLAGS) $< -o $@

%.so : %.o
	$(LD) -shared -lc $(CFLAGS) $(LDFLAGS) $< -o $@


clean:
	$(RM) *~ $(OBJS) $(LIBS)
	@for i in $(SUBDIRS); do \
	echo "make all in $$i..."; \
	(cd $$i; $(MAKE) clean); done

.PHONY:     clean




