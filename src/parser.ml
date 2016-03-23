type token =
  | SEMICOLON
  | LEFTBRACE
  | LEFTPAREN
  | LEFTBRAC
  | RIGHTBRACE
  | RIGHTPAREN
  | RIGHTBRAC
  | COMMA
  | ADDOP
  | SUBOP
  | MULOP
  | DIVOP
  | MODOP
  | SWAP
  | CONCAT
  | TYPEASSIGNMENT
  | LINEBUFFER
  | EQ
  | NEQ
  | LT
  | GT
  | LEQ
  | GEQ
  | NOT
  | AND
  | OR
  | ASSIGN
  | IF
  | ELIF
  | ELSE
  | WHILELOOP
  | FORLOOP
  | BREAK
  | CONTINUE
  | VOID
  | NULL
  | EOF
  | IMPORT
  | FUNCTION
  | RETURN
  | ID of (string)
  | STRING of (string)
  | INT of (int)
  | FLOAT of (float)
  | BOOL of (bool)
  | INTD
  | BOOLD
  | STRINGD
  | FLOATD
  | PDFD
  | PAGED
  | LINED

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 open Ast 
# 60 "parser.ml"
let yytransl_const = [|
  257 (* SEMICOLON *);
  258 (* LEFTBRACE *);
  259 (* LEFTPAREN *);
  260 (* LEFTBRAC *);
  261 (* RIGHTBRACE *);
  262 (* RIGHTPAREN *);
  263 (* RIGHTBRAC *);
  264 (* COMMA *);
  265 (* ADDOP *);
  266 (* SUBOP *);
  267 (* MULOP *);
  268 (* DIVOP *);
  269 (* MODOP *);
  270 (* SWAP *);
  271 (* CONCAT *);
  272 (* TYPEASSIGNMENT *);
  273 (* LINEBUFFER *);
  274 (* EQ *);
  275 (* NEQ *);
  276 (* LT *);
  277 (* GT *);
  278 (* LEQ *);
  279 (* GEQ *);
  280 (* NOT *);
  281 (* AND *);
  282 (* OR *);
  283 (* ASSIGN *);
  284 (* IF *);
  285 (* ELIF *);
  286 (* ELSE *);
  287 (* WHILELOOP *);
  288 (* FORLOOP *);
  289 (* BREAK *);
  290 (* CONTINUE *);
  291 (* VOID *);
  292 (* NULL *);
    0 (* EOF *);
  293 (* IMPORT *);
  294 (* FUNCTION *);
  295 (* RETURN *);
  301 (* INTD *);
  302 (* BOOLD *);
  303 (* STRINGD *);
  304 (* FLOATD *);
  305 (* PDFD *);
  306 (* PAGED *);
  307 (* LINED *);
    0|]

