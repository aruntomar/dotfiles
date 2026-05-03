return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic", -- or "strict", "off"
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      },
    },
  },
}
