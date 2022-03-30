" Identify platform
silent function! OSX()
  return has('macunix')
endfunction
silent function! LINUX()
  return has('unix') && !has('macunix') && !has('win32unix')
endfunction
silent function! WINDOWS()
  return (has('win16') || has('win32') || has('win64'))
endfunction
silent function! GUI()
  return (has('gui_running'))
endfunction

" Multiplatform compatibility
if WINDOWS()
  " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
  " across (heterogeneous) systems easier.
  set rtp=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

source /root/.config/nvim/bundles.vim
source /root/.config/nvim/settings.vim
source /root/.config/nvim/map.vim
source /root/.config/nvim/plugins.vim
source /root/.config/nvim/functions.vim
source /root/.config/nvim/autocmd.vim
source /root/.config/nvim/lotus.vim
source /root/.config/nvim/lotusbar.vim
source /root/.config/nvim/theme.vim
