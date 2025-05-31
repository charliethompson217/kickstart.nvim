-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('cyberdream').setup {
        transparent = true,
        italic_comments = true,
      }
      vim.cmd 'colorscheme cyberdream'
    end,
  },
  {
    'MunifTanjim/prettier.nvim',
    config = function()
      require('prettier').setup {
        bin = 'prettier',
        filetypes = {
          'css',
          'graphql',
          'html',
          'javascript',
          'javascriptreact',
          'json',
          'less',
          'markdown',
          'scss',
          'typescript',
          'typescriptreact',
          'yaml',
        },
        cli_options = {
          config_precedence = 'prefer-file',
        },
      }
    end,
  },
}
