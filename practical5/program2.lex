%{
#include <stdio.h>

void changeCase(char s[])
{
    int i;

    for (i = 0; s[i] != '\0'; i++)
    {
        if (s[i] >= 'a' && s[i] <= 'z')
            s[i] = s[i] - 32;
        else if (s[i] >= 'A' && s[i] <= 'Z')
            s[i] = s[i] + 32;
    }

    printf("%s\n", s);
}

int yywrap()
{
    return 1;
}
%}

%%
[a-zA-Z]+ { changeCase(yytext); }
%%

int main()
{
    yylex();
}

