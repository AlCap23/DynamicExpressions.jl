@everywhere include("/var/folders/1h/xyppkvx52cl6w3_h8bw_gdqh0000gr/T/tmpieqh636p/hyperparams.jl")
@everywhere include("/var/folders/1h/xyppkvx52cl6w3_h8bw_gdqh0000gr/T/tmpieqh636p/dataset.jl")
@everywhere include("/Users/mcranmer/sr.jl/julia/sr.jl")
fullRun(100, npop=1000, ncyclesperiteration=300, fractionReplaced=0.100000f0, verbosity=round(Int32, 1000000000.000000), topn=10)
rmprocs(nprocs)
