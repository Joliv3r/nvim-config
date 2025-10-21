return {
  cmd = { "rust-analyzer" },
  settings = {
    ["rust-analyzer"] = {
      rustc = { source = "discover" },
      cargo = {
        allFeatures = true,
      },
      check = {
        command = "clippy",
      },
    },
  },
}
