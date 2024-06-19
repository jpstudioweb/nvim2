# My Neovim Configuration

Welcome to my Neovim configuration repository! This setup includes configurations for various LSP servers, formatters, and linters using `mason.nvim`, `nvim-lspconfig`, and `null-ls.nvim`. Feel free to use and modify it to suit your needs.

## Features

- **LSP Servers**: Provides autocompletion, diagnostics, and more for multiple languages.
- **Formatters and Linters**: Ensures code quality and formatting.
- **Easy Setup**: Uses `mason.nvim` for easy installation and management of LSP servers and tools.

## Requirements

Before using this configuration, ensure you have the following installed:

- **Neovim** (version 0.7.0 or higher)
- **Node.js** (version 14 or higher)
- **xsel** or **xclip** (for clipboard support)
- **ripgrep** and **fzf**(for Telescope)
- **Python 3** and `pynvim` package

## Installation

1. **Clone the repository**:

   ```sh
   git clone https://github.com/jpstudioweb/nvim2.git ~/.config/nvim
   ```

2. **Management Plugins**:

   Open Neovim and run:

   ```sh
   :Lazy
   ```

3. **Install Formatters and Linters with Mason**:

   Open Neovim and run:

   ```sh
   :Mason
   ```

4. **Install Additional Dependencies**:

   Ensure you have the following dependencies installed:

   ```sh
   sudo apt-get install xsel
   npm install -g neovim
   gem install neovim
   pip install neovim
   ```
