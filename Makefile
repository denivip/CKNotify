build:
	REV=$(shell git rev-parse master); \
	tar cfvz cknotify-$${REV:0:9}.tgz README* CKNotify/ Example/;


clean:
	ls -lrt
