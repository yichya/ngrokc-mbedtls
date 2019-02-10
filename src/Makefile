CC?=gcc
CXX?=g++
CFLAGS+=-fexceptions -DOPENSSL=1 -DISMBEDTLS=0 -O3
CXXFLAGS=-fexceptions -DOPENSSL=1 -DISMBEDTLS=0 -O3
LIBS=sendmsg.o openssldl.o cJSON.o nonblocking.o sslbio.o ngrok.o main.o global.o udp.o base64.o opensslbio.o
all:: ngrokc $(LIBS)
ngrokc: $(LIBS)
	$(CXX) -s $(LIBS) -o ngrokc -lssl -lcrypto -ldl
sendmsg.o: sendmsg.h global.h
openssldl.o: openssldl.h
global.o: global.h
cJSON.o: cJSON.h
nonblocking.o: nonblocking.h
sslbio.o: sslbio.h
ngrok.o: ngrok.h
udp.o: udp.h
base64.o: base64.h
opensslbio.o: opensslbio.h
main.o: sendmsg.h openssldl.h sslbio.h ngrok.h cJSON.h bytestool.h nonblocking.h global.h base64.h udp.h
clean:
	rm -f $(LIBS) ngrokc
