# LatestPkg: use the latest Pkg.jl

## Usage

### Step 1: Get Pkg.jl

```console
$ cd ~/.julia  # or any of your `JULIA_DEPOT_PATH`

$ cd dev

$ git clone https://github.com/JuliaLang/Pkg.jl Pkg
```

### Step 2: Install LatestPkg.jl

```
(1.x) pkg> add https://github.com/tkf/LatestPkg.jl
```

Re-build when something went wrong

```
(1.x) pkg> build LatestPkg
```

### Step 3: Use the latest Pkg

```julia
julia> using LatestPkg

julia> LatestPkg.add("SomePackage")

julia> LP.add("SomePackage")  # `LP` is a shorthand of `LatestPkg.Pkg`
```
