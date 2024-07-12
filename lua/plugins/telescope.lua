-- plugins/telescope.lua:
return  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = {{ 'nvim-lua/plenary.nvim' },{
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },{
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}},
      opt = {
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
          },
          file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
        }
      },
      config = function()
        
        local telescope = require('telescope')
        telescope.load_extension('fzf')
        telescope.load_extension('file_browser')
        
        require('core.mappings.telescope')
      end
}
