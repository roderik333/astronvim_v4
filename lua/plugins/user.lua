return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)   -- override the options using lazy.nvim
      opts.section.header.val = { -- change the header section value
        [[__________           .___           .__ __    ]],
        [[\______   \ ____   __| _/___________|__|  | __]],
        [[ |       _//  _ \ / __ |/ __ \_  __ \  |  |/ /]],
        [[ |    |   (  <_> ) /_/ \  ___/|  | \/  |    < ]],
        [[ |____|_  /\____/\____ |\___  >__|  |__|__|_ \]],
        [[        \/            \/    \/              \/]],
      }
    end,
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "taybart/b64.nvim" },

}

