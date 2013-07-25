
##我的VIM配置文件

**基本功能**

1. 语法高亮、显示行号、Ubuntu Mono字体、4空格替代缩进
2. 支持Alt+数字键切换标签
3. 更好的支持Python缩进
4. 深色养眼主题Lucius
5. 用Vim-pathogen管理插件
6. Powerline、Nerdtree、Taglist

**插件**

1. [Lucius](https://github.com/vim-scripts/Lucius)
2. [Indent-python](https://github.com/hynek/vim-python-pep8-indent)
3. [Nerdtree](https://github.com/scrooloose/nerdtree)
4. [Taglist](https://github.com/vim-scripts/taglist.vim)
5. [Vim-powerline](https://github.com/Lokaltog/vim-powerline)
6. [Vim-pathogen](https://github.com/tpope/vim-pathogen)

**安装步骤**

1. 初始化vim插件：

	git submodule init
	git submodule update

2. 创建配置文件链接：

	ln -s .vim/vimrc ~/.vimrc

3. 安装字体，解决Powerline乱码问题：

	ln -s .vim/Inconsolata-dz-Powerline.otf ~/.fonts/Inconsolata-dz-Powerline.otf
