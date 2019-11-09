module LatestPkg

export LP

include(joinpath(@__DIR__, "..", "deps", "deps.jl"))
include(pkgpath)
using .Pkg

const LP = Pkg

end # module