let yytransl_block = [|
  296 (* ID *);
  297 (* STRING *);
  298 (* INT *);
  299 (* FLOAT *);
  300 (* BOOL *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\005\000\004\000\006\000\
\006\000\010\000\010\000\010\000\008\000\012\000\009\000\009\000\
\009\000\009\000\009\000\009\000\016\000\013\000\013\000\014\000\
\014\000\014\000\014\000\014\000\014\000\007\000\007\000\007\000\
\007\000\015\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\000\000"

let yylen = "\002\000\
\003\000\000\000\002\000\000\000\002\000\007\000\005\000\000\000\
\002\000\000\000\003\000\002\000\003\000\005\000\002\000\009\000\
\003\000\001\000\005\000\007\000\004\000\003\000\005\000\003\000\
\003\000\003\000\003\000\003\000\003\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\003\000\
\003\000\003\000\003\000\003\000\003\000\001\000\003\000\003\000\
\002\000\001\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\051\000\000\000\000\000\000\000\003\000\000\000\
\001\000\000\000\005\000\000\000\008\000\000\000\000\000\007\000\
\000\000\000\000\000\000\000\000\000\000\009\000\018\000\000\000\
\000\000\000\000\000\000\000\000\000\000\035\000\036\000\037\000\
\038\000\000\000\050\000\046\000\010\000\000\000\000\000\015\000\
\031\000\033\000\030\000\032\000\000\000\000\000\000\000\000\000\
\000\000\049\000\017\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\034\000\000\000\000\000\000\000\008\000\006\000\
\000\000\000\000\000\000\000\000\000\000\042\000\043\000\045\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\010\000\000\000\019\000\000\000\
\014\000\011\000\000\000\000\000\013\000\000\000\000\000\000\000\
\020\000\000\000\016\000"

let yydgoto = "\002\000\
\003\000\004\000\006\000\007\000\011\000\015\000\068\000\072\000\
\022\000\066\000\046\000\035\000\024\000\036\000\069\000\000\000"

let yysindex = "\006\000\
\000\000\000\000\000\000\233\254\019\255\001\000\000\000\241\254\
\000\000\024\255\000\000\022\255\000\000\029\255\071\255\000\000\
\034\255\059\255\070\255\129\000\130\255\000\000\000\000\073\255\
\103\255\129\000\035\255\129\000\088\255\000\000\000\000\000\000\
\000\000\139\000\000\000\000\000\000\000\010\255\129\000\000\000\
\000\000\000\000\000\000\000\000\076\255\184\000\086\255\246\254\
\112\255\000\000\000\000\129\000\129\000\129\000\129\000\129\000\
\129\000\129\000\129\000\129\000\129\000\129\000\129\000\129\000\
\129\000\065\255\000\000\077\255\109\255\184\000\000\000\000\000\
\076\255\103\255\129\000\111\255\111\255\000\000\000\000\000\000\
\057\255\252\000\252\000\000\255\000\255\000\255\000\255\237\000\
\220\000\113\255\166\000\129\000\000\000\020\255\000\000\120\255\
\000\000\000\000\184\000\214\255\000\000\035\255\129\255\125\255\
\000\000\076\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\075\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\202\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\015\255\000\000\000\000\
\000\000\000\000\000\000\146\255\173\255\000\000\000\000\000\000\
\119\255\200\255\227\255\019\000\028\000\072\000\081\000\023\255\
\102\000\000\000\095\000\000\000\000\000\000\000\000\000\202\000\
\000\000\000\000\017\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\061\000\110\000\203\255\
\000\000\043\000\236\255\244\255\233\255\235\255\000\000\000\000"

let yytablesize = 531
let yytable = "\034\000\
\009\000\004\000\023\000\049\000\047\000\074\000\001\000\050\000\
\052\000\053\000\054\000\055\000\056\000\005\000\057\000\022\000\
\039\000\023\000\070\000\095\000\022\000\008\000\023\000\047\000\
\101\000\012\000\013\000\014\000\047\000\016\000\047\000\076\000\
\077\000\078\000\079\000\080\000\081\000\082\000\083\000\084\000\
\085\000\086\000\087\000\088\000\089\000\091\000\047\000\047\000\
\047\000\025\000\018\000\019\000\107\000\096\000\041\000\042\000\
\043\000\044\000\020\000\021\000\067\000\026\000\047\000\047\000\
\047\000\047\000\047\000\054\000\055\000\056\000\090\000\099\000\
\027\000\040\000\048\000\039\000\017\000\071\000\104\000\091\000\
\039\000\023\000\039\000\039\000\039\000\039\000\039\000\039\000\
\028\000\039\000\037\000\073\000\039\000\039\000\039\000\039\000\
\039\000\039\000\039\000\039\000\039\000\018\000\019\000\092\000\
\029\000\030\000\031\000\032\000\033\000\020\000\021\000\093\000\
\075\000\097\000\039\000\039\000\039\000\039\000\039\000\044\000\
\102\000\054\000\055\000\056\000\044\000\057\000\044\000\044\000\
\044\000\105\000\106\000\094\000\037\000\044\000\045\000\100\000\
\044\000\044\000\044\000\044\000\044\000\044\000\044\000\044\000\
\044\000\038\000\040\000\041\000\042\000\043\000\044\000\040\000\
\000\000\040\000\040\000\040\000\039\000\000\000\044\000\044\000\
\044\000\044\000\044\000\040\000\040\000\040\000\040\000\040\000\
\040\000\040\000\040\000\040\000\000\000\041\000\000\000\000\000\
\000\000\000\000\041\000\000\000\041\000\041\000\041\000\000\000\
\000\000\040\000\040\000\040\000\040\000\040\000\041\000\041\000\
\041\000\041\000\041\000\041\000\041\000\041\000\041\000\000\000\
\024\000\000\000\000\000\000\000\000\000\024\000\000\000\024\000\
\000\000\000\000\000\000\000\000\041\000\041\000\041\000\041\000\
\041\000\024\000\024\000\103\000\000\000\000\000\000\000\024\000\
\024\000\024\000\000\000\025\000\000\000\000\000\000\000\000\000\
\025\000\000\000\025\000\000\000\000\000\028\000\000\000\024\000\
\024\000\024\000\024\000\024\000\025\000\025\000\000\000\000\000\
\000\000\000\000\025\000\025\000\025\000\029\000\030\000\031\000\
\032\000\033\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\025\000\025\000\025\000\025\000\025\000\000\000\
\000\000\000\000\000\000\026\000\000\000\000\000\000\000\000\000\
\026\000\000\000\026\000\000\000\028\000\000\000\000\000\000\000\
\000\000\028\000\000\000\028\000\026\000\026\000\000\000\000\000\
\010\000\004\000\026\000\026\000\026\000\028\000\028\000\000\000\
\000\000\000\000\000\000\028\000\028\000\028\000\000\000\000\000\
\000\000\000\000\026\000\026\000\026\000\026\000\026\000\000\000\
\000\000\000\000\000\000\028\000\028\000\028\000\028\000\028\000\
\027\000\000\000\000\000\000\000\000\000\027\000\000\000\027\000\
\000\000\029\000\000\000\000\000\000\000\000\000\029\000\000\000\
\029\000\027\000\027\000\000\000\000\000\000\000\000\000\027\000\
\027\000\027\000\029\000\029\000\012\000\000\000\048\000\000\000\
\029\000\029\000\029\000\048\000\000\000\048\000\000\000\027\000\
\027\000\027\000\027\000\027\000\000\000\000\000\012\000\000\000\
\029\000\029\000\029\000\029\000\029\000\048\000\000\000\048\000\
\000\000\000\000\000\000\000\000\000\000\000\000\012\000\012\000\
\012\000\012\000\012\000\051\000\000\000\048\000\048\000\048\000\
\048\000\048\000\000\000\052\000\053\000\054\000\055\000\056\000\
\028\000\057\000\000\000\000\000\058\000\059\000\060\000\061\000\
\062\000\063\000\000\000\064\000\065\000\000\000\000\000\000\000\
\029\000\030\000\031\000\032\000\033\000\098\000\052\000\053\000\
\054\000\055\000\056\000\000\000\057\000\000\000\000\000\058\000\
\059\000\060\000\061\000\062\000\063\000\000\000\064\000\065\000\
\052\000\053\000\054\000\055\000\056\000\000\000\057\000\000\000\
\000\000\058\000\059\000\060\000\061\000\062\000\063\000\000\000\
\064\000\065\000\046\000\046\000\046\000\046\000\046\000\000\000\
\046\000\000\000\000\000\046\000\046\000\046\000\046\000\046\000\
\046\000\000\000\046\000\046\000\052\000\053\000\054\000\055\000\
\056\000\000\000\057\000\000\000\000\000\058\000\059\000\060\000\
\061\000\062\000\063\000\000\000\064\000\052\000\053\000\054\000\
\055\000\056\000\000\000\057\000\000\000\000\000\058\000\059\000\
\060\000\061\000\062\000\063\000\052\000\053\000\054\000\055\000\
\056\000\000\000\057\000\000\000\000\000\000\000\000\000\060\000\
\061\000\062\000\063\000"

let yycheck = "\020\000\
\000\000\000\000\015\000\027\000\026\000\016\001\001\000\028\000\
\009\001\010\001\011\001\012\001\013\001\037\001\015\001\001\001\
\027\001\001\001\039\000\073\000\006\001\003\001\006\001\001\001\
\005\001\041\001\003\001\006\001\006\001\001\001\008\001\052\000\
\053\000\054\000\055\000\056\000\057\000\058\000\059\000\060\000\
\061\000\062\000\063\000\064\000\065\000\066\000\024\001\025\001\
\026\001\016\001\031\001\032\001\106\000\075\000\045\001\046\001\
\047\001\048\001\039\001\040\001\051\001\003\001\040\001\041\001\
\042\001\043\001\044\001\011\001\012\001\013\001\006\001\092\000\
\003\001\001\001\040\001\001\001\006\001\002\001\102\000\100\000\
\006\001\094\000\008\001\009\001\010\001\011\001\012\001\013\001\
\024\001\015\001\003\001\006\001\018\001\019\001\020\001\021\001\
\022\001\023\001\024\001\025\001\026\001\031\001\032\001\027\001\
\040\001\041\001\042\001\043\001\044\001\039\001\040\001\003\001\
\001\001\001\001\040\001\041\001\042\001\043\001\044\001\001\001\
\001\001\011\001\012\001\013\001\006\001\015\001\008\001\009\001\
\010\001\001\001\006\001\071\000\003\001\015\001\025\000\093\000\
\018\001\019\001\020\001\021\001\022\001\023\001\024\001\025\001\
\026\001\016\001\001\001\045\001\046\001\047\001\048\001\006\001\
\255\255\008\001\009\001\010\001\027\001\255\255\040\001\041\001\
\042\001\043\001\044\001\018\001\019\001\020\001\021\001\022\001\
\023\001\024\001\025\001\026\001\255\255\001\001\255\255\255\255\
\255\255\255\255\006\001\255\255\008\001\009\001\010\001\255\255\
\255\255\040\001\041\001\042\001\043\001\044\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\255\255\
\001\001\255\255\255\255\255\255\255\255\006\001\255\255\008\001\
\255\255\255\255\255\255\255\255\040\001\041\001\042\001\043\001\
\044\001\018\001\019\001\006\001\255\255\255\255\255\255\024\001\
\025\001\026\001\255\255\001\001\255\255\255\255\255\255\255\255\
\006\001\255\255\008\001\255\255\255\255\024\001\255\255\040\001\
\041\001\042\001\043\001\044\001\018\001\019\001\255\255\255\255\
\255\255\255\255\024\001\025\001\026\001\040\001\041\001\042\001\
\043\001\044\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\040\001\041\001\042\001\043\001\044\001\255\255\
\255\255\255\255\255\255\001\001\255\255\255\255\255\255\255\255\
\006\001\255\255\008\001\255\255\001\001\255\255\255\255\255\255\
\255\255\006\001\255\255\008\001\018\001\019\001\255\255\255\255\
\040\001\040\001\024\001\025\001\026\001\018\001\019\001\255\255\
\255\255\255\255\255\255\024\001\025\001\026\001\255\255\255\255\
\255\255\255\255\040\001\041\001\042\001\043\001\044\001\255\255\
\255\255\255\255\255\255\040\001\041\001\042\001\043\001\044\001\
\001\001\255\255\255\255\255\255\255\255\006\001\255\255\008\001\
\255\255\001\001\255\255\255\255\255\255\255\255\006\001\255\255\
\008\001\018\001\019\001\255\255\255\255\255\255\255\255\024\001\
\025\001\026\001\018\001\019\001\006\001\255\255\001\001\255\255\
\024\001\025\001\026\001\006\001\255\255\008\001\255\255\040\001\
\041\001\042\001\043\001\044\001\255\255\255\255\024\001\255\255\
\040\001\041\001\042\001\043\001\044\001\024\001\255\255\026\001\
\255\255\255\255\255\255\255\255\255\255\255\255\040\001\041\001\
\042\001\043\001\044\001\001\001\255\255\040\001\041\001\042\001\
\043\001\044\001\255\255\009\001\010\001\011\001\012\001\013\001\
\024\001\015\001\255\255\255\255\018\001\019\001\020\001\021\001\
\022\001\023\001\255\255\025\001\026\001\255\255\255\255\255\255\
\040\001\041\001\042\001\043\001\044\001\008\001\009\001\010\001\
\011\001\012\001\013\001\255\255\015\001\255\255\255\255\018\001\
\019\001\020\001\021\001\022\001\023\001\255\255\025\001\026\001\
\009\001\010\001\011\001\012\001\013\001\255\255\015\001\255\255\
\255\255\018\001\019\001\020\001\021\001\022\001\023\001\255\255\
\025\001\026\001\009\001\010\001\011\001\012\001\013\001\255\255\
\015\001\255\255\255\255\018\001\019\001\020\001\021\001\022\001\
\023\001\255\255\025\001\026\001\009\001\010\001\011\001\012\001\
\013\001\255\255\015\001\255\255\255\255\018\001\019\001\020\001\
\021\001\022\001\023\001\255\255\025\001\009\001\010\001\011\001\
\012\001\013\001\255\255\015\001\255\255\255\255\018\001\019\001\
\020\001\021\001\022\001\023\001\009\001\010\001\011\001\012\001\
\013\001\255\255\015\001\255\255\255\255\255\255\255\255\020\001\
\021\001\022\001\023\001"

let yynames_const = "\
  SEMICOLON\000\
  LEFTBRACE\000\
  LEFTPAREN\000\
  LEFTBRAC\000\
  RIGHTBRACE\000\
  RIGHTPAREN\000\
  RIGHTBRAC\000\
  COMMA\000\
  ADDOP\000\
  SUBOP\000\
  MULOP\000\
  DIVOP\000\
  MODOP\000\
  SWAP\000\
  CONCAT\000\
  TYPEASSIGNMENT\000\
  LINEBUFFER\000\
  EQ\000\
  NEQ\000\
  LT\000\
  GT\000\
  LEQ\000\
  GEQ\000\
  NOT\000\
  AND\000\
  OR\000\
  ASSIGN\000\
  IF\000\
  ELIF\000\
  ELSE\000\
  WHILELOOP\000\
  FORLOOP\000\
  BREAK\000\
  CONTINUE\000\
  VOID\000\
  NULL\000\
  EOF\000\
  IMPORT\000\
  FUNCTION\000\
  RETURN\000\
  INTD\000\
  BOOLD\000\
  STRINGD\000\
  FLOATD\000\
  PDFD\000\
  PAGED\000\
  LINED\000\
  "

let yynames_block = "\
  ID\000\
  STRING\000\
  INT\000\
  FLOAT\000\
  BOOL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'import_decl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'func_decl_list) in
    Obj.repr(
# 35 "parser.mly"
                                       ( Program(List.rev _1, List.rev _2) )
# 398 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "parser.mly"
                                   ( [] )
# 404 "parser.ml"
               : 'import_decl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'import_decl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'import_decl) in
    Obj.repr(
# 39 "parser.mly"
                                 ( _2::_1 )
# 412 "parser.ml"
               : 'import_decl_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "parser.mly"
                                   ( [] )
# 418 "parser.ml"
               : 'func_decl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'func_decl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'func_decl) in
    Obj.repr(
# 43 "parser.mly"
                             ( _2::_1 )
# 426 "parser.ml"
               : 'func_decl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'stmt_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'data_type) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'body) in
    Obj.repr(
# 47 "parser.mly"
                                                                  ( 
    { rtype = _6 ; name = _1; formals = _3 ; body = _7; } 
  )
# 438 "parser.ml"
               : 'func_decl))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    Obj.repr(
# 53 "parser.mly"
                                              ( Import(_3) )
# 445 "parser.ml"
               : 'import_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parser.mly"
                  ( [] )
# 451 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 58 "parser.mly"
                  ( _2 :: _1 )
# 459 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parser.mly"
                  ( [] )
# 465 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 64 "parser.mly"
                         (_2 :: _1 )
# 473 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 65 "parser.mly"
                   (_2 :: _1)
# 481 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 69 "parser.mly"
                                  ( List.rev _2 )
# 488 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr_list) in
    Obj.repr(
# 72 "parser.mly"
                                                                    ((_1,_3))
# 496 "parser.ml"
               : 'function_call))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'assign_stmt) in
    Obj.repr(
# 76 "parser.mly"
                                                                    ( _1 )
# 503 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'assign_stmt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr_stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'assign_stmt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'body) in
    Obj.repr(
# 77 "parser.mly"
                                                                                            ( For(_3, _5, _7, _9) )
# 513 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 78 "parser.mly"
                                                                    ( Ret(_2) )
# 520 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'function_call) in
    Obj.repr(
# 79 "parser.mly"
                                                                    (CallStmt(fst _1,snd _1))
# 527 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr_stmt) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'body) in
    Obj.repr(
# 80 "parser.mly"
                                                                    ( While(_3, _5) )
# 535 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'sp_data_type) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'expr_list) in
    Obj.repr(
# 81 "parser.mly"
                                                                             ( ObjectCreate(_1, _3, _5) )
# 544 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'data_type) in
    Obj.repr(
# 84 "parser.mly"
                                                                  ( Vdecl(_1,_3) )
# 552 "parser.ml"
               : 'v_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "parser.mly"
                                                                  ( Assign(_1, _3) )
# 560 "parser.ml"
               : 'assign_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'data_type) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 88 "parser.mly"
                                                                  ( InitAssign(_1,_3,_5) )
# 569 "parser.ml"
               : 'assign_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 91 "parser.mly"
                                                                  ( Binop(_1, Equal,   _3) )
# 577 "parser.ml"
               : 'expr_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 92 "parser.mly"
                                                                  ( Binop(_1, Neq,     _3) )
# 585 "parser.ml"
               : 'expr_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 93 "parser.mly"
                                                                  ( Binop(_1, Less,    _3) )
# 593 "parser.ml"
               : 'expr_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 94 "parser.mly"
                                                                  ( Binop(_1, Leq,     _3) )
# 601 "parser.ml"
               : 'expr_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 95 "parser.mly"
                                                                  ( Binop(_1, Greater, _3) )
# 609 "parser.ml"
               : 'expr_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 96 "parser.mly"
                                                                  ( Binop(_1, Geq,     _3) )
# 617 "parser.ml"
               : 'expr_stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 100 "parser.mly"
                                                                    ( String )
# 623 "parser.ml"
               : 'data_type))
; (fun __caml_parser_env ->
    Obj.repr(
# 101 "parser.mly"
                                                                    ( Int )
# 629 "parser.ml"
               : 'data_type))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
                                                                    ( Float )
# 635 "parser.ml"
               : 'data_type))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "parser.mly"
                                                                    ( Bool )
# 641 "parser.ml"
               : 'data_type))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
      ( Line )
# 647 "parser.ml"
               : 'sp_data_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 110 "parser.mly"
                     ( LitString(_1) )
# 654 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 111 "parser.mly"
                     ( LitInt(_1) )
# 661 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 112 "parser.mly"
                     ( LitFloat(_1))
# 668 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 113 "parser.mly"
                     ( LitBool(_1) )
# 675 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 114 "parser.mly"
                   ( Iden(_1) )
# 682 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                     ( Binop(_1, Add, _3) )
# 690 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                     ( Binop(_1, Sub, _3) )
# 698 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 117 "parser.mly"
                     ( Binop(_1, Mul, _3) )
# 706 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                     ( Binop(_1, Div, _3) )
# 714 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 119 "parser.mly"
                     ( Binop(_1, Concat,  _3) )
# 722 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 120 "parser.mly"
                     ( Binop(_1, Mod,     _3) )
# 730 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr_stmt) in
    Obj.repr(
# 121 "parser.mly"
                     ( _1 )
# 737 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 122 "parser.mly"
                     ( Binop(_1, And,     _3) )
# 745 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 123 "parser.mly"
                     ( Binop(_1, Or,      _3) )
# 753 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 124 "parser.mly"
                    ( Uop(Not,_2) )
# 760 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'function_call) in
    Obj.repr(
# 125 "parser.mly"
                    (CallExpr(fst _1,snd _1))
# 767 "parser.ml"
               : 'expr))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
