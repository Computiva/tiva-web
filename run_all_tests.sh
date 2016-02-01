#! /bin/bash

export PATH="`readlink -f ./lib`:$PATH"
for filename in tests/*
do
	complete_filename=`readlink -f $filename`
	test_dir=`mktemp -d`
	cd $test_dir
	shd < $complete_filename
	cd - > /dev/null
done
