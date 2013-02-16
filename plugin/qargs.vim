command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

command! -nargs=? Argdo call Argdo(<q-args>)
function! Argdo(command)
  " Ignore Auto Commands, this makes changes as fast as possible.
  execute 'noautocmd argdo '. a:command . ' | update'
endfunction

