#include <stdio.h>

extern int yyparse(void);

int main () {
	return yyparse();
}
