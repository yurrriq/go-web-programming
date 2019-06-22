with import <nixpkgs> {
  overlays = [
    (import <nur> {}).repos.yurrriq.overlays.nur
    (self: super: {
      xelatex-noweb = (super.texlive.combine {
        inherit (super) noweb;
        inherit (super.texlive) scheme-small
          datetime
          dirtytalk
          fmtcount
          framed
          fvextra
          hardwrap
          ifplatform
          latexmk
          minted
          titlesec
          todonotes
          tufte-latex
          xetex
          xstring;
      });
    })
  ];
};

mkShell {
  buildInputs = with pkgs; [
    go_1_12
    iosevka
    noweb
    # which
    xelatex-noweb
  ];
}
