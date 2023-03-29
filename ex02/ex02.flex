%{
#include <stdio.h>
%}

%%
FEUP { printf("ISEP"); }
2007 { printf("2008"); }
.     { printf("%c", yytext[0]); }
%%

int main() {
    yylex();
    return 0;
}
