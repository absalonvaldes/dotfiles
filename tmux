
set -g utf8
set-window-option -g utf8 on
set -g prefix C-a
unbind C-b
bind C-a send-prefix
bind r source-file ~/.tmux.conf \; display "Reloaded!"
set -g default-terminal "screen-256color"
set-option -g default-shell /usr/bin/zsh
set -g history-limit 10000
bind . split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"
setw -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on
set-option -g base-index 1
setw -g pane-base-index 1
bind -r C-k select-window -t :-
bind -r C-l select-window -t :+
set -g status-justify "left"
set -g status "on"
set -g status-bg default
set -g status-utf8 "on"
set -g status-right-length "100"
set -g status-left-length "100"
set  -g set-titles on
set-option -g allow-rename off
set  -g set-titles-string '#S@#H'
set  -g renumber-windows on
setw -g window-status-fg "colour138"
setw -g window-status-format '#I:#W#F'
setw -g window-status-activity-attr "none"
setw -g window-status-separator ""
set -g status-left "#[fg=colour15,bg=colour27] #S@#H "
set -g status-right "#[fg=colour233,bg=colour245,bold] %d.%m.%Y %H:%M "
setw -g window-status-format " #[fg=colour232,bg=colour202] #I #[fg=colour39,bg=colour234] #W "
setw -g window-status-current-format " #[fg=white,bg=red] #I: #W "
