for i in $(find . -type d -maxdepth 1) ; do
	cd $i
	tagName=$(echo $i | sed 's^./^^g')
	docker build -t ansible-centos-runner:$tagName . 
	cd -
done
