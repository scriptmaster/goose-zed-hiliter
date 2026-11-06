(function_declaration name: (identifier) @function)
(function_declaration name: (scoped_identifier name: (identifier) @function))
(call_expression function: (identifier) @function)
(call_expression function: (scoped_identifier name: (identifier) @function))
(call_expression function: (field_expression field: (identifier) @function))

(function_modifier) @keyword
[
  "fn" "thread_fn" "struct" "enum" "type" "let" "var" "const"
  "pad" "reusable" "namespace" "block" "defer" "fields" "variants"
  "types" "in" "upto" "import" "from" "return" "if" "else" "match"
  "guard" "while" "for" "loop" "break" "as" (continue_expression)
] @keyword
(boolean_literal) @boolean
(null) @constant
(primitive_type) @type
(named_type name: (identifier) @type)
(named_type name: (scoped_identifier name: (identifier) @type))
(type_parameter name: (identifier) @type)

; Uppercase-only identifiers use the constant color by naming convention.
((identifier) @constant
 (#match? @constant "^[A-Z]+$"))

[(int_literal) (float_literal)] @number
[(string_literal) (raw_string_literal) (char_literal)] @string
(escape_sequence) @string.escape

[
  "=" ".=" "+" "-" "*" "/" "%"
  "==" "!=" ".==" ".!=" "<" "<=" ">" ">="
  "&&" "||" "!" "&" "|" "^" "~" "<<" ">>"
  "+=" "-=" "*=" "/=" "%=" "&=" "|=" "^=" "<<=" ">>="
  "++" "--" "->" "=>" ".." "?"
] @operator

[(line_comment) (block_comment)] @comment
