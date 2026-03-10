# dotfiles

My dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/
├── gh/          → ~/.config/gh/
├── ghostty/     → ~/.config/ghostty/
├── git/         → ~/.config/git/
├── homebrew/    → ~/.config/homebrew/
├── iterm2/      → ~/.config/iterm2/
├── p10k/        → ~/.config/p10k/
├── tmux/        → ~/.config/tmux/
└── zshrc/       → ~/.config/zshrc/ (+ symlinked to ~/.zshrc)
```

## Setup

```bash
git clone https://github.com/hasaniqbal777/dotfiles.git ~/dotfiles
cd ~/dotfiles
./setup.sh
```

## Dependencies

```bash
brew bundle --file=~/.config/homebrew/Brewfile
```
