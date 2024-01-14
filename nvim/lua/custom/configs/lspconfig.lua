local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities
}

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.texlab.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  -- settings = { 
  --   texlab = {
  --     build = {
  --       args = { "-pv", "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
  --       forwardSearchAfter = true,
  --       onSave = true
  --     },
  --   }
  -- },
  filetypes = {"tex", "bib", "sty", "plaintex"}
})