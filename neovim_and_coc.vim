sudo apt install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install neovim
# lastest neovim

sudo apt remove neovim -y

wget https://github.com/neovim/neovim/releases/download/v0.9.1/nvim-linux64.tar.gz

# vimplug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# node
wget https://nodejs.org/dist/v18.16.0/node-v18.16.0-linux-x64.tar.xz
tar -xf node-v18.16.0-linux-x64.tar.xz 


wget https://github.com/clangd/clangd/releases/download/16.0.2/clangd-linux-16.0.2.zip

# fzf
wget https://github.com/junegunn/fzf/releases/download/0.41.1/fzf-0.41.1-linux_amd64.tar.gz


export PATH=...



npm install -g neovim

COPY  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim     to   ~/.local/share/nvim/site/autoload/plug.vim

mkdir ~/.config/nvim/
nvim ~/.config/nvim/init.vim


pip install pynvim

https://github.com/neoclide/coc.nvim

:PlugInstall

:CocInstall coc-clangd # C++环境插件
:CocInstall coc-cmake  # Cmake 支持
:CocInstall coc-emmet  
:CocInstall coc-git    # git 支持
:CocInstall coc-highlight  # 高亮支持
:CocInstall coc-jedi   # jedi
:CocInstall coc-json   # json 文件支持
:CocInstall coc-python # python 环境支持
:CocInstall coc-sh     # bash 环境支持
:CocInstall coc-snippets # python提供 snippets
:CocInstall coc-vimlsp # lsp
:CocInstall coc-yaml   # yaml
:CocInstall coc-syntax
:CocInstall coc-pairs

pip install jedi-language-server
:CocConfig

