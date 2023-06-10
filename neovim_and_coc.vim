sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install neovim
# lastest neovim

sudo apt remove neovim -y

# vimplug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# node
wget https://nodejs.org/dist/v18.16.0/node-v18.16.0-linux-x64.tar.xz
tar -xf node-v18.16.0-linux-x64.tar.xz 


wget https://github.com/clangd/clangd/releases/download/16.0.2/clangd-linux-16.0.2.zip

export PATH=...



npm install -g neovim

COPY  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim     to   ~/.local/share/nvim/site/autoload/plug.vim

mkdir ~/.config/nvim/
nvim ~/.config/nvim/init.vim
```

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


```

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
CocConfig

```
{
  "jedi.enable": true,
  "jedi.startupMessage": true,
  "jedi.markupKindPreferred": "plaintext",
  "jedi.trace.server": true,
  "jedi.jediSettings.autoImportModules": [],
  "jedi.executable.command": "jedi-language-server",
  "jedi.executable.args": [],
  "jedi.completion.disableSnippets": false,
  "jedi.diagnostics.enable": true,
  "jedi.diagnostics.didOpen": true,
  "jedi.diagnostics.didChange": true,
  "jedi.diagnostics.didSave": true,
  "jedi.workspace.extraPaths": [],
  "python.linting.flake8Enabled": true,
  "python.linting.enabled": true,
  "jedi.jediSettings.autoImportModules": ["numpy", "pandas"],
  "diagnostic-languageserver.filetypes": {
    "python": "flake8"
  },
  
 ```
