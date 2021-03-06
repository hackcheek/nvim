" AUTOCOMMANDS
if has("autocmd")
  augroup FileTypeDetect
    au BufEnter *.jsx set filetype=javascript.jsx
    au BufEnter *.markdown,*.mkd,*.md setl wrap tw=79
    au BufEnter *.json setl ft=javascript
    au BufEnter *.coffee setl sw=2 expandtab ft=coffee
    au BufEnter *.py setl ts=4 sw=4 sts=4
    au BufEnter *.php setl ts=4 sw=4 sts=4
    au BufEnter *.js setl ts=2 sw=2 sts=2
    au BufEnter *.html setl ts=4 sw=4 sts=4
    au BufEnter *.tex setl wrap tw=79 fo=tcqor
    au BufEnter *.[ch] setl cindent
    au BufEnter *.[ch]pp setl cindent
    au BufEnter Makefile setl ts=4 sts=4 sw=4 noet list
    au BufEnter *.es6 setf javascript
  augroup END

  " when enabling diff for a buffer it should be disabled when the
  " buffer is not visible anymore
  au BufHidden * if &diff == 1 | diffoff | setlocal nowrap | endif

  " Instead of reverting the cursor to the last position in the buffer, we
  " set it to the first line when editing a git commit message
  au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

  " Automatically removing all trailing whitespace
  au BufWritePre * :call StripTrailingWhitespace()

  " Automatically source vimrc on save.
  au! bufwritepost $MYVIMRC source $MYVIMRC

  " Disable paste mode when leaving Insert Mode
  au InsertLeave * set nopaste

  " Resize splits when the window is resized
  au VimResized * exe "normal! \<c-w>="

endif
