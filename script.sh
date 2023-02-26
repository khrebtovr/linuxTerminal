#!/bin/bash
func() {
	cd folder
	mkdir folder1 folder2 folder3
	cd folder1
	touch one.txt two.txt three.txt one.json two.json
	mkdir folder1_1 folder1_2 folder1_3
	var=`ls -l`
	echo $var
}
func
move() {
	mv one.json ../folder2/one.json 
	mv two.json ../folder2/two.json
}
move

request(){
var=`curl http://162.55.220.72:5005/terminal-hw-request`
echo $var
}
request
