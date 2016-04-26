module HTSLIB

#using Logging
#@Logging.configure(level=DEBUG)

@linux_only const LIBHTS = Libdl.find_library(["libhts.so"],[joinpath(dirname(dirname(@__FILE__)),"deps/usr/lib")])
@osx_only const LIBHTS = Libdl.find_library(["libhts.dylib"],[joinpath(dirname(dirname(@__FILE__)),"deps/usr/lib")])

#=
import Base:open,readline,eof,close

export open,
       sam_open,
       bam_open,
       readline,
       writeline,
       eof,
       write,
       close
=#
include("HT.jl")
     
module HTSLIB_deprecated

include("bam/bam.jl")
include("bam/pileup.jl")
include("user/bam.jl")
include("user/sam.jl")
include("user/query.jl")
include("utils/utils.jl")

end

end
