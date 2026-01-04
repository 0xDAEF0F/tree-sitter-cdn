; JSON syntax highlighting

; Property keys
(pair
  key: (string) @property)

; String values
(string) @string

; Numbers
(number) @number

; Booleans
[(true) (false)] @constant.builtin

; Null
(null) @constant.builtin

; Punctuation
["{" "}"] @punctuation.bracket
["[" "]"] @punctuation.bracket
[":" ","] @punctuation.delimiter
