{ pkgs ? import <nixpkgs> {}
, mkShell ? pkgs.mkShell
}:

mkShell {
  buildInputs = with pkgs; [
    go_1_12
  ];
}
