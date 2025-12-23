{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = (import nixpkgs) { inherit system; }; in
    {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          neovim
          git
          fzf
          tree-sitter
          pyright
          nil
          lua-language-server
          texlab
          bash-language-server
          ccls
          xclip
          rocmPackages.clang
          ripgrep
          fd
          curl
          python314
        ];
      };
    }
  );
}
