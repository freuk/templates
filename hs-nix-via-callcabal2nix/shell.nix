{ pkgs ? import <nixpkgs> { } }:
with pkgs;
haskellPackages.shellFor {
  packages = p: with p; [ (callCabal2nix "pdv" ./. {}) ];
  buildInputs = [ haskellPackages.ghcid ormolu cabal-install ];
  withHoogle = false;
}
