function findpkgpath()
    for depot in DEPOT_PATH
        path = joinpath(depot, "dev", "Pkg", "src", "Pkg.jl")
        isfile(path) && return path
    end
    error("Pkg.jl is not checked out at `dev/Pkg` in a depot (e.g., `~/.julia/dev/Pkg`).")
end

code = """
const pkgpath = $(repr(findpkgpath()))
"""

write(joinpath(@__DIR__, "deps.jl"), code)
