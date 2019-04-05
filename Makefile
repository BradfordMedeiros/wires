
all: lexer

tokenize: lexer
	@cat ./examples/adder/adder.wire | ./build/tokenize

lexer: build ./src/tokenize.lex 
	@lex -o ./build/tokenize.cc ./src/tokenize.lex
	@g++ -o ./build/tokenize ./build/tokenize.cc

build:
	@mkdir -p ./build
clean:
	@if [ -d ./build ]; then rm -r ./build; fi
