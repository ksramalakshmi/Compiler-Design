/* Write a program to print the string entered*/
%{
    #include <stdio.h>
%}

%%
.* ECHO;
\n ECHO;
%%

yywrap()
{
    return 1;
}

int main(){
    printf("Enter the input:\n");
    yylex();
    return 0;
}