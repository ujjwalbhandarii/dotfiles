# `.config` Repository

This repository contains my personal configuration files for **Neovim** and **tmux**. These configurations are created to maintain a clean, centralized setup.

---

## 📂 Contents

- **Neovim**: Custom configuration for Neovim located in the `nvim` directory.
- **tmux**: A `.tmux.config` file with tailored settings for terminal multiplexing.

---

## 🚀 Getting Started

Follow the steps below to clone this repository and set up the configurations for **Neovim** and **tmux**.

### Step 1: Clone the Repository

Clone this repository into the `~/.config` directory:

```bash
git clone https://github.com/ujjwalbhandarii/.config
```

### Step 2: Create Symbolic Links

You need to create symbolic links pointing to the configuration files in this repository to make them executable by their respective applications.

🔹 Neovim Configuration
Create a symlink to link the Neovim configuration directory:

```bash
ln -s ~/.config/nvim ~/.config/nvim
```

🔹 tmux Configuration
Create a symlink to link the tmux configuration file:

```bash
ln -s ~/.config/.tmux.config ~/.tmux.conf
```

### Step 3: Reload or Restart
After creating the symbolic links, reload or restart the applications:

- Neovim: Open Neovim and verify that the configuration is applied.
- tmux: If tmux is already running, reload the configuration with the following command:

```bash
tmux source-file ~/.tmux.conf
```
