# dotfiles 

## Introduction  

This repo / documentation is a collection of configurations of applications I use in my workstation(s)

I've categorized the applications to the following:
- Applications  
- Editors  
- Shells  
- Window Managers  

## Prerequisites  

- [GNU Stow](https://www.gnu.org/software/stow/)  

## Getting Started  

You can simply clone this repo to the home directory and `stow` the configurations from there. 

```bash  
# Clone this repo to $HOME directory
git clone https://github.com/deltacircuit/dotfiles ~/.dots

# Stow the configuration you want  
cd ~/.dots
stow <package>
```