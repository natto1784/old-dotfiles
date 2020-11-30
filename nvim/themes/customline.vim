"let right=""
"let left=""
set laststatus=2
set statusline=
set statusline+=%1*
set statusline+=\ %{ModeBruh()}\ 
set statusline+=%2*\ %{GitBruh()}\ 
set statusline+=%3*\ %f\ 
set statusline+=%1*
set statusline+=%=
set statusline+=%3*\ %{strlen(&fenc)?&fenc:'none'}\ 
set statusline+=%2*\ %y\ 
let bruh="%  "
let bruh1="  "
set statusline+=%1*\ %p%{bruh}%l/%L%{bruh1}%c\ 

hi User1 guibg=#d7ffff guifg=#00005f
hi User2 guibg=#d7ffd7 guifg=#00005f
hi User3 guifg=#d7ffff guibg=#444444

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
