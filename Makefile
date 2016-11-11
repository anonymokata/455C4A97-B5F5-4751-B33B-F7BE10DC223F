check: convert-rpn_test
	./bin/convert-rpn_test

convert-rpn_test: convert-rpn.o convert-rpn_test.c
	gcc $^ `pkg-config --cflags --libs check` -o bin/$@

convert-rpn.o: convert-rpn.c convert-rpn.h
	gcc -c $^
