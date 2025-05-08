function! Prowse(url) abort
  execute 'edit' a:url
  if &filetype !=# 'markdown'
    execute '%!pandoc --from=html --to=markdown_strict-raw_html'
    setfiletype markdown
  endif
endfunction

command! -nargs=1 Prowse call Prowse(<q-args>)
command! -nargs=1 Prs    call Prowse(<q-args>)

function! ProwseFollow() abort
  execute 'normal! gf'
  call Prowse(@%)
endfunction

nnoremap <Leader>gf :call ProwseFollow()<CR>
vnoremap <Leader>gf :call ProwseFollow()<CR>
