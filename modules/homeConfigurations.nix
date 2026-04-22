{ lib, ... }:
let
  inherit (lib)
    mkOption
    types
    ;
in
{
  options = {
    flake.homeConfigurations = mkOption {
      type = types.lazyAttrsOf types.raw;
      default = { };
    };
  };
}
