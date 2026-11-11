{
  description = "My NixOS configuration";

  inputs = {
         nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

         noctalia-greeter = {
                  url = "github:noctalia-dev/noctalia-greeter";
                  inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }: {
           nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
           system = "x86_64-linux";
           modules = [
           ./configuration.nix
      ];
    };
  };
}
