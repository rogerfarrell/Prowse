function! Prowse(url) abort
  execute 'edit' a:url
  execute '%!pandoc --from=html --to=markdown_strict'
  setfiletype markdown
endfunction

command! -nargs=1 Prowse call Prowse(<q-args>)
command! -nargs=1 Prs    call Prowse(<q-args>)
