digit [0-9]
letter [_A-Za-z]
%{
    #include <stdio.h>
%}

%%
include|return|printf|main|auto|double|if|static|break|else|int|struct|case|enum|long|switch|char|extern|near|type|while|default|to|goto|signed|unsigned {printf("Keyword:%s\n", yytext);}
{letter}({letter}|{digit})* {printf("Valid identifier: %s\n", yytext);}
. ;
\n ;
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
    return 0;
}