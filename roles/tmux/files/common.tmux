#set-option -g default-command "reattach-to-user-namespace -l zsh"
set -g prefix C-a
unbind %
bind \ split-window -h -c '#{pane_current_path}'
bind - split-window -v -c '#{pane_current_path}'

# Smart pane switching with awareness of vim splits
is_vim='echo "#{pane_current_command}" | grep -iqE "(^|\/)g?(view|n?vim?)(diff)?$"'
bind -n C-h if-shell "$is_vim" "send-keys C-h" "select-pane -L"
bind -n C-j if-shell "$is_vim" "send-keys C-j" "select-pane -D"
bind -n C-k if-shell "$is_vim" "send-keys C-k" "select-pane -U"
bind -n C-l if-shell "$is_vim" "send-keys C-l" "select-pane -R"
bind -n C-\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"

# Resize Panes with Prefix-arrow keys
unbind Right
bind Right resize-pane -R 8
unbind Left
bind Left resize-pane -L 8
unbind Down
bind Down resize-pane -D 4
unbind Up
bind Up resize-pane -U 4

# no need to index windows at 0
set -g base-index 1
set-window-option -g pane-base-index 1

# renumber windows when closing them
set -g renumber-windows on

# increase scrollback lines
set -g history-limit 10000

# correct colors
set -g default-terminal "screen-256color"

# utf-8
set -g utf8
set-window-option -g utf8 on

# Set window notifications
setw -g monitor-activity on
set -g visual-activity on

# mouse behavior
setw -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on

# make vim shift bindings work
set-window-option -g xterm-keys on

# switch to last pane
bind-key C-a last-pane

# Make copy and pasting on mac work. <prefix>[ to start mode
# also use vim mode when in copy mode
setw -g mode-keys vi
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

#if-shell "[ -f ~/.tmux.conf.local ]" 'source ~/.tmux.conf.local'
set-option -g default-command "reattach-to-user-namespace -l $SHELL"

tmux_conf_battery_symbol=heart
tmux_conf_battery_symbol_count=5
