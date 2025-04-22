return {
    {
        "Saghen/blink.cmp",
        dependencies = {
            "milanglacier/minuet-ai.nvim",
        },
        config = function()
            require("blink-cmp").setup({
                sources = {
                    default = { "lsp", "path", "buffer", "snippets", "minuet" },
                    providers = {
                        minuet = {
                            name = "minuet",
                            module = "minuet.blink",
                            async = true,
                            timeout_ms = 3000,
                            score_offset = 50,
                        }
                    }
                },
                keymap = {
                    ["<A-y>"] = require("minuet").make_blink_map()
                },
                completion = { trigger = { prefetch_on_insert = false } },
            })
        end
    }
}
