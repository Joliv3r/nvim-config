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
      hint = {
        enable = true,
        arrayIndex = "Disable",
        await = true,
        paramName = "Disable",
        paramType = true,
        semicolon = "All",
        setType = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
