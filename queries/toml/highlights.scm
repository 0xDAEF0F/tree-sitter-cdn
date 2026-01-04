; TOML highlight queries

(comment) @comment

(string) @string
(integer) @number
(float) @number
(boolean) @constant.builtin

(bare_key) @property
(quoted_key) @property

(table (bare_key) @type)
(table (quoted_key) @type)
(table (dotted_key (bare_key) @type))

(array_table (bare_key) @type)
(array_table (quoted_key) @type)
(array_table (dotted_key (bare_key) @type))

"[" @punctuation.bracket
"]" @punctuation.bracket
"[[" @punctuation.bracket
"]]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

"=" @operator
"." @punctuation.delimiter
"," @punctuation.delimiter
