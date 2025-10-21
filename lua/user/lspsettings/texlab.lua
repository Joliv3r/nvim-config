return {
  settings = {
    ['texlab'] = {
      build = {
        -- executable = "pdflatex",
        onSave = true,
        -- forwardSearchAfter = true,
      },
      forwardSearch = {
        executable = "zathura",
        args = { "--synctex-forward", "%l:1:%f", "%p" },
      }
    }
  }
}
