digito [0-9]
letra [a-zA-Z]

%{
#include <stdio.h>
#include "sintactico.tab.h"
%}

%%

{letra}({letra}|{digito})* {return VARIABLE;}
{digito}+ {return NUMERO;}
"+" {return MAS;}
"-" {return MENOS;}
"*" {return POR;}
"/" {return ENTRE;}
"^" {return POTENCIA;}
"(" {return PAR_IZQ;}
")" {return PAR_DER;}
[ \t\v\n\f]		{  }
.			{ printf("Error léxico\n"); exit(1);}

%%

yywrap()
{
	return(1);
}

