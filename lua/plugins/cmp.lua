return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "milanglacier/minuet-ai.nvim",
    },
    config = function()
      require("cmp").setup({
        sources = {
          { name = "minuet" },
        },
        mapping = {
          ["<A-y>"] = require("minuet").make_cmp_map(),
        },
      })
    end
  }
}
