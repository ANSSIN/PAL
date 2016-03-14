%{ open Ast %}
%token SEMICOLON
%token LEFTBRACE LEFTPAREN LEFTBRAC RIGHTBRACE RIGHTPAREN RIGHTBRAC COMMA
%token ADDOP SUBOP MULOP DIVOP MODOP EOF
%token APPEND SWAP CONCAT TYPEASSIGNMENT LINEBUFFER
%token EQ NEQ LT GT LEQ GEQ
%token NOT AND OR
%token ASSIGN
%token IF ELIF ELSE WHILELOOP FORLOOP BREAK CONTINUE VOID NULL
%token EOF
%token IMPORT FUNCTION
%token <string> ID
%token <string> STRING
%token <int> INT
%token <float> FLOAT
%token <bool> BOOL
%token INTD BOOLD STRINGD FLOATD PDF PAGE LINE
%left OR
%left AND
%left EQ NEQ
%nonassoc LT LEQ GT GEQ
%left ADDOP SUBOP
%left MULOP DIVOP
%left CONCAT
%left TYPEASSIGNMENT
%start expr
%type <Ast.expression> expr
%%
expr:
expr ADDOP expr { Binop($1, Add, $3) }
| expr SUBOP expr { Binop($1, Sub, $3) }
| expr MULOP expr { Binop($1, Mul, $3) }
| expr DIVOP expr { Binop($1, Div, $3) }
| STRING { String($1) }
| INT { Int($1) }
