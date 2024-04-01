return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      servers = {
        ocamllsp = { mason = false },
      },
    },
  },
}
