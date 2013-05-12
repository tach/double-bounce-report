#!/usr/bin/make -f

TARGETS = $(wildcard bin/*)
prefix ?= /usr/local

all:
	# do nothing

test: $(TARGETS)
	mkdir -p test/tmp
	./bin/bounce-summary test/Maildir/new > test/tmp/test_report.txt

install:
	install -m 555 $(TARGETS) $(prefix)/bin/

clean:
	rm -rf t/tmp

.PHONY: all install test clean
