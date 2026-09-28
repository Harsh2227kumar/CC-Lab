%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+  {
            int num = atoi(yytext);
            printf("%s -> %X\n", yytext, num);
        }

.|\n    ;
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