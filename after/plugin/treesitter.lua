require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "lua"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  auto_install = true,
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
