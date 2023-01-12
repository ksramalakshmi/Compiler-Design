/* Write a program to accept a string and output Hi Bye.*/
%{
    #include <stdio.h>
%}

%%
"hi"    {printf("Bye");}
.*      {printf("Wrong");}
%%

yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the string:\n");
    yylex();
    return 0;
}

