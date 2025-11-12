return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "main",
        path = "~/Documents/2_Obsidian",
      },
      -- Add more workspaces as needed
      -- {
      --   name = "project",
      --   path = "~/Documents/1_Project",
      -- },
    },

    -- Use [[wiki-links]] style
    preferred_link_style = "wiki",

    -- Optional: daily notes in main vault
    daily_notes = {
      folder = "daily",
      date_format = "%Y-%m-%d",
    },

    -- Disable some features to keep it lightweight
    disable_frontmatter = false,

    -- Follow links with gf
    follow_url_func = function(url)
      vim.fn.jobstart({"open", url})
    end,
  },
}
