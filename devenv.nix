{ pkgs, lib, config, inputs, ... }:

{
  packages = [
    pkgs.git
    pkgs.haskellPackages.fourmolu
    pkgs.haskellPackages.cabal-fmt
    pkgs.haskellPackages.ShellCheck
  ];

  languages.haskell.enable = true;
  languages.haskell.package = pkgs.haskell.compiler.ghc982;

  pre-commit.hooks.ormolu.enable = true;
  pre-commit.hooks.ormolu.package = pkgs.haskellPackages.fourmolu;

}
