" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" 语法高亮
syntax enable
syntax on

" 配色方案
set background=dark
colorscheme solarized

" NERDTree 
let NERDTreeWinPos = "left"
nnoremap <silent> <F7> :NERDTreeToggle<CR>
nnoremap <silent> wm :NERDTreeToggle<CR>


" 显示行号
set number

" 高亮显示结果
set hlsearch

" 缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
filetype plugin indent on

" 字体
set guifont=Monaco:h14

"taglist{
	let os = substitute(system('uname'), '\n', '', '')
	if os == 'Darwin' || os == 'Mac'
		let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
	endif

    let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
    let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
    let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
    let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
	nnoremap <silent> <F8> :TlistToggle<CR>
	nnoremap <silent> wl :TlistToggle<CR>
"}

"powerline {
	set laststatus=2 
	set t_Co=256 
	let g:Powerline_symbols='fancy' 
"}

set encoding=utf-8

" 用Alt+数组键切换tab {
	function! TabPos_ActivateBuffer(num)  
		let s:count = a:num   
		exe "tabfirst"  
		exe "tabnext" s:count    
	endfunction  
  
	function! TabPos_Initialize()  
		for i in range(1, 9)   
			exe "map <M-" . i . "> :call TabPos_ActivateBuffer(" . i . ")<CR>"  
		endfor  
		exe "map <M-0> :call TabPos_ActivateBuffer(10)<CR>"  
	endfunction  
  
	autocmd VimEnter * call TabPos_Initialize()  
"}
