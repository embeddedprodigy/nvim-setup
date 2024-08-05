return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim", --commmented because plenary is on telescope
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
        })
--for neotree keymaps
        --vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', {})
        --vim.keymap.set('n', '<C-n><C-f>', ':Neotree filesystem reveal left<CR>', {})
        vim.keymap.set('n', '<leader>nff', ':Neotree action=focus source=filesystem position=float toggle=true<CR>', {})
        vim.keymap.set('n', '<leader>nfl', ':Neotree action=focus source=filesystem position=left toggle=true<CR>', {})
        vim.keymap.set('n', '<leader>nfr', ':Neotree action=focus source=filesystem position=right toggle=true<CR>', {})
        vim.keymap.set('n', '<leader>nbf', ':Neotree action=focus source=buffers    position=float toggle=true<CR>', {})
        vim.keymap.set('n', '<leader>nbl', ':Neotree action=focus source=buffers    position=left toggle=true<CR>', {})
        vim.keymap.set('n', '<leader>nbr', ':Neotree action=focus source=buffers    position=right toggle=true<CR>', {})
    end
}
