%{
  #include <stdio.h>
  

%}
%%

" "	;

[a-z]	{ printf("found a letter"); }
[0-9]	{ printf("found a number"); }

%%

int yywrap() {
   return 1;
}

main(){
	yylex();
}
