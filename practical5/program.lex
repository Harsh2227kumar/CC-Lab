%{
#include <stdio.h>

char changeCase(char c)
{
    if (c >= 'a' && c <= 'z')
        return c - 32;
    else if (c >= 'A' && c <= 'Z')
        return c + 32;
    return c;
}
%}

%%
[a-zA-Z] { printf("%c\n", changeCase(yytext[0])); }
%%

int main()
{
    yylex();
}


int yywrap()
{
    return 1;
}


