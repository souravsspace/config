# Tmux Cheat Sheet (Custom Config + Defaults)

**Prefix Key:** `Ctrl-s` (customized from default `Ctrl-b`)

---

## Core Keybindings

| Key Combination        | Action                                 | Type | Description                                                            |
| ---------------------- | -------------------------------------- | ---- | ---------------------------------------------------------------------- |
| `Prefix`               | Activate tmux command mode             | ⚪️   | Enter keybind mode                                                     |
| `Prefix + d`           | Detach session                         | ⚪️   | Detach from current session                                            |
| **🟢 Prefix + r**      | `source-file ~/.config/tmux/tmux.conf` | 🟢   | Reload tmux configuration                                              |
| **🟢 Prefix + Ctrl-c** | `new-window -c "$HOME"`                | 🟢   | Create new window in home directory                                    |
| **🟢 Prefix + c**      | `new-window -c "#{pane_current_path}"` | 🟢   | Create window in current directory (overrides default "create window") |
| `Prefix + &`           | Kill window                            | ⚪️   | Close current window                                                   |
| `Prefix + n`           | Next window                            | ⚪️   | Switch to next window                                                  |
| `Prefix + p`           | Previous window                        | ⚪️   | Switch to previous window                                              |
| **🟢 Prefix + q**      | `previous-window`                      | 🟢   | Switch to previous window (overrides default "kill-pane")              |
| **🟢 Prefix + Tab**    | `switch-client -n`                     | 🟢   | Switch to next session                                                 |
| `Prefix + S`           | List sessions                          | ⚪️   | Open session switcher                                                  |
| **🟢 Prefix + s**      | Split vertically (current dir)         | 🟢   | `split-window -v -c "#{pane_current_path}"`                            |
| **🟢 Prefix + v**      | Split horizontally (current dir)       | 🟢   | `split-window -h -c "#{pane_current_path}"`                            |
| `Prefix + %`           | Split horizontally (default)           | ⚪️   | Legacy horizontal split                                                |
| `Prefix + "`           | Split vertically (default)             | ⚪️   | Legacy vertical split                                                  |
| **🟢 Prefix + x**      | Swap panes                             | 🟢   | `swap-pane -D` (swap current pane with next)                           |
| `Prefix + z`           | Zoom pane                              | ⚪️   | Toggle pane zoom                                                       |
| **🟢 Prefix + ,**      | Resize left (20 units)                 | 🟢   | `resize-pane -L 20`                                                    |
| **🟢 Prefix + .**      | Resize right (20 units)                | 🟢   | `resize-pane -R 20`                                                    |
| **🟢 Prefix + -**      | Resize down (7 units)                  | 🟢   | `resize-pane -D 7`                                                     |
| **🟢 Prefix + =**      | Resize up (7 units)                    | 🟢   | `resize-pane -U 7`                                                     |
| `Prefix + :`           | Command prompt                         | ⚪️   | Enter tmux commands                                                    |

---

## Navigation & Selection (VI Mode Enabled)

| Key Combination         | Action                        | Type |
| ----------------------- | ----------------------------- | ---- |
| **🟢 Prefix + h/j/k/l** | Move focus left/down/up/right | 🟢   |
| `Prefix + [`            | Enter copy-mode               | ⚪️   |
| **In Copy Mode**:       |                               |      |
| **🟢 v**                | Begin selection               | 🟢   |
| `Enter`                 | Confirm selection             | ⚪️   |
| `/`                     | Search forward                | ⚪️   |
| `?`                     | Search backward               | ⚪️   |

---

## Plugins

| Key Combination   | Plugin         | Action                            | Type |
| ----------------- | -------------- | --------------------------------- | ---- |
| **🟢 Prefix + o** | tmux-sessionx  | Fuzzy-find sessions/directories   | 🟢   |
| **🟢 Prefix + p** | tmux-floax     | Toggle floating window (80% size) | 🟢   |
| `Prefix + ]`      | tmux-yank      | Paste last copied text            | ⚪️   |
| **🟢 f + Enter**  | tmux-fzf-url   | Fuzzy-open URLs (in copy-mode)    | 🟢   |
| `Prefix + Ctrl-s` | tmux-resurrect | Manual save session               | ⚪️   |
| `Prefix + Ctrl-r` | tmux-resurrect | Manual restore session            | ⚪️   |

---

## Visual Customization

| Feature               | Configuration                            | Type |
| --------------------- | ---------------------------------------- | ---- |
| Theme                 | Catppuccin (custom windows + status bar) | 🟢   |
| Active Pane Border    | Magenta                                  | 🟢   |
| Inactive Pane Borders | Dark gray                                | 🟢   |
| Status Bar Position   | Bottom                                   | 🟢   |
| Window Index          | Starts at 1                              | 🟢   |
| Clock Mode            | `%H:%M` time format                      | 🟢   |

---

## Advanced Configuration

| Setting             | Value/Effect                       | Type |
| ------------------- | ---------------------------------- | ---- |
| `mouse`             | Enabled                            | 🟢   |
| `set-clipboard`     | On (system clipboard)              | 🟢   |
| `history-limit`     | 1,000,000 lines                    | 🟢   |
| `renumber-windows`  | On (auto-renumber windows)         | 🟢   |
| `detach-on-destroy` | Off (keep tmux open on pane close) | 🟢   |
| `escape-time`       | 0ms (instant mode switching)       | 🟢   |

---

## Persistence Features

| Feature               | Behavior                                   | Type |
| --------------------- | ------------------------------------------ | ---- |
| tmux-resurrect        | Auto-saves sessions to `~/.tmux-resurrect` | 🟢   |
| tmux-continuum        | Auto-restores on tmux start                | 🟢   |
| Neovim Session Saving | Enabled via `@resurrect-strategy-nvim`     | 🟢   |

---

## Overridden Defaults

| Original Binding         | New Behavior                | Type |
| ------------------------ | --------------------------- | ---- |
| `Prefix + r` (Refresh)   | Reload config               | 🟢   |
| `Prefix + q` (Kill-pane) | Previous window             | 🟢   |
| `Prefix + C-c` (Kill)    | New window in home dir      | 🟢   |
| Wheel Down               | Disabled for pane scrolling | 🟢   |
| `Prefix + c` (Create)    | New window in current dir   | 🟢   |
