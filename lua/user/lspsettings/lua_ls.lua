return {
  settings = {

    Lua = {
      diagnostics = {
        globals = { "vim", "spec" },
        missing_parameters = false, -- Missing fields
      },
      runtime = {
        version = "LuaJIT",
        special = {
          spec = "require",
        }
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
