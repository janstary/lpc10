CFLAGS=	-Wall -pedantic -fPIC
LIBS =	liblpc.so
OBJS =	analys.o	\
	bitio.o		\
	bsynz.o		\
	chanwr.o	\
	dcbias.o	\
	decode.o	\
	deemp.o		\
	difmag.o	\
	dyptrk.o	\
	encode.o	\
	energy.o	\
	f2clib.o	\
	ham84.o		\
	hp100.o		\
	invert.o	\
	irc2pc.o	\
	ivfilt.o	\
	lpcdec.o	\
	lpcenc.o	\
	lpcini.o	\
	lpfilt.o	\
	median.o	\
	mload.o		\
	onset.o		\
	pitsyn.o	\
	placea.o	\
	placev.o	\
	preemp.o	\
	prepro.o	\
	random.o	\
	rcchk.o		\
	synths.o	\
	tbdm.o		\
	voicin.o	\
	vparms.o	

all: $(LIBS)

liblpc.so: $(OBJS)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -shared -o $@ $(OBJS)

.SUFFIXES: .c .o

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -c $<

clean:
	rm -f $(LIBS) $(OBJS) *~ .*~

