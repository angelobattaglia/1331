# How to use each configuration

## How to use my i3 configuration

Essentially, it's the default configuration but with vim-like keybindings to hop among
windows and some shortcuts to pop up the browser, the terminal and a GUI-based file manager.

The $Mod key is ALT on my operating system:
- browser
```
Mod+Shift+Enter
```
- terminal
```
Mod+Enter
```
- GUI file manager
```
Mod+Shift+f
```

## How to use my tmux configuration

*Copy .tmux.conf in your ~ directory*

The rest is the same except for:
- <C-b> is binded as <C-a>
- Move through panels with Vim-like bindings!

```
# Moving through panels
<C-a> + h,j,k,l

# Create a new panel
<C-a> + c 

# Rename a panel
<C-a> + ,

# Split vertical
<C-a> + "

# Split horizontal
<C-a> + %

# Detach a session
<C-b> + d
tmux ls # to see how many windows you have opened

# Attach to a session
tmux attach -t 0 # for session 0

# Rename a session
tmux rename-session -t 0 git

# Create a new session and naming it neovim-latex, for example
tmux new -s neovim-latex

# Deleting sessions
tmux kill-session -t neovim-latex

# Resize panes with vim-like keybindings (TODO)
```
