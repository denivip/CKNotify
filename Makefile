# use "make build" to build a release tarball
build:
	REV=$(shell git rev-parse master); \
	tar cfvz cknotify-$${REV:0:9}.tgz README* CKNotify/ Example/;


clean:
	# what else needs to be cleaned?
	find . -name '*.pyc' -delete
