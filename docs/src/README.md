**************************************************************
*                                                            *
* ██╗  ██╗██╗   ██╗███╗   ███╗ █████╗ ███╗   ██╗ █████╗  ██╗ *
* ██║  ██║██║   ██║████╗ ████║██╔══██╗████╗  ██║██╔══██╗███║ *
* ███████║██║   ██║██╔████╔██║███████║██╔██╗ ██║╚██████║╚██║ *
* ██╔══██║██║   ██║██║╚██╔╝██║██╔══██║██║╚██╗██║ ╚═══██║ ██║ *
* ██║  ██║╚██████╔╝██║ ╚═╝ ██║██║  ██║██║ ╚████║ █████╔╝ ██║ *
* ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚════╝  ╚═╝ *
*                                                            *
**************************************************************

## Introduction  

This repo / documentation is a collection of configurations of applications I come across in my daily life. There are some apps I regularly use but then there are others I don't use anymore. 

I've categorized the applications to the following:
- Applications  
- Editors  
- Shells  
- Window Managers  

## Getting Started  

To get started quickly, (assuming the apps you need to configure is already installed), simply clone this directory to the home directory.  

```bash  
git clone https://github.com/deltacircuit/.config  
```

Which will create `~/.config` directory (which is the de-facto location for app configs) and pull the configurations to that folder. 

Although it'll help to run things quickly, I'd recommend cloning to a different location and symlink the apps configs separately to avoid any conflicts (you might've already have some configs on the existing `~/.config` directory.  

```bash  
# Clone to safe place  
git clone https://github.com/deltacircuit/.config ~/dotfiles  

# Symlink app configs  
# Ex: NeoVim  
ln -s ~/dotfiles/nvim ~/.config/nvim
```

Pretty much that's it. I'll document each configurations in depth in their corresponding pages.  

