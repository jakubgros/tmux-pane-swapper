# Goal
Make it possible to swap panes with a more intuitive way than through builtin tmux commands.

# Installation
Using the [tpm](https://github.com/tmux-plugins/tpm) plugin manager:
```
set -g @plugin 'jakubgros/tmux-pane-swapper'
bind-key -T prefix s run-shell "~/.tmux/plugins/tmux-pane-swapper/scripts/swap-pane.sh"
```
# Usage
Go to the pane that you want to swap. Use the hotkey to mark it. Go to other pane you want to swap the previous pane with. Use the same hotkey again to swap the panes.
