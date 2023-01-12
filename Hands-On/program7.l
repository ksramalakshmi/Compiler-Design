/*Write a progam to count the number of words, characters, and lines in an input program.*/
%{
    int nchar, nword, nline;
%}

%%
\n {nline++;}
[^\t ^\n]+ {nword++, nchar+=yyleng;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("input.txt", "r");
    yylex();
    printf("\nNumber of characters: %d\nNumber of words: %d\nNumber of lines: %d\n", nchar, nword, nline);
    return 0;
}