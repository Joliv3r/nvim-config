return {
  settings = {

    Lua = {
      diagnostics = {
        globals = { "vim", "spec" },
        disable = {
          "missing-fields",
        }
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
