# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Untagged]

### Added
- plugins highlights (git-conflict) 

### Changed
- change structure

## [1.0.1] 2025-03-08

### Changed
- Minimized code executed at startup

### Fixed
- consider `vim.g.morimo.plugins` value

## [1.0.0] 2025-01-12

### Added
- plugins highlights (dap) 

### Changed
- change plugin structure and option (`plugins = { "treesitter" }` → `plugins = { "treesitter" = true }`)

### Fixed
- close [support change ColorScheme #11](https://github.com/ttak0422/morimo/issues/11)

## [0.1.3] 2024-11-01

### Added
- extras (zellij)
- plugins highlights (nvim-notify) 

## [0.1.2] 2024-07-29

- refactor: code compression [#5](https://github.com/ttak0422/morimo/pull/5)

## [0.1.1] 2024-06-08

### Added

- extras (wezterm)

### Fixed

- fix use of undefined color [#4](https://github.com/ttak0422/morimo/pull/4)

## [0.1.0] 2024-05-31

### Added

- core logic
- builtin highlights (editor, lsp, syntax, diagnostics)
- term highlights
- plugins highlights (treesitter, gitsigns, lir, cmp)
