SHELL = /bin/sh

build: 
	gcc raycast.c -o raycast -lm

clean:
	rm -f raycast
	rm -f *~
	rm -f *.ppm
	rm -f *.stackdump
	rm -f *#

clear :
	clear

rebuild: clean build

retest: rebuild
	./raycast 500 500 setup.json scene.ppm
