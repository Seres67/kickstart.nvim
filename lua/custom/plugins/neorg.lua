-- return {
  -- 'nvim-neorg/neorg',
  -- dependencies = { 'nvim-lua/plenary.nvim' },
  -- build = ':Neorg sync-parsers',
  -- config = function()
    -- require('neorg').setup {
      -- load = {
        -- ['core.defaults'] = {}, -- Loads default behaviour
        -- ['core.concealer'] = {}, -- Adds pretty icons to your documents
        -- ['core.dirman'] = { -- Manages Neorg workspaces
          -- config = {
            -- workspaces = {
              -- notes = '~/notes',
            -- },
            -- default_workspace = 'notes',
          -- },
        -- },
        -- ['core.qol.toc'] = {
          -- config = {
            -- close_after_use = true,
          -- },
        -- },
      -- },
    -- }
    -- vim.wo.foldlevel = 99
    -- vim.wo.conceallevel = 2
  -- end,
-- }

return {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {}, -- Loads default behaviour
        ['core.concealer'] = {}, -- Adds pretty icons to your documents
        ['core.dirman'] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = '~/notes',
            },
            default_workspace = 'notes',
          },
        },
        ['core.qol.toc'] = {
          config = {
            close_after_use = true,
          },
        },
      },
    }
    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}