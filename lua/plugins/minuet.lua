return {
  {
    "milanglacier/minuet-ai.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require('minuet').setup {
        virtualtext = {
          auto_trigger_ft = {"*"},
          keymap = {
            accept = '<A-A>',
            accept_line = '<A-a>',
            accept_n_lines = '<A-z>',
            prev = '<A-[>',
            next = '<A-]>',
            dismiss = '<A-e>',
          },
        },
        provider = 'openai_fim_compatible',
        throttle = 5000,
        notify = false,
        provider_options = {
          openai_fim_compatible = {
            api_key = 'PATH',
            name = 'Ollama',
            end_point = 'http://localhost:11434/v1/completions',
            model = 'qwen2.5-coder:7b',
          },
        },
      }
    end,
  }
}
