{
  __nixpkgs__,
  makePythonVersion,
  makeScript,
  ...
}:
makeScript {
  entrypoint = ./entrypoint.sh;
  name = "python-pypi2nix";
  replace = {
    __argPy37__ = makePythonVersion "3.7";
    __argPy38__ = makePythonVersion "3.8";
    __argPy39__ = makePythonVersion "3.9";
    __argPy310__ = makePythonVersion "3.10";
  };
  searchPaths.bin = [
    __nixpkgs__.curl
    __nixpkgs__.git
    __nixpkgs__.jq
    __nixpkgs__.nix
    __nixpkgs__.poetry
    __nixpkgs__.yj
  ];
}
