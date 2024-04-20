return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      servers = {
        ocamllsp = { mason = false },
        emmet_language_server = {
          filetypes = { "html", "css", "typescriptreact", "heex" },
        },
        tailwindcss = {
          filetypes = { "html", "heex" },
        },
      },
      setup = {
        rust_analyzer = function(_, _)
          vim.g.rustaceanvim = {
            server = {
              on_attach = function(_, bufnr)
                vim.keymap.set("n", "<leader>cR", function()
                  vim.cmd.RustLsp("codeAction")
                end, { desc = "Code Action", buffer = bufnr })
                vim.keymap.set("n", "<leader>dr", function()
                  vim.cmd.RustLsp("debuggables")
                end, { desc = "Rust Debuggables", buffer = bufnr })
                vim.lsp.inlay_hint.enable(bufnr)
              end,
            },
          }
        end,
      },
    },
  },
}
