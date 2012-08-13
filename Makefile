# use "make release" to build a release tarball
release:
	REV=$(shell git rev-parse master); \
	tar cfvz cknotify-$${REV:0:9}.tgz README* CKNotify/ Example/;


clean:
	# what else needs to be cleaned?
	find . -name '*.pyc' -delete
