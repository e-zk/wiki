.POSIX: 
.SUFFIXES: 
.PHONY: pages index

all: pages index

index:
	sh index.sh > index.html

pages:
	shite ./.env
