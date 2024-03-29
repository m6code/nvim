-- Make sure to use clang for compilation on windows
--
-- require('nvim-treesitter.install').compilers = { "clang" }
-- if vim.loop.os_uname().sysname == "Windows_NT" then
--   require('nvim-treesitter.install').compilers = { "clang" }
-- end
 


require'nvim-treesitter.configs'.setup {

 -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "lua", "javascript", "typescript", "php", "java", "json", "css", "markdown", "markdown_inline", "python", "tsx" },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

 -- List of parsers to ignore installing (for "all")
  ignore_install = { "vue", "html" },
  
  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}
