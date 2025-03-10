return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Typescript/Javascript Lsp
      tsserver = {
        filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact"},
        root_dir = require("lspconfig.util").root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
      },
      -- Helm LSP
      helm_ls = {
        filetypes = { "helm" },
        cmd = { "helm_ls", "serve" },
        root_dir = require("lspconfig.util").root_pattern("Chart.yaml"),
      },
    },
  },
}

