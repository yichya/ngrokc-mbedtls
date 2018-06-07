CC?=gcc
CXX?=g++
CFLAGS+=-fexceptions -DISMBEDTLS=1 -DOPENSSL=0 -O3
CXXFLAGS=-fexceptions -DISMBEDTLS=1 -DOPENSSL=0 -O3
LIBS=sendmsg.o cJSON.o nonblocking.o polarsslbio.o ngrok.o global.o main.o
all:: ngrokc $(LIBS)
ngrokc: $(LIBS)
	$(CXX) -s $(LIBS) -o ngrokc -lpthread -lmbedtls -lmbedcrypto -lmbedx509
sendmsg.o: sendmsg.h
cJSON.o: cJSON.h
nonblocking.o: nonblocking.h
polarsslbio.o: polarsslbio.h
ngrok.o: ngrok.h
global.o: global.h
main.o: sendmsg.h polarsslbio.h ngrok.h cJSON.h bytestool.h nonblocking.h
clean: 
	rm -f $(LIBS) ngrokc
