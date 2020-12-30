"let right=""
"let left=""
set laststatus=2
set statusline=
set statusline+=%1*
set statusline+=\ %{ModeBruh()}\ 
set statusline+=%2*\%{GitBruh()}\ 
set statusline+=%3*\ %f\ 
set statusline+=%1*
set statusline+=%=
set statusline+=%3*\ %{strlen(&fenc)?&fenc:'none'}\ 
set statusline+=%2*\ %y\ 
let bruh="%  "
let bruh1="  "
set statusline+=%1*\ %p%{bruh}%l/%L%{bruh1}%c\ 

hi User1 guibg=#fbf1c7 guifg=#1d2021
hi User2 guibg=#1d2021 guifg=#fbf1c7
hi User3 guifg=#fbf1c7 guibg=#665c54

function! ModeBruh()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif

endfunction
function! GitBruh()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.'':''
endfunction

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction
