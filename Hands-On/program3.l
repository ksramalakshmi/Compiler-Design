/* Write a program to identify and print keywords with a program file input*/
%{
    #include <stdio.h>
%}

%%
return|printf|main|auto|double|if|static|break|else|int|struct|case|enum|long|switch|char|extern|near|type|while|default|to|goto|signed|unsigned {printf("Keyword:%s\n", yytext);}
. ;
\n ;
%%

int yywrap()
{
    return 1;
}

int main(){
    fflush(stdin);
    yyin = fopen("input.txt", "r");
    yylex();
    fclose(yyin);
    return 0;
}
