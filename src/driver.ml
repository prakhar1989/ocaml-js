let parse_from_lexbuf lexbuf =
  Parser.program (Lexer.token ()) lexbuf

let parse_from_channel c =
  parse_from_lexbuf (Lexing.from_channel c)

let parse_from_file file =
  let c = open_in file in
  try
    let ast = parse_from_channel c in
    close_in c;
    ast
  with e ->
    close_in c;
    raise e

let () =
  let program = parse_from_file Sys.argv.(1) in
  Pretty.print_program program
;;
