%{
#include <stdio.h>
%}

%%
.*COM\n    { printf("Line ending with COM: %s", yytext); }

.*\n       { printf("Line does not end with COM: %s", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}