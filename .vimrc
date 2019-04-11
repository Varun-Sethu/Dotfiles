set nocompatible
filetype on


" PLUGIN CONFIGURATION
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle plugin
Plugin 'gmarik/Vundle.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'

"Editing Themei && Airline 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='aurora'
Plugin 'drewtempelmeyer/palenight.vim'

"Syntax Higlighting
Plugin 'fatih/vim-go'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-python/python-syntax'

" Code completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

call vundle#end()      
filetype plugin indent on
"ND PLUGIN CONFIGURATION




"syntax highlighting
autocmd BufNewFile,BufRead *.v,*.vs set syntax=verilog
autocmd BufNewFile,BufRead *.go set syntax=go
autocmd BufNewFile,BufRead *. setlocal noexpandtab tabstop=4 shiftwidth=4 
"GOLANG Syntax higlighting and completion
	let g:go_highlight_types = 1
	let g:go_highlight_fields = 1
	let g:go_highlight_functions = 1
	let g:go_highlight_function_calls = 1
	let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
 	let g:neocomplete#enable_at_startup = 1	
	let g:neocomplete#enable_smart_case = 1
"CPP Syntax highlighting
	let g:cpp_class_scope_highlight = 1
	let g:cpp_member_variable_highlight = 1
	let g:cpp_class_decl_highlight = 1
	let g:cpp_experimental_simple_template_highlight = 1
	let g:cpp_experimental_template_highlight = 1
	let g:cpp_concepts_highlight = 1
"Python syntax highlighting
	let g:jedi#show_call_signatures = 1
	let g:python_highlight_builtins = 1
	let g:python_highlight_exceptions = 1
	let g:python_highlight_string_formatting = 1
	let g:python_highlight_string_format = 1
	let g:python_highlight_indent_errors = 1
	let g:python_highlight_space_errors = 1



"NERDTree config to open NERDTree if vim is opened ofn a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


" Misc configuration
set number
syntax on
colorscheme palenight
set background=dark
let g:palenight_terminal_italics=1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"automatically include closing brace
inoremap { {<CR>}<Esc>ko
" YCM remove the preview window upon selection
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif



" True colors configuration 
if (has("termguicolors"))
  set termguicolors
endif
