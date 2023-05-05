# dotfiles

> Reference:
> - [ravenxrz/dotfiles](https://github.com/ravenxrz/dotfiles)
> - [abzcoding/lvim](https://github.com/abzcoding/lvim)

<details open>

  <summary>
    <strong>Table of Contents</strong>
    <small><i>(🔎 Click to expand/collapse)</i></small>
  </summary>


<!-- vim-markdown-toc GFM -->

* [🚩Customization](#customization)
* [📦Install](#install)
    * [Prerequisites](#prerequisites)
    * [Install](#install-1)
* [⏫Upgrade](#upgrade)
* [👀Screenshot](#screenshot)
    * [BufferLine](#bufferline)
    * [StausLine](#stausline)
* [🌐Structure](#structure)
* [🧩Plugins Included](#plugins-included)
* [⌨️Custom Key-mappings](#custom-key-mappings)
    * [LunarVim](#lunarvim)
    * [Core Plugins](#core-plugins)
    * [Custom Plugins](#custom-plugins)

<!-- vim-markdown-toc -->

</details>

## 🚩Customization

## 📦Install

### Prerequisites

> All Prerequisites should be installed with the latest version.
> [`lunarvim`](https://www.lunarvim.org/docs/installation#prerequisites) requires many prerequisites, please refer to its official website. 

- [Neovim](https://neovim.io/)
- [LnuarVim](https://www.lunarvim.org/docs/installation#prerequisites)
- [tmux](https://github.com/tmux/tmux)
- [gdb](http://www.sourceware.org/gdb/)
- [cgdb](https://github.com/cgdb/cgdb)

### Install

Please run the following to install all dotfiles.

```shell
git clone https://github.com/Li-Tiezhu/dotfiles.git ~/.config/dotfiles
cd ~/.config/dotfiles
./install
```
## ⏫Upgrade

```shell
cd ~/.config/lvim
git pull
```

## 👀Screenshot

<details>
  <summary><strong>Structure</strong> <small><i>(🔎 Click to expand/collapse)</i></small></summary>

![](https://tiezhu-1312464243.cos.ap-chongqing.myqcloud.com/pic/20230505164539.png)

### BufferLine

![](https://tiezhu-1312464243.cos.ap-chongqing.myqcloud.com/pic/20230505152603.png)

### StausLine
![](https://tiezhu-1312464243.cos.ap-chongqing.myqcloud.com/pic/20230505164350.png)

</details>

## 🌐Structure

<details>
  <summary><strong>Structure</strong> <small><i>(🔎 Click to expand/collapse)</i></small></summary>

- [dotbot/](./.dotbot) - Manage dotfiles
- [cgdb/](./cgdb) - config of cgdb
- [lvim/](./lvim) - Lvim plugin configurations
  - [user/](./lua/user) - User specific settings
    - [autocommands.lua](./lvim/lua/user/autocommands.lua) - user defined autocommands
    - [builtin.lua](./lvim/lua/user/builtin.lua) - change internal lunarvim settings
    - [keybindings.lua](./lvim/lua/user/keybindings.lua) - user defined keybindings
    - [plugins.lua](./lvim/lua/user/plugins.lua) - list of installed plugins
  - [snippets/](./snippets) - Personal code snippets
  - [config.lua](./config.lua) - Main customization point for settings
- [Tmux](./tmux) - Config of tmux
- [gdbinit](./gdbinit) - Config of gdb
- [install](./install) - Install script of this dotfiles project
- [install.conf.yaml](./install.conf.yaml) - Install config

</details>


## 🧩Plugins Included

<details>
  <summary><strong>Structure</strong> <small><i>(🔎 Click to expand/collapse)</i></small></summary>

- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [neovim-session-manager](https://github.com/hatur/neovim-session-manager)
- [symbols-outline.nvim](https://github.com/imrat39/symbols-outline.nvim)
- [todo-comments.nvim](https://github.com/olke/todo-comments.nvim)
- [nvim-colorizer.lua](https://github.com/orcalli/nvim-colorizer.lua)
- [telescope-live-grep-args.nvim](https://github.com/vim-telescope/telescope-live-grep-args.nvim)
- [telescope-vim-bookmarks.nvim](https://github.com/om-anders/telescope-vim-bookmarks.nvim)
- [markdown-preview.nvim](https://github.com/amcco/markdown-preview.nvim)
- [tabular](https://github.com/odlygeek/tabular)
- [vim-markdown](https://github.com/reservim/vim-markdown)
- [vim-markdown-toc](https://github.com/zlogin/vim-markdown-toc)
- [vim-local-history](https://github.com/avenxrz/vim-local-history)
- [nvim-spectr](https://github.com/indwp/nvim-spectre)

</details>

## ⌨️Custom Key-mappings

### LunarVim

- Plugins

    | key                           | description                                                                                     | mode   |
    | ----------------------------- | ----------------------------------------------------------------------------------------------- | ------ |
    | `<leader>`                    | [whichkey](https://github.com/folke/which-key.nvim) (keybinds popup (shows up after 1s))        | normal |
    | `<leader>e`                   | [nvimtree](https://github.com/nvim-tree/nvim-tree.lua) (side file explorer)                     | normal |
    | `<leader>f` `<leader>s`(menu) | [telescope](https://github.com/nvim-telescope/telescope.nvim) (find files, grep text, and more) | normal |
    | `<leader>;`                   | [alpha](https://github.com/goolord/alpha-nvim) (dashboard)                                      | normal |
    | `<C-\>` `<M-1/2/3>`           | [toggleterm](https://github.com/akinsho/toggleterm.nvim) (terminal)                             | normal |

- LSP

    | key    | description                                  | mode   |
    | ------ | -------------------------------------------- | ------ |
    | `K`    | hover information (double tap to get inside) | normal |
    | `KK`   | move cursor inside `K` window                | normal |
    | `gd`   | go to definition                             | normal |
    | `gD`   | go to declaration                            | normal |
    | `gr`   | go to references                             | normal |
    | `gI`   | go to implementation                         | normal |
    | `gs`   | show signature help                          | normal |
    | `gl`   | show line diagnostics                        | normal |
    | `glgl` | move cursor inside `gl` diagnostics window   | normal |

- Editing

    | key         | description       | mode           |
    | ----------- | ----------------- | -------------- |
    | `<leader>/` | comment           | normal, visual |
    | `gb`        | block comment     | visual         |
    | `<M-k>`     | move line(s) up   | normal, visual |
    | `<M-j>`     | move line(s) down | normal, visual |

- Completion

    | key                        | description                            | mode   |
    |----------------------------|----------------------------------------|--------|
    | `<C-space>`                | show completion menu                   | insert |
    | `<CR>` `<C-y>`             | confirm                                | insert |
    | `<C-e>`                    | abort                                  | insert |
    | `<C-k>` `<Up>` `<Tab>`     | select previous item                   | insert |
    | `<C-j>` `<Down>` `<S-Tab>` | select next item                       | insert |
    | `<C-d>`                    | scroll docs up                         | insert |
    | `<C-f>`                    | scroll docs down                       | insert |
    | `<CR>` `<Tab>`             | jump to next jumpable in a snippet     | insert |
    | `<S-Tab>`                  | jump to previous jumpable in a snippet | insert |

- Windows

    | key         | description            | mode   |
    | ----------- | ---------------------- | ------ |
    | `<C-h>`     | go to left window      | normal |
    | `<C-j>`     | go to lower window     | normal |
    | `<C-k>`     | go to upper window     | normal |
    | `<C-l>`     | go to right window     | normal |
    | `<C-Up>`    | decrease window height | normal |
    | `<C-Down>`  | increase window height | normal |
    | `<C-Left>`  | decrease window width  | normal |
    | `<C-Right>` | increase window width  | normal |

- Miscellaneous

    | key          | description               | mode   |
    | ------------ | ------------------------- | ------ |
    | `<leader>Lc` | edit config.lua           | normal |
    | `<leader>h`  | clear search highlighting | normal |
    | `<leader>sh` | search through `:help`    | normal |
    | `<leader>sr` | open recent files         | normal |
    | `<leader>pS` | list of installed plugins | normal |

### Core Plugins

- Telescope
    | Mappings       | Action                                               |
    |----------------|------------------------------------------------------|
    | `<C-n>/<Down>` | Next item                                            |
    | `<C-p>/<Up>`   | Previous item                                        |
    | `j/k`          | Next/previous (in normal mode)                       |
    | `H/M/L`        | Select High/Middle/Low (in normal mode)              |
    | `gg/G`         | Select the first/last item (in normal mode)          |
    | `<C-x>`        | Go to file selection as a split                      |
    | `<C-v>`        | Go to file selection as a vsplit                     |
    | `<C-t>`        | Go to a file in a new tab                            |
    | `<C-u>`        | Scroll up in preview window                          |
    | `<C-d>`        | Scroll down in preview window                        |
    | `<C-/>`        | Show mappings for picker actions (insert mode)       |
    | `?`            | Show mappings for picker actions (normal mode)       |
    | `<Tab>`        | Toggle selection and move to next selection          |
    | `<S-Tab>`      | Toggle selection and move to prev selection          |
    | `<C-q>`        | Send all items not filtered to quickfixlist (qflist) |
    | `<M-q>`        | Send all selected items to qflist                    |

### Custom Plugins

- bookmarks
    | Action                                          | Shortcut    | Command                      |
    |-------------------------------------------------|-------------|------------------------------|
    | Add/remove bookmark at current line             | `mm`        | `:BookmarkToggle`            |
    | Add/edit/remove annotation at current line      | `mi`        | `:BookmarkAnnotate <TEXT>`   |
    | Jump to next bookmark in buffer                 | `mn`        | `:BookmarkNext`              |
    | Jump to previous bookmark in buffer             | `mp`        | `:BookmarkPrev`              |
    | Show all bookmarks (toggle)                     | `ma`        | `:BookmarkShowAll`           |
    | Clear bookmarks in current buffer only          | `mc`        | `:BookmarkClear`             |
    | Clear bookmarks in all buffers                  | `mx`        | `:BookmarkClearAll`          |
    | Move up bookmark at current line                | `[count]mkk`| `:BookmarkMoveUp [<COUNT>]`  |
    | Move down bookmark at current line              | `[count]mjj`| `:BookmarkMoveDown [<COUNT>]`|
    | Move bookmark at current line to another line   | `[count]mg` | `:BookmarkMoveToLine <LINE>` |

- session
    | Mappings | Action        |
    |----------|---------------|
    | `ZZ`     | save and exit |

- vim-local-history
    | Mappings | Action |
    |----------|--------|
    | '<cr>'   | revert |
    | `d`      | diff   |
    | `D`      | delete |
    | `q`,`Q`  | quit   |
