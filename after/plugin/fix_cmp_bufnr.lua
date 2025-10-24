-- Patch for Neovim 0.10: fix 'bufnr expected number, got function' error
local ok, source = pcall(require, "cmp_nvim_lsp.source")
if not ok or not source._request then
  return
end

local old_request = source._request

source._request = function(self, method, params, callback)
  if params and type(params.textDocument) ~= "table" then
    params.textDocument = vim.lsp.util.make_text_document_params(0)
  end
  return old_request(self, method, params, callback)
end
