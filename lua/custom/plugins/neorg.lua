return {
  'nvim-neorg/neorg',
  dependencies = { 'nvim-lua/plenary.nvim' },
  build = ':Neorg sync-parsers',
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
  -- {
  --   'vhyrro/luarocks.nvim',
  --   branch = 'more-fixes',
  --   config = function()
  --     require('luarocks').setup {}
  --   end,
  -- },
  -- {
  --   'nvim-neorg/neorg',
  --   branch = 'luarocks',
  --   dependencies = { 'luarocks.nvim' },
  --   config = function()
  --     require('neorg').setup {
  --       load = {
  --         ['core.defaults'] = {}, -- Loads default behaviour
  --         ['core.concealer'] = {}, -- Adds pretty icons to your documents
  --         ['core.dirman'] = { -- Manages Neorg workspaces
  --           config = {
  --             workspaces = {
  --               notes = '~/notes',
  --             },
  --             default_workspace = 'notes',
  --           },
  --         },
  --         ['core.qol.toc'] = {
  --           config = {
  --             close_after_use = true,
  --           },
  --         },
  --       },
  --     }
  --   end,
  -- },
}
