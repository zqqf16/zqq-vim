runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
" 语法高亮
syntax enable
syntax on

" 配色方案
colorscheme desert

" NERDTree 
let NERDTreeWinPos = "left"
nnoremap <silent> <F7> :NERDTreeToggle<CR>


" 显示行号
set number

" 高亮显示结果
set hlsearch

" 标尺
set cc=80

" 缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
filetype plugin indent on

" jquery

" 字体
set guifont=Ubuntu\ Mono\ 14 

"taglist{
    let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
    let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
    let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
    let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
    let Tlist_Ctags_Cmd='/opt/local/bin/ctags'  "设置ctags命令的位置
	nnoremap <silent> <F8> :TlistToggle<CR>
"}

"powerline {
	set laststatus=2 
	set t_Co=256 
	let g:Powerline_symbols='fancy' 
"}

set encoding=utf-8
