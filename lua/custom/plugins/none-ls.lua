return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- null_ls.builtins.diagnostics.eslint_d.with({ -- js/ts linter
        --   -- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
        --   condition = function(utils)
        --     return utils.root_has_file(".eslintrc.js") -- change file extension if you use something elseeslint
        --   end,
        -- }),
        null_ls.builtins.formatting.prettier.with({ -- js/ts linter
          -- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
          condition = function(utils)
            return utils.root_has_file(".prettierrc") -- change file extension if you use something elseeslint
          end,
        }),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.golines,
      },
    })

    vim.keymap.set("n", "<leader>ad", vim.lsp.buf.format, {})
  end,
}
