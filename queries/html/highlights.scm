; HTML syntax highlighting

; Tags
(tag_name) @tag
(erroneous_end_tag_name) @tag

; Attributes
(attribute_name) @attribute
(attribute_value) @string

; Quoted attribute values
(quoted_attribute_value) @string

; DOCTYPE
(doctype) @keyword

; Comments
(comment) @comment

; Text content
(text) @none

; Special elements
((element
  (start_tag
    (tag_name) @_tag))
  (#match? @_tag "^(script|style)$"))

; Punctuation
["<" ">" "</" "/>"] @punctuation.bracket
["="] @operator
