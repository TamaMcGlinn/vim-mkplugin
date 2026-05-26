function! mkplugin#shell_run(cmd) abort
  let l:output = systemlist(a:cmd)
  if !empty(v:shell_error)
    let l:msg = join(l:output, "\n")
    throw l:msg
  endif
  return l:output
endfunction

function! mkplugin#mk(plugin_name) abort
  call mkplugin#shell_run('cd ~/.vim/plugged && cookiecutter gh:TamaMcGlinn/cookiecutter-vimplugin --no-input app_name=' . shellescape(a:plugin_name))
  silent execute 'edit ~/.vim/plugged/vim-' . fnameescape(a:plugin_name) . '/autoload/' . fnameescape(a:plugin_name) . '.vim'
endfunction

