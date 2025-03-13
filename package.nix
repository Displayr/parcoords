{ pkgs ? import <nixpkgs> {}, displayrUtils }:

pkgs.rPackages.buildRPackage {
  name = "parcoords";
  version = displayrUtils.extractRVersion (builtins.readFile ./DESCRIPTION); 
  src = ./.;
  description = ''
    Create interactive parallel coordinates charts with this htmlwidget
    wrapper for d3.js \href{http://syntagmatic.github.io/parallel-coordinates/}
    {parallel-coordinates}.
  '';
  propagatedBuildInputs = with pkgs.rPackages; [ 
    crosstalk
    htmlwidgets
  ];
}
