Inspired by: [Dreams of Code - Tmux has forever changed the way I write code.](https://www.youtube.com/watch?v=DzNmUNvnB04)

# Managing Plugins
[Tmux Plugin Manager](https://github.com/tmux-plugins/tpm?tab=readme-ov-file#installing-plugins)

# Commonly used button configurations
## Top level:
[Oh My Zsh Tmux Plugin Aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux#aliases)
## Inside Tmux
### Prefix
`Ctrl + Space`

### Windows
- New Window:
  `<prefix> + c`
- Jump to Window by index:
  `<prefix> + <window index>`
- Scroll through all open Windows
  `<prefix> + n`
  `<prefix> + p`

### Panes
- New Vertical Pane:
  `<prefix> + %`
- New Horizontal Pane:
  `<prefix> + "`
- Navigate through Panes in a Window
  `Ctrl + h/j/k/l`

### Copy-paste
There are 2 ways:
1. Highlight with mouse. When highlight is gone, the previously highlighted string
   will be in clipboard.
2. Enter Copy Mode with `<prefix> + [`, move around in Copy Mode with Vi movements,
   highlight the string, and press enter. The highlighted string will be in clipboard.
