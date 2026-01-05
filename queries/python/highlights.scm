; Identifiers

(identifier) @variable

; Assume all-caps names are constants
((identifier) @constant
 (#match? @constant "^[A-Z][A-Z_\\d]*$"))

; Function definitions

(function_definition
  name: (identifier) @function)

(call
  function: (identifier) @function)

(call
  function: (attribute
    attribute: (identifier) @function.method))

; Class definitions

(class_definition
  name: (identifier) @type)

; Decorators

(decorator) @attribute
(decorator (identifier) @attribute)
(decorator
  (call
    function: (identifier) @attribute))

; Parameters

(parameters
  (identifier) @variable.parameter)
(default_parameter
  name: (identifier) @variable.parameter)
(typed_parameter
  (identifier) @variable.parameter)
(typed_default_parameter
  name: (identifier) @variable.parameter)
(keyword_argument
  name: (identifier) @variable.parameter)
(list_splat_pattern
  (identifier) @variable.parameter)
(dictionary_splat_pattern
  (identifier) @variable.parameter)

; Lambda parameters
(lambda_parameters
  (identifier) @variable.parameter)

; Built-in variables
((identifier) @variable.builtin
 (#match? @variable.builtin "^(self|cls)$"))

; Built-in constants
((identifier) @constant.builtin
 (#match? @constant.builtin "^(True|False|None|NotImplemented|Ellipsis|__debug__|__name__|__doc__|__package__|__loader__|__spec__|__path__|__file__|__cached__|__builtins__)$"))

; Built-in types
((identifier) @type.builtin
 (#match? @type.builtin "^(int|float|complex|bool|str|bytes|bytearray|list|tuple|dict|set|frozenset|range|slice|object|type|super|property|classmethod|staticmethod|memoryview)$"))

; Built-in functions
((call
  function: (identifier) @function.builtin)
 (#match? @function.builtin "^(abs|aiter|all|any|anext|ascii|bin|breakpoint|callable|chr|compile|delattr|dir|divmod|enumerate|eval|exec|filter|format|getattr|globals|hasattr|hash|help|hex|id|input|isinstance|issubclass|iter|len|locals|map|max|min|next|oct|open|ord|pow|print|repr|reversed|round|setattr|sorted|sum|vars|zip|__import__)$"))

; Built-in exceptions
((identifier) @type.builtin
 (#match? @type.builtin "^(BaseException|Exception|ArithmeticError|AssertionError|AttributeError|BlockingIOError|BrokenPipeError|BufferError|BytesWarning|ChildProcessError|ConnectionAbortedError|ConnectionError|ConnectionRefusedError|ConnectionResetError|DeprecationWarning|EOFError|EnvironmentError|FileExistsError|FileNotFoundError|FloatingPointError|FutureWarning|GeneratorExit|IOError|ImportError|ImportWarning|IndentationError|IndexError|InterruptedError|IsADirectoryError|KeyError|KeyboardInterrupt|LookupError|MemoryError|ModuleNotFoundError|NameError|NotADirectoryError|NotImplementedError|OSError|OverflowError|PendingDeprecationWarning|PermissionError|ProcessLookupError|RecursionError|ReferenceError|ResourceWarning|RuntimeError|RuntimeWarning|StopAsyncIteration|StopIteration|SyntaxError|SyntaxWarning|SystemError|SystemExit|TabError|TimeoutError|TypeError|UnboundLocalError|UnicodeDecodeError|UnicodeEncodeError|UnicodeError|UnicodeTranslateError|UnicodeWarning|UserWarning|ValueError|Warning|ZeroDivisionError)$"))

; Attributes

(attribute
  attribute: (identifier) @property)

; Comments

(comment) @comment

; Strings

(string) @string
(interpolation) @embedded

; Escape sequences
(escape_sequence) @escape

; Numbers

(integer) @number
(float) @number

; Keywords

"and" @keyword
"as" @keyword
"assert" @keyword
"async" @keyword
"await" @keyword
"break" @keyword
"case" @keyword
"class" @keyword
"continue" @keyword
"def" @keyword
"del" @keyword
"elif" @keyword
"else" @keyword
"except" @keyword
"exec" @keyword
"finally" @keyword
"for" @keyword
"from" @keyword
"global" @keyword
"if" @keyword
"import" @keyword
"in" @keyword
"is" @keyword
"lambda" @keyword
"match" @keyword
"nonlocal" @keyword
"not" @keyword
"or" @keyword
"pass" @keyword
"print" @keyword
"raise" @keyword
"return" @keyword
"try" @keyword
"while" @keyword
"with" @keyword
"yield" @keyword

; Operators

"+" @operator
"-" @operator
"*" @operator
"**" @operator
"/" @operator
"//" @operator
"%" @operator
"@" @operator
"|" @operator
"&" @operator
"^" @operator
"~" @operator
"<" @operator
">" @operator
"<=" @operator
">=" @operator
"==" @operator
"!=" @operator
"<>" @operator
":=" @operator
"=" @operator
"+=" @operator
"-=" @operator
"*=" @operator
"/=" @operator
"//=" @operator
"%=" @operator
"**=" @operator
"&=" @operator
"|=" @operator
"^=" @operator
"<<" @operator
">>" @operator
"<<=" @operator
">>=" @operator
"@=" @operator
"->" @operator

; Punctuation

"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

":" @punctuation.delimiter
"," @punctuation.delimiter
"." @punctuation.delimiter
";" @punctuation.delimiter

; Type annotations

(type
  (identifier) @type)
