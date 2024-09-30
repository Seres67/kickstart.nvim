<<<<<<< HEAD
return {
    'numtostr/FTerm.nvim',
    config = function()
        require('FTerm').setup {
            ft = 'kitty'
        }
        vim.api.nvim_create_user_command("FTermToggle", require('FTerm').toggle, { bang = true })
        vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
        vim.api.nvim_create_user_command('CargoBuild', function()
            require('FTerm').scratch({ cmd = { 'cargo', 'build' } })
        end, { bang = true })
        vim.api.nvim_create_user_command('CargoRun', function()
            require('FTerm').run({ 'cargo', 'run' })
        end, { bang = true })
        vim.api.nvim_create_user_command('MesonSetup', function()
            require('FTerm').run({ 'meson', 'setup', 'build' })
        end, { bang = true })
        vim.api.nvim_create_user_command('NinjaBuild', function()
            require('FTerm').scratch({ cmd = { 'ninja', '-C', 'build' } })
        end, { bang = true })
    end,
}
=======
return {
    'numtostr/FTerm.nvim',
    config = function()
        require('FTerm').setup {
            ft = 'kitty'
        }
        vim.api.nvim_create_user_command("FTermToggle", require('FTerm').toggle, { bang = true })
        vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
        vim.api.nvim_create_user_command('CargoBuild', function()
            require('FTerm').scratch({ cmd = { 'cargo', 'build' } })
        end, { bang = true })
        vim.api.nvim_create_user_command('CargoRun', function()
            require('FTerm').run({ 'cargo', 'run' })
        end, { bang = true })
        vim.api.nvim_create_user_command('MesonSetup', function()
            require('FTerm').run({ 'meson', 'setup', 'build' })
        end, { bang = true })
        vim.api.nvim_create_user_command('NinjaBuild', function()
            require('FTerm').scratch({ cmd = { 'ninja', '-C', 'build' } })
        end, { bang = true })
    end,
}
>>>>>>> 5d45194ca2c26d0dd543c60a56a712156c45f7fc
