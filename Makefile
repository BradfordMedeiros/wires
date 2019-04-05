
all: lexer

lexer: build
	lex -o ./build/tokenize.cc ./src/tokenize.lex
	g++ -o ./build/tokenize ./build/tokenize.cc

build:
	mkdir -p ./build
clean:
	if [ -d ./build ]; then rm -r ./build; fi
