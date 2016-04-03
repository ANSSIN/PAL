open Sast
open Ast
open Printf
open Random
module StringMap = Map.Make(String);;


(************
  HELPERS
************)




let type_of (ae : Sast.texpression) : Ast.t =
  match ae with
  | TLitInt(_, t) -> t
  | TLitFloat(_, t) -> t
  | TLitString(_, t) -> t
	| TLitBool(_, t) -> t
  | TUop(_, _, t) -> t
  | TCallExpr(_, _, t) -> t
  | TBinop(_, _, _, t) -> t
	| TIden(_,t) -> t

let java_from_type (ty: Ast.t) : string =
    match ty with
      | _ ->  "PrimitiveObject" 



let writeId iden =
   sprintf "PrimtiveObject %s" iden

let writeIntLit intLit =
  sprintf "new PrimitiveObject(%d)" intLit

let writeStringLit stringLit =
  sprintf "new PrimitiveObject(%s)" stringLit

let rec writeJavaProgramToFile fileName programString =
	let file = open_out ("javagen/" ^ fileName ^ ".java") in
		fprintf file "%s" programString


  (*and generateFunctionList prog =
  let concatenatedFunctions = List.fold_left (fun a b -> a ^ (generateFunctionDefinitions b)) "" prog in
  	sprintf "%s" concatenatedFunctions

  and generateFunctionDefinitions  = function
       tmainf(stmtList) -> writeMainFunction stmtList
      | failwith "Not handled"*)



let rec writeBinop expr1 op expr2 =
  let e1 = generateExpression expr1 and e2 = generateExpression expr2 in
    let type1 = type_of expr1 in
     let type2 = type_of expr2 in
     let writeBinopHelper e1 op e2 = match op with
      Concat ->
      match type1 with
      | Pdf -> (match type2 with
      | Page -> sprintf "%s.addPage( %s );\n" e1 e2
      | _ -> failwith "Not handled"
      )
      | Tuple -> (match type2 with
      | Line -> sprintf "  PDPageContentStream %s = new PDPageContentStream(%s.getDocument(), %s.getPage());\n  %s.beginText();\n %s.setFont(PDType1Font.TIMES_NEW_ROMAN, %s.getFontSize());\n %s.moveTextPositionByAmount( %s.getXcod(), %s.getYcod() );\n %s.drawString(%s.getText()); \n %s.endText();\n %s.close();" e2 e1 e1 e2 e2 e2 e2 e2 e2 e2 e2 e2 e2
      | _ -> failwith "Not handled"
      )
      | _ -> failwith "Something went wrong!"
    in writeBinopHelper e1 op e2




and writeObjectStmt tid tspDataType tExprList =
let idstring = 
  (match tid with 
   | IdTest(s) ->  s ) in
 match tspDataType with
 | Line ->
 let exprMapForLine = getExpressionMap tExprList in
 let int1 = string_of_int 1 in 
 let int2 = string_of_int 2 in
 let int3 = string_of_int 3 in 
 let int4 = string_of_int 4 in
 let int5 = string_of_int 5 in 
 let drawString =  StringMap.find int1 exprMapForLine in
 let font = StringMap.find int2 exprMapForLine in
 let fontSize = StringMap.find int3 exprMapForLine in
 let xcod = StringMap.find int4 exprMapForLine in
 let ycod = StringMap.find int5 exprMapForLine in
 sprintf "Line %s = new Line();\n %s.setFont(%s);\n %s.setText(%s);\n %s.setXcod(%s);\n %s.setYcod(%s);\n %s.setFontSize(%s);\n" idstring idstring font idstring drawString idstring xcod idstring ycod idstring fontSize
 | Tuple ->
 let exprMapForTuple = getExpressionMap tExprList in
  let int1 = string_of_int 1 in 
 let int2 = string_of_int 2 in
 let pdfIden = StringMap.find int1 exprMapForTuple in
 let pageIden = StringMap.find int2 exprMapForTuple in
  sprintf "Tuple %s = new Tuple(%s,%s);\n" idstring pdfIden pageIden
 | _ -> failwith "Something went wrong"



and getExpressionMap exprList =
let exprMap =  StringMap.empty in
let rec access_list exprList index = match exprList with
| [] -> exprMap
| head::body ->
(
let indexString = string_of_int index in
exprMap = StringMap.add indexString head exprMap;
let nextIndex = index + 1 in 
access_list body nextIndex
)
in access_list exprList 1



and writeFunctionCallStmt name exprList =
match name with
| "renderPdf" -> let exprMap = getExpressionMap exprList in
let int1 = string_of_int 1 in
let int2 = string_of_int 2 in
let pdfIden =  StringMap.find int1 exprMap in
let location = StringMap.find int2 exprMap in
sprintf "%s.save(%s);\n %s.close()" pdfIden location pdfIden
| _ -> failwith "undefined function"


 and generateExpression = function
     TBinop(ope1, op, ope2, _) -> writeBinop ope1 op ope2
   | TLitString(stringLit, _) -> writeStringLit stringLit
   | TLitInt(intLit, _) -> writeIntLit intLit
   | TIden(name, _) -> 
   (match name with 
   |IdTest(n) -> writeId n
  )


let rec writeAssignmentStmt id expr2 =
        let lhs_type = java_from_type (type_of expr2) in
        let e2string = generateExpression expr2 in
          match id with
             IdTest(n) ->  sprintf "%s = (%s)(%s);\n" n lhs_type e2string
            | _ -> failwith "How'd we get all the way to java with this!!!! Not a valid LHS"


let rec writeDeclarationStmt tid tdataType =
  let lhs_type = java_from_type tdataType in
  match tid with
      | IdTest(name) -> 
                        (match tdataType with
                                  | Pdf -> sprintf "%s %s = new %s(new PDDocument());\n" lhs_type name lhs_type
                                  | Page -> sprintf "%s %s = new %s(new PDPage());\n" lhs_type name lhs_type
                                  | _ -> sprintf "%s %s = new %s();\n" lhs_type name lhs_type)
      | _ -> failwith "Not handled"



 and generateStatement = function
     TVdecl(tid, tdataType) -> writeDeclarationStmt tid tdataType
     | TAssign(tid, tExpression ) -> writeAssignmentStmt tid tExpression
     | TObjectCreate(tid, tspDataType, tExprList ) -> writeObjectStmt tid tspDataType tExprList
     | TCallStmt(name, exprList ) -> writeFunctionCallStmt name exprList

and writeStmtList stmtList =
let outStr = List.fold_left (fun a b -> a ^ (generateStatement b)) "" stmtList in
sprintf "%s" outStr


and generateJavaProgram fileName prog =
  let statementString = generateMainFunction prog.tmainf in
  let progString = sprintf "
  public class %s
  {
    %s
  }
" fileName statementString in
  writeJavaProgramToFile fileName progString;
  progString


 

and writeMainFunction stmtList =
let mainBody = writeStmtList stmtList in
sprintf "  public static void main(String[] args)
      {
        %s
      }  " mainBody

      

  and generateMainFunction prog =
  let mainFunctionBody =  writeMainFunction prog.tbody in
  sprintf "%s" mainFunctionBody



(*******************************************************************************
	Literal expression handling - helper functions
********************************************************************************)

