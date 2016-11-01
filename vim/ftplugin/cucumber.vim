function! RunCurrentFeatureFile()
  let s:command = "!bundle exec cucumber " . @%
  execute s:command
endfunction

function! RunNearestFeature()
  let s:command = "!bundle exec cucumber " . @% . ":" . line(".")
  execute s:command
endfunction

map <Leader>s :call RunNearestFeature()<CR>
map <Leader>t :call RunCurrentFeatureFile()<CR>
