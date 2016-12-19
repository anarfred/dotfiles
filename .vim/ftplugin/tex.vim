set wrap
set linebreak
set nolist
set tw=0

imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
imap <C-b> <Plug>Tex_MathBF
imap <C-c> <Plug>Tex_MathCal
imap <C-l> <Plug>Tex_LeftRight

" Compilation avec Xelatex
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
"let g:Tex_Folding = 0
let g:Tex_PromptedCommands = 'footnote,cite,pageref,label,g,emph'
let g:Tex_ViewRule_pdf = 'evince'

let g:Tex_SmartQuoteOpen="\\enquote{"
let g:Tex_SmartQuoteClose="}"

let g:Tex_Com_cite = "\\cite[<+prenote+>][<+page+>]{<+key+>}<++>"

"" basic,'
":call IMAP('enquote', '\enquote{<+text+>}<++>', 'tex')
":call IMAP('enquote*', '\enquote*{<+text+>}<++>', 'tex')
":call IMAP('textquote', '\textquote[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('textquote*', '\textquote*[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('blockquote', '\blockquote[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
"" foreign_text,'
":call IMAP('foreignquote', '\foreignquote{<+lang+>}{<+text+>}<++>', 'tex')
":call IMAP('foreignquote*', '\foreignquote*{<+lang+>}{<+text+>}<++>', 'tex')
":call IMAP('hyphenquote', '\hyphenquote{<+lang+>}{<+text+>}<++>', 'tex')
":call IMAP('hyphenquote*', '\hyphenquote*{<+lang+>}{<+text+>}<++>', 'tex')
":call IMAP('foreigntextquote', '\foreigntextquote{<+lang+>}[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('foreigntextquote*', '\foreigntextquote*{<+lang+>}[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('hyphentextquote', '\hyphentextquote{<+lang+>}[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('hyphentextquote*', '\hyphentextquote*{<+lang+>}[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('foreignblockquote', '\foreignblockquote{<+lang+>}[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('hyphenblockquote', '\hyphenblockquote{<+lang+>}[<+cite+>][<+punct+>]{<+text+>}<++>', 'tex')
"" active_quotes,'
":call IMAP('MakeOuterQuote', '\MakeOuterQuote{<+character+>}<++>', 'tex')
":call IMAP('MakeInnerQuote', '\MakeInnerQuote{<+character+>}<++>', 'tex')
":call IMAP('MakeAutoQuote', '\MakeAutoQuote{<+opening_character+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('MakeAutoQuote*', '\MakeAutoQuote*{<+opening_character+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('MakeForeignQuote', '\MakeForeignQuote{<+lang+>}{<+opening_character+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('MakeForeignQuote*', '\MakeForeignQuote*{<+lang+>}{<+opening_character+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('MakeHyphenQuote', '\MakeHyphenQuote{<+lang+>}{<+opening_character+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('MakeHyphenQuote*', '\MakeHyphenQuote*{<+lang+>}{<+opening_character+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('MakeBlockQuote', '\MakeBlockQuote{<+opening_character+>}{<+delimiter+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('MakeForeignBlockQuote', '\MakeForeignBlockQuote{<+lang+>}{<+opening_character+>}{<+delimiter+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('MakeHyphenBlockQuote', '\MakeHyphenBlockQuote{<+lang+>}{<+opening_character+>}{<+delimiter+>}{<+closing_character+>}<++>', 'tex')
":call IMAP('textcquote', '\textcquote[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('textcquote*', '\textcquote*[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('foreigntextcquote', '\foreigntextcquote{<+lang+>}[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('foreigntextcquote*', '\foreigntextcquote*{<+lang+>}[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('hyphentextcquote', '\hyphentextcquote{<+lang+>}[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('hyphentextcquote*', '\hyphentextcquote*{<+x+>}[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('blockcquote', '\blockcquote[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('foreignblockcquote', '\foreignblockcquote{<+lang+>}[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
":call IMAP('hyphenblockcquote', '\hyphenblockcquote{<+lang+>}[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]{<+text+>}<++>', 'tex')
"" display_quotes
":call IMAP('displayquote:', '\displayquote:[<+cite+>][<+punct+>]<++>', 'tex')
":call IMAP('foreigndisplayquote:', '\foreigndisplayquote:{<+lang+>}[<+cite+>][<+punct+>]<++>', 'tex')
":call IMAP('hyphendisplayquote:', '\hyphendisplayquote:{<+lang+>}[<+cite+>][<+punct+>]<++>', 'tex')
":call IMAP('displaycquote:', '\displaycquote:[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]<++>', 'tex')
":call IMAP('foreigndisplaycquote:', '\foreigndisplaycquote:{<+lang+>}[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]<++>', 'tex')
":call IMAP('hyphendisplaycquote:', '\hyphendisplaycquote:{<+lang+>}[<+prenote+>][<+postnote+>]{<+key+>}[<+punct+>]<++>', 'tex')
