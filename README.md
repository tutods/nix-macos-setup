```
nix --extra-experimental-features 'nix-command flakes'  build ".#darwinConfigurations.macbook.system"
./result/sw/bin/darwin-rebuild switch --flake ".#macbook"
```