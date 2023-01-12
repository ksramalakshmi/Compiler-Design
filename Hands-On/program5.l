/*Write a progam to print an input program file with line numbers in stdout*/
%{
	int yylineno;
%}

%%
(.*)(\n) {printf("%4d\t%s", yylineno++, yytext);}
%%

int yywrap()
{
	return 1;
}

int main()
{
	yyin = fopen("input.txt", "r");
	yylex();
	fclose(yyin);
}
