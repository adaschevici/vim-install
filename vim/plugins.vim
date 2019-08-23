" fugitive git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

" Git Gutter config
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

" fuzzy file finder keybindings
nnoremap <silent> <C-p> :Files<CR>

" Go configuration
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" Airline status bar theme
set ttimeoutlen=50
let g:airline_theme = 'powerlineish'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"


" Syntastic config
""let g:syntastic_always_populate_loc_list = 1
""let g:syntastic_auto_loc_list = 0
""let g:syntastic_check_on_open = 1
""let g:syntastic_check_on_wq = 0
""let g:syntastic_loc_list_height = 1
""let g:syntastic_use_quickfix_lists = 0
""let g:jsx_ext_required = 0

" Syntax language specific checkers
let g:syntastic_shell = "/bin/zsh"
set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

""highlight link SyntasticErrorSign SignColumn
""highlight link SyntasticWarningSign SignColumn
""highlight link SyntasticStyleErrorSign SignColumn
""highlight link SyntasticStyleWarningSign SignColumn

" This can be enabled to have a go at troubleshooting syntastic loaded checkers
" let g:syntastic_debug = 33
""let g:syntastic_javascript_checkers = ['./node_modules/eslint/bin/eslint.js']
""let g:syntastic_python_checkers = ['pylint', 'flake8']
""let g:syntastic_python_pylint_exec = expand('~/.pyenv/versions/neovim3/bin/pylint')
""let g:syntastic_python_flake8_exec = expand('~/.pyenv/versions/neovim3/bin/flake8')
""let g:syntastic_javascript_eslint_exe = 'npm run lint -- %'
""let g:syntastic_go_checkers = ['go']

" ALE config - for python
" Use the global executable with a special name for flake8.
let g:ale_python_pylint_executable = expand('~/.pyenv/versions/neovim3/bin/pylint') "expand('~/.pyenv/shims/pylint')
let g:ale_python_pylint_use_global = 0

" w0rp-ale config
let g:ale_linters = {
\      'javascript': ['eslint'],
\      'js': ['eslint'],
\      'jsx': ['eslint'],
\      'python': ['pylint'],
\      'py': ['pylint']
\}

let g:ale_linters_explicit = 1
let g:ale_javascript_prettier_use_local_config = 1

let g:ale_fixers = {}
let g:ale_fixers = {
\      'javascript': ['prettier'],
\      'js': ['prettier'],
\      'jsx': ['prettier'],
\      'json': ['prettier'],
\      'graphql': ['prettier'],
\      'css': ['prettier']
\}

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_fix_on_save = 1

let g:mta_filetypes = {
\      'html' : 1,
\      'xhtml' : 1,
\      'xml' : 1,
\      'jinja' : 1,
\}

" NERDTree config
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=60

" Auto completions deoplete
let g:deoplete#enable_at_startup = 1

" Snippets config
" UltiSnippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories = [
\     '~/.config/nvim/lang-snippets/',
\     '~/.config/nvim/dein/repos/github.com/epilande/vim-react-snippets/UltiSnips',
\     '~/.config/nvim/dein/repos/github.com/honza/vim-snippets/UltiSnips',
\     'lang-snippets'
\]
