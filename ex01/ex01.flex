%{
int qtdOcorrencias=0;

%}


%%
teste   {qtdOcorrencias++;}
.

%%
main ()
{
yylex();
printf("O número de ocorrências de teste é %d\n", qtdOcorrencias);
return 0;
}