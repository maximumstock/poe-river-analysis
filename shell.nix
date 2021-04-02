{ pkgs ? import <nixpkgs> {}, pythonPackages ? pkgs.python38Packages }:

with pkgs;

mkShell rec {
  buildInputs = [
    stdenv.cc.cc.lib
    clangStdenv
    pythonPackages.jupyter_core
    pythonPackages.jupyterlab
  ];
}
