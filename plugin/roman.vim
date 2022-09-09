"
"
"
if exists('g:loaded_roman')
    finish
endif
let g:loaded_roman = 1

let g:Nucleotidos = ['A', 'C', 'G', 'T']
let g:nucleotidos = ['a', 'c', 'g', 't']

let g:paleta_nt = [{ 'ctermbg':'Cyan',       'ctermfg':'Black', 'guibg':'#8CCBEA', 'guifg':'Black' },
        \   { 'ctermbg':'Green',      'ctermfg':'Black', 'guibg':'#A4E57E', 'guifg':'Black' },
        \   { 'ctermbg':'Yellow',     'ctermfg':'Black', 'guibg':'#FFDB72', 'guifg':'Black' },
        \   { 'ctermbg':'Magenta',    'ctermfg':'Black', 'guibg':'#FFB3FF', 'guifg':'Black' }]

let g:Aminoacidos = ['A', 'R', 'N', 'D', 'C', 'E', 'Q', 'G', 'H', 'I', 'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V']
let g:aminoacidos = ['a', 'r', 'n', 'd', 'c', 'e', 'q', 'g', 'h', 'i', 'l', 'k', 'm', 'f', 'p', 's', 't', 'w', 'y', 'v']

let g:paleta_aa = [{ 'ctermbg':'Blue',       'ctermfg':'Black' },
        \ { 'ctermbg':'Magenta',    'ctermfg':'Black' },
        \ { 'ctermbg':'Green',      'ctermfg':'Black' },
        \ { 'ctermbg':'Yellow',     'ctermfg':'Black' },
        \ { 'ctermbg':'DarkCyan',   'ctermfg':'Black' },
        \ { 'ctermbg':'Cyan',       'ctermfg':'Black' },
        \ { 'ctermbg':'DarkBlue',   'ctermfg':'Black' },
        \ { 'ctermbg':'DarkMagenta','ctermfg':'Black' },
        \ { 'ctermbg':'DarkRed',    'ctermfg':'Black' },
        \ { 'ctermbg':'Brown',      'ctermfg':'Black' },
        \ { 'ctermbg':'DarkGreen',  'ctermfg':'Black' },
        \ { 'ctermbg':'Red',        'ctermfg':'Black' },
        \ { 'ctermbg':'White',      'ctermfg':'Gray', },
        \ { 'ctermbg':'LightGray',  'ctermfg':'Black' },
        \ { 'ctermbg':'Gray',       'ctermfg':'Black' },
        \ { 'ctermbg':'Black',      'ctermfg':'White' },
        \ { 'ctermbg':'Black',      'ctermfg':'Gray', },
        \ { 'ctermbg':'Blue',       'ctermfg':'White' },
        \ { 'ctermbg':'DarkRed',    'ctermfg':'White' },
        \ { 'ctermbg':'DarkGreen',  'ctermfg':'White' },
        \ { 'ctermbg':'DarkYellow', 'ctermfg':'White' },
        \]

function! s:Resalte_aa()
    let i = 0
    while i <20
        execute "highlight grupo_" . g:Aminoacidos[i] . " ctermbg=" . g:paleta_aa[i]["ctermbg"] . " ctermfg=" . g:paleta_aa[i]["ctermfg"]
        execute "let mgrupo_" . g:Aminoacidos[i] . " = matchadd('grupo_" . g:Aminoacidos[i] . "', '" . g:Aminoacidos[i] . "')"
        let i += 1
    endwhile
endfunction

function! s:Resalte_nt()
    let i = 0
    while i <4
        execute "highlight grupo_" . g:Nucleotidos[i] . " ctermbg=" . g:paleta_aa[i]["ctermbg"] . " ctermfg=" . g:paleta_aa[i]["ctermfg"]
        execute "let mgrupo_" . g:Nucleotidos[i] . " = matchadd('grupo_" . g:Nucleotidos[i] . "', '" . g:Nucleotidos[i] . "')"
        let i += 1
    endwhile
endfunction

command! Roman call s:Resalte_aa()
command! JRoman call s:Resalte_nt()

