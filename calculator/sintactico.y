%{
#include <stdio.h>
extern char *yytext;
%}

%token NUMERO VARIABLE PAR_IZQ PAR_DER
%left MAS MENOS
%left POR ENTRE
%right POTENCIA

%start expresion

%%

expresion : NUMERO { printf("NUMERO:%s\n", yytext); }
	| VARIABLE { printf("VARIABLE:%s\n", yytext); }
	| expresion MAS expresion { printf("e + e\n"); }
	| expresion POR expresion { printf("e * e\n"); }
	| expresion MENOS expresion { printf("e - e\n"); }
	| expresion ENTRE expresion { printf("e / e\n"); }
	| expresion POTENCIA expresion { printf("e ^ e\n"); }
	| PAR_IZQ expresion PAR_DER { printf("(e)\n"); }

%%

#include <stdio.h>

yyerror(s)
char *s;
{
	fflush(stdout);
	printf("Error: %s", s);
}
