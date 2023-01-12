/*Write a program to identify valid and invalid identifiers in a progam input file*/
%{
	#include <stdio.h>
%}

%%

[_a-zA-Z]([_a-zA-Z]|[0-9])* {printf("Valid identifier: %s\n", yytext);}
.* {printf("Invalid identifier: %s\n", yytext);}
\n ;

%%

int yywrap(){
	return 1;
}

int main()
{
	yylex();
}
