let current= import <nixpkgs> {};
in
current.stdenv.mkDerivation {
  name = "xhk";

  buildInputs = [ current.gcc current.automake current.autoconf current.pkgconfig
   current.xorg.libX11
   current.xorg.libXext
   current.xorg.libXtst
   current.xorg.libXi.dev current.xorg.libXi.dev.out];
}
