-- Treesitter parser and query installer
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    -- Install parsers for your languages
    require'nvim-treesitter'.install {
      'bash',
      'c',
      'cpp',
      'python',
      'terraform',
      'cuda',
      'javascript',
      'typescript',
      'tsx',
      'diff',
      'html',
      'css',
      'json',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'vim',
      'vimdoc',
    }

    -- Enable treesitter features for installed languages
    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'bash', 'c', 'cpp', 'python', 'terraform', 'cs', 'cuda',
        'javascript', 'typescript', 'typescriptreact',
        'diff', 'html', 'css', 'json', 'lua', 'markdown', 'vim',
      },
      callback = function()
        -- Syntax highlighting (provided by Neovim core)
        vim.treesitter.start()

        -- folds, provided by Neovim
        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo.foldmethod = 'expr'

        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
