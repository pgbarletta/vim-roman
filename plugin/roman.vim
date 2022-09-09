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

let g:Aminoacidos = ['G', 'A', 'S', 'T', 'C', 'V', 'I', 'L', 'M', 'P', 'F', 'Y', 'W', 'N', 'Q', 'H', 'D', 'E', 'K', 'R']
let g:aminoacidos = ['g', 'a', 's', 't', 'c', 'v', 'i', 'l', 'm', 'p', 'f', 'y', 'w', 'n', 'q', 'h', 'd', 'e', 'k', 'r']

let g:paleta_aa = [{ 'ctermbg':'Yellow',       'ctermfg':'Black' },
        \ { 'ctermbg':'Yellow',     'ctermfg':'DarkRed'},
        \ { 'ctermbg':'Yellow',     'ctermfg':'DarkBlue'},
        \ { 'ctermbg':'Yellow',     'ctermfg':'Magenta'},
        \ { 'ctermbg':'Green',      'ctermfg':'Black'},
        \ { 'ctermbg':'Green',      'ctermfg':'DarkYellow'},
        \ { 'ctermbg':'Green',      'ctermfg':'Magenta'},
        \ { 'ctermbg':'Green',      'ctermfg':'DarkRed'},
        \ { 'ctermbg':'Green',      'ctermfg':'DarkBlue'},
        \ { 'ctermbg':'DarkGreen',  'ctermfg':'DarkRed'},
        \ { 'ctermbg':'DarkGreen',  'ctermfg':'DarkRed'},
        \ { 'ctermbg':'DarkGreen',  'ctermfg':'DarkRed' },
        \ { 'ctermbg':'DarkGreen',  'ctermfg':'DarkRed' },
        \ { 'ctermbg':'Magenta',    'ctermfg':'White', },
        \ { 'ctermbg':'Magenta',    'ctermfg':'DarkRed' },
        \ { 'ctermbg':'Magenta',    'ctermfg':'Green' },
        \ { 'ctermbg':'Red',        'ctermfg':'White' },
        \ { 'ctermbg':'Red',        'ctermfg':'Black', },
        \ { 'ctermbg':'Blue',       'ctermfg':'White' },
        \ { 'ctermbg':'Blue',       'ctermfg':'Black' },
        \ { 'ctermbg':'LightGray',  'ctermfg':'Black' },
        \ { 'ctermbg':'LightGray',  'ctermfg':'Black' },
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

