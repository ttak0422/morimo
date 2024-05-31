<h1 align="center">morimo</h1>
<div align="center">
  <p>Performance-focused neovim colorscheme designed for colorblind users.</p>
</div>

> [!WARNING]
> This project is currently unstable and under active development.

![image](https://github.com/ttak0422/morimo/assets/15827817/8ec442bb-47d2-4fc9-b505-477394b3ee7b)

## Requirements

[neovim (v0.9+)](https://github.com/neovim/neovim)

## Features

- **Colorblind-Friendly**: This color scheme is designed to be accessible for users with color blindness.
- **Performance-Oriented**: Built with minimal configuration to ensure high performance and support for lazy loading settings.
- **Borderless Compatibility**: Optimized for use with `border=none` settings, ensuring a clean and seamless appearance.

## Usage

```lua
-- config
vim.g.morimo = {
	-- Specify the integration plugins (/plugins/) to be loaded at startup.
	-- Users can also load this using `load` command. (e.g. `lua require("morimo").load("treesitter")`)
	plugins = {"treesitter"}
}
vim.cmd("colorscheme morimo")
```

## Integration 

- [nvim-treesitter (treesitter)](https://github.com/nvim-treesitter/nvim-treesitter)
- [gitsigns.nvim (gitsigns)](https://github.com/lewis6991/gitsigns.nvim)
- [lir.nvim (lir)](https://github.com/tamago324/lir.nvim)
- [nvim-cmp (cmp)](https://github.com/hrsh7th/nvim-cmp)
