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
      },
    },
  },
}
