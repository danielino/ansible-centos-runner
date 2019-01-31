for i in $(find . -type d -name "2.*" -maxdepth 1) ; do
	cd $i
	tagName=$(echo $i | sed 's^./^^g')
	docker build -t ansible-centos-runner:$tagName . 
	cd -
done
