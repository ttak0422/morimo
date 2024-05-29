<h1 align="center">morimo</h1>
<div align="center">
  <p>Performance-focused neovim colorscheme designed for colorblind users.</p>
</div>

> [!WARNING]
> This project is currently unstable and under active development.

## Requirements

[neovim (v0.9+)](https://github.com/neovim/neovim)

## Usage

```lua
-- morimo only supports termguicolors.
vim.o.termguicolors = true

-- config
vim.g.morimo = {
	-- Specify the integration plugins (/plugins/) to be loaded at startup.
	-- Users can also load this using `load` command. (e.g. `lua require("morimo").load("treesitter")`)
	plugins = {"treesitter"}
}
vim.cmd("colorscheme morimo")
```

## Integration (WIP)

- [nvim-treesitter (treesitter)](https://github.com/nvim-treesitter/nvim-treesitter)
- [gitsigns.nvim (gitsigns)](https://github.com/lewis6991/gitsigns.nvim)
- [lir.nvim (lir)](https://github.com/tamago324/lir.nvim)
