return {
  'Mofiqul/vscode.nvim', -- VSCode theme plugin
  lazy = false,
  priority = 1000,
  config = function()
    -- Customize theme settings if necessary
    vim.g.vscode_style = 'dark' -- Choose 'dark' or 'light' style
    vim.g.vscode_italic_comments = false -- Disable italic comments
    vim.g.vscode_bold = false -- Disable bold text
    vim.g.vscode_transparent = true -- Set transparency for the background

    -- Load the VSCode colorscheme
    require('vscode').setup()

    -- Toggle background transparency
    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      vim.g.vscode_transparent = bg_transparent
      vim.cmd [[colorscheme vscode]]
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
