%{
#include<stdio.h>
%}

%%
[((0-9)+)|((0-9)+(\,)(0-9)+)]			{printf("Entier ou Reel\n");return 0;}
[A-Z(0-9)+]		{printf("Identificateur\n");return 0;}
[^(((0-9)+)|((0-9)+(\,)(0-9)+)|A-Z(0-9)+)]     { printf("Erreur\n");return 0;}
%%

int yywrap(){};

int main()
{
   printf("Donnez des inputs:\n");
   yylex();
   return 0;
}
