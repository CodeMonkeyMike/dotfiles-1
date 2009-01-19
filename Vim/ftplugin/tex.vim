" Vim configuration for LaTeX
" Wouter Bolsterlee <uws@xs4all.nl>

setlocal textwidth=76
setlocal shiftwidth=2
setlocal tabstop=2
setlocal formatoptions=tcq
setlocal spell
setlocal cinwords=

" Highlight whitespace-only lines
match Todo /^\s\+$/

" Compilation (if no Makefile is present)
if (!filereadable("Makefile"))
	" use rubber -d to generate pdf files
	setlocal makeprg=rubber\ -v\ -d\ %
endif

" Preview pdf files
if (exists("$GNOME_DESKTOP_SESSION_ID"))
	noremap <buffer> <F10> :silent! !gnome-open <C-R>=expand('%:p:r:gs/ /\\ /')<CR>.pdf&<CR><CR>
endif

" Simplify long line handling
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Abbreviations
inoreabbrev <buffer> ... \ldots{}
inoreabbrev <buffer> \i \item
inoreabbrev <buffer> \i- \item[-]
inoreabbrev <buffer> \c \chapter{}<Left><C-R>=EatWhitespace()<CR>
inoreabbrev <buffer> \s \section{}<Left><C-R>=EatWhitespace()<CR>
inoreabbrev <buffer> \p \paragraph{}<Left><C-R>=EatWhitespace()<CR>
inoreabbrev <buffer> \e \emph{}<Left><C-R>=EatWhitespace()<CR>

" Quickly jump outside the current command environment, e.g. emph{}
inoremap <C-CR> <Esc>f}a

" Create environment using the current word (single line)
inoremap <buffer> <C-K> <Esc>"xyiwi\begin{<Esc>ea}\end{<C-R>x}<C-O>F\

" Create environment using the current word (multiline)
inoremap <buffer> <C-K><C-K> <Esc>"xyiwi\begin{<Esc>ea}<CR>\end{<C-R>x}<C-O>O<Tab>

" Close the currently open environment
inoremap <buffer> <C-B> <Esc>mx?\\begin{<Cr>f{l"xyt}`xa\end{<C-r>x}<C-O>:nohlsearch<CR>