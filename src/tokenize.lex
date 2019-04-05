%{
  #include <stdio.h>
  

%}

%%
module	  						{ printf("module\n"); }
input   						{ printf("input\n"); }
output  						{ printf("output\n"); }
int     						{ printf("int\n"); }
string  						{ printf("string\n"); }
wiring  						{ printf("wiring\n"); }
\{\{\[(.*?)\]\}\}    			{ printf("wiring-expression\n"); }
\{      						{ printf("scope-opening\n"); }
\}								{ printf("scope-closing\n"); }
:= 								{ printf("set-equal\n"); }
->								{ printf("goes-to\n"); }
([a-z,A-Z]+)					{ printf("name\n"); }
([a-z,A-Z]+)\.([a-z,A-Z]+)+		{ printf("field\n"); }
([0-9])+						{ printf("number\n"); }


[ \t\r\n]      ;
.    { printf("idk what this is error!\n"); };

%%

int yywrap() {
   return 1;
}

main(){
	yylex();
}

