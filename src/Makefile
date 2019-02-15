CC?=gcc
CXX?=g++
CFLAGS+=-fexceptions -DISMBEDTLS=0 -DOPENSSL=1 -DOPENSSLDL=0 -O2
CXXFLAGS=-fexceptions -DISMBEDTLS=0 -DOPENSSL=1 -DOPENSSLDL=0 -O2 
LIBS=sendmsg.o cJSON.o nonblocking.o opensslbio.o ngrok.o global.o main.o
all:: ngrokc $(LIBS)
ngrokc: $(LIBS)
	$(CXX) -s $(LIBS) -o ngrokc -lpthread -lssl -lcrypto -ldl
sendmsg.o: sendmsg.h
cJSON.o: cJSON.h
nonblocking.o: nonblocking.h
opensslbio.o: opensslbio.h
ngrok.o: ngrok.h
global.o: global.h
main.o: sendmsg.h opensslbio.h ngrok.h cJSON.h bytestool.h nonblocking.h
clean: 
	rm -f $(LIBS) ngrokc
