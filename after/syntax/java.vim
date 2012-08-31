" Disable current syntax temporarily.
let saved_syntax = b:current_syntax
unlet! b:current_syntax

" Load SQL syntax.
syntax include @SQL syntax/sql.vim

" Set SQL to match in any javaString that starts with an obvious start-of-SQL-marker.
"	Take care not to consume the double-quotes (\zs & \ze).
"	Matches are case-sensitive (\C), because I always uppercase SQL keywords.
syntax region sqlSnippet start=/"\C\zsSELECT/ end=/\ze"/ contains=@SQL containedin=javaString
syntax region sqlSnippet start=/"\C\zsINSERT/ end=/\ze"/ contains=@SQL containedin=javaString
syntax region sqlSnippet start=/"\C\zsCREATE/ end=/\ze"/ contains=@SQL containedin=javaString
syntax region sqlSnippet start=/"\C\zsDROP/   end=/\ze"/ contains=@SQL containedin=javaString

" Restore original syntax.
let b:current_syntax = saved_syntax
unlet! saved_syntax
