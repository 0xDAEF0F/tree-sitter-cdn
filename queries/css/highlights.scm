; CSS syntax highlighting

; Selectors
(tag_name) @tag
(class_name) @type
(id_name) @constant
(attribute_name) @attribute

; Properties
(property_name) @property

; Values
(plain_value) @string
(color_value) @constant
(integer_value) @number
(float_value) @number

; Strings
(string_value) @string

; Keywords
(important) @keyword

; Units
(unit) @type

; At-rules
(at_keyword) @keyword
(keyword_query) @keyword

; Pseudo-classes and pseudo-elements
(pseudo_class_selector
  (class_name) @function)
(pseudo_element_selector
  (tag_name) @function)

; Functions
(function_name) @function

; Comments
(comment) @comment

; Punctuation
["{" "}"] @punctuation.bracket
["(" ")"] @punctuation.bracket
["[" "]"] @punctuation.bracket
[":" ";" ","] @punctuation.delimiter

; Operators
[">" "~" "+" "*"] @operator
