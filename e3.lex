%{

#include<stdio.h>

%}

%%
[a-zA-Z0-9]+ {printf("%s, est RECONNU \n", yytext);}
[[a-zA-Z0-9]+_?[a-zA-Z0-9]+]* {printf("%s, est RECONNU \n", yytext);}
[_[a-zA-Z0-9]*|[a-zA-Z0-9]*_|[a-zA-Z0-9]*__[a-zA-Z0-9]*] {printf("%s, est  NON RECONNU \n", yytext);}
%%

int yywrap(){};

int main()
 {

	FILE * fp;
	char filename[50];
	printf("Nom du fichier: \n");
	scanf("%s",&filename);
	fp = fopen(filename,"r");
	
	yyin = fp;
	
	yylex();
	
	return 0;
 }
