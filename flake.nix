{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  };

  outputs = inputs: {
    packages = builtins.mapAttrs (system: pkgs: let lib = pkgs.lib; in rec {
      # The theme themes/devfest-theme-hugo/README.md 
      # explicitly mentions that one should install stuff in package.json, hence the use of buildNpmPackages
      # to install postcss etc
      tqc-website = let
        # We first download the theme etc installed via the go modules
        tqc-website-gomod = pkgs.stdenv.mkDerivation {
          name = "hugo-go-modcache";
          # We only depend on these two files, otherwise this redownloads everything if any other file is changed
          src = lib.fileset.toSource {
            root = ./.;
            fileset = lib.fileset.unions [ ./go.mod ./go.sum ];
          };
          nativeBuildInputs = with pkgs; [
            go
          ];
          outputHashMode = "recursive";
          outputHashAlgo = "sha256";
          outputHash = "sha256-ZD+lwouj4XLEzZk0CnjvqgAvU8HFZLHa57mvYW0Ctr4=";
          # Go will use $HOME to know where to put files, and we tell it to store the cache in $out
          buildPhase = ''
            export HOME=$TMPDIR GOMODCACHE=$out
            go mod download
          '';
          # Installation is already performed via the GOMODCACHE=$out variable
          dontInstall = true;
        };
      in pkgs.buildNpmPackage (finalAttrs: {
        name = "tqc-website";
        src = ./.;

        nativeBuildInputs = [
          pkgs.hugo
          pkgs.dart-sass
          pkgs.go
          pkgs.git
        ];
        
        npmDepsHash = "sha256-BydcGA4kuYjrS9RY/JzzuhS/57JKJ3biqjBn8337R+s=";

        buildPhase = ''
          export GOMODCACHE=${tqc-website-gomod}
          hugo build --minify
        '';
        
        installPhase = ''
          mkdir -p $out/share/tqc-website
          mkdir -p $out/bin
          cp -r public/* $out/share/tqc-website
          cat << EOF > $out/bin/tqc-website
          #!${pkgs.bash}/bin/bash
          ${inputs.nixpkgs.lib.getExe pkgs.serve} $out/share/tqc-website
          EOF
          chmod +x $out/bin/tqc-website
        '';
      });

      default = inputs.self.packages.${system}.tqc-website;
    }) inputs.nixpkgs.legacyPackages;
  };
}
