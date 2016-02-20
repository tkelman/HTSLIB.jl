src = "../src"
if !in(src,LOAD_PATH)
    push!(LOAD_PATH, src)
end
using HTSLIB
using Base.Test

#include("bam.jl")
include("user/bam.jl")
include("user/header.jl")
include("user/sam.jl")
#include("user/query.jl")
