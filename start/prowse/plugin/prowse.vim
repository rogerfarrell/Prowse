function! Prowse(url) abort
  silent! execute 'edit!' a:url
  redraw!
  if &filetype !=# 'markdown'
    execute '%!pandoc --from=html --to=markdown_strict-raw_html --standalone --toc=true --sandbox=true'
    setfiletype markdown
  endif
endfunction

command! -nargs=1 Prowse call Prowse(<q-args>)
command! -nargs=1 Prs    call Prowse(<q-args>)

" follow links support
nnoremap <Leader>gf gf:Prowse %<CR>
vnoremap <Leader>gf gf:Prowse %<CR>
