module TestLale
using Test

# suppress warnings
@info "suppressing PyCall warnings"
using PyCall
warnings = pyimport("warnings")
warnings.filterwarnings("ignore")

# test modules
include("test_sklearn.jl")
include("test_autogen.jl")
include("test_lalepreprocessing.jl")
include("test_laleoptimizer_sk.jl")
include("test_laleoptimizer_ag.jl")

end
