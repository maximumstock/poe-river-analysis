{ pkgs ? import <nixpkgs> {}, pythonPackages ? pkgs.python38Packages }:

with pkgs;

mkShell rec {
  buildInputs = [
    python38
    pythonPackages.jupyterlab
    pythonPackages.autopep8
    pythonPackages.pandas
    pythonPackages.psycopg2
    pythonPackages.matplotlib
    pythonPackages.seaborn
  ];
}
