# Neovim Keybindings Documentation

## Legend

- `★` = Custom keybinding
- `☆` = Modified default
- `⮑` = Default behavior
- `<leader>` = Space (default)
- `<localleader>` = `\`

## Core Navigation

| Key        | Description          | Mode | Type      |
| ---------- | -------------------- | ---- | --------- |
| `hjkl`     | Basic movement       | N    | ⮑ Default |
| `<C-hjkl>` | Window navigation    | N    | ⮑ Default |
| `<S-h/l>`  | Previous/Next buffer | N    | ★ Custom  |
| `[b/]b`    | Previous/Next buffer | N    | ⮑ Default |
| `ss`       | Vertical split       | N    | ★ Custom  |
| `sv`       | Horizontal split     | N    | ★ Custom  |

## Buffer Management

| Key          | Description                   | Mode | Type       |
| ------------ | ----------------------------- | ---- | ---------- |
| `<leader>bd` | Delete buffer (Snacks)        | N    | ★ Custom   |
| `<leader>bo` | Delete other buffers (Snacks) | N    | ★ Custom   |
| `<leader>bD` | Force delete buffer           | N    | ☆ Modified |
| `:bd`        | Default buffer delete         | N    | ⮑ Default  |

## Tab Management

| Key              | Description  | Mode | Type     |
| ---------------- | ------------ | ---- | -------- |
| `te`             | New tab      | N    | ★ Custom |
| `<Tab>`          | Next tab     | N    | ★ Custom |
| `<S-Tab>`        | Previous tab | N    | ★ Custom |
| `<leader><tab>d` | Close tab    | N    | ★ Custom |

## LSP & Code Actions

| Key          | Description            | Mode | Type      |
| ------------ | ---------------------- | ---- | --------- |
| `<leader>cr` | LSP Rename (IncRename) | N    | ★ Custom  |
| `gd`         | Go to Definition       | N    | ⮑ Default |
| `gr`         | Find References        | N    | ⮑ Default |
| `K`          | Hover Documentation    | N    | ⮑ Default |

## Custom Utilities

| Key          | Description                | Mode | Type      |
| ------------ | -------------------------- | ---- | --------- |
| `<Esc>`      | Clear search highlights    | N    | ★ Custom  |
| `<leader>n`  | Show notifications history | N    | ★ Custom  |
| `<leader>ur` | Redraw/clear hlsearch      | N    | ⮑ Default |

## Plugin Integrations

### Telescope (Fuzzy Finder)

| Key          | Description   | Mode | Type      |
| ------------ | ------------- | ---- | --------- |
| `<leader>ff` | Find files    | N    | ⮑ Default |
| `<leader>fg` | Live grep     | N    | ⮑ Default |
| `<leader>fb` | Buffer search | N    | ⮑ Default |

### Trouble.nvim (Diagnostics)

| Key          | Description                | Mode | Type      |
| ------------ | -------------------------- | ---- | --------- |
| `<leader>xx` | Toggle trouble window      | N    | ⮑ Default |
| `<leader>xw` | Show workspace diagnostics | N    | ⮑ Default |

### Snacks.nvim (Custom)

| Key          | Description   | Mode | Type     |
| ------------ | ------------- | ---- | -------- |
| `<leader>e`  | File explorer | N    | ★ Custom |
| `<leader>fr` | Recent files  | N    | ★ Custom |

## Editing & Formatting

| Key          | Description       | Mode | Type      |
| ------------ | ----------------- | ---- | --------- |
| `<leader>cf` | Format code       | N,V  | ⮑ Default |
| `gco`        | Add comment below | N    | ⮑ Default |
| `gcO`        | Add comment above | N    | ⮑ Default |

## Window Management

| Key          | Description      | Mode | Type      |
| ------------ | ---------------- | ---- | --------- |
| `<leader>-`  | Split below      | N    | ⮑ Default |
| `<leader>\|` | Split right      | N    | ⮑ Default |
| `<leader>wm` | Toggle zoom mode | N    | ⮑ Default |

## Debugging (DAP)

| Key          | Description                  | Mode | Type      |
| ------------ | ---------------------------- | ---- | --------- |
| `<leader>dc` | Start/Continue debug session | N    | ⮑ Default |
| `<leader>dt` | Terminate debug session      | N    | ⮑ Default |

## Git Integration

| Key          | Description    | Mode | Type      |
| ------------ | -------------- | ---- | --------- |
| `<leader>gs` | Git status     | N    | ⮑ Default |
| `<leader>gb` | Git blame line | N    | ⮑ Default |

## Custom Modifications

1. **Buffer Management**: Enhanced with Snacks.nvim for better buffer handling
2. **Tab Navigation**: Custom tab shortcuts (`te`, `<Tab>`, `<S-Tab>`)
3. **Window Splits**: Simplified split creation (`ss`, `sv`)
4. **LSP Rename**: Using IncRename instead of default implementation
5. **Notification System**: Custom history viewer with `<leader>n`

## Default Preserved Behaviors

- Core movement keys (`hjkl`, `gg/G`, etc.)
- Basic file operations (`:w`, `:q`)
- Plugin management with `<leader>l`
- Default LSP capabilities (diagnostics, code actions)
- Telescope file searching workflows
- DAP debugging fundamentals

## Special Notes

- Use `<space>` to activate which-key.nvim helper
- Most customizations focus on:
  - Simplified buffer/tab management
  - Enhanced visual feedback
  - Quality-of-life improvements
- Default keymaps preserved for common plugin integrations
- `Snacks.nvim` appears to be your custom plugin/module with:
  - Notification history
  - Enhanced buffer deletion
  - Custom explorer implementation

> **Tip**: Run `:Telescope keymaps` to see active bindings in real-time
