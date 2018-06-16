{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    python27Packages.pyserial
  ];

  ARDUINO_DIR="/home/brachiel/.nix-profile/share/arduino";
  ARDMK_DIR="/home/brachiel/src/haskino/firmware/Arduino-Makefile/";
  #AVR_TOOLS_DIR=/usr/include
}

