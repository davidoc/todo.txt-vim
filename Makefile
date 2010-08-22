todotxt.tar.gz:
	tar zcvf todotxt.tar.gz doc/ ftdetect/ syntax/

deploy:
	rsync -av doc ftdetect syntax $(HOME)/.vim
