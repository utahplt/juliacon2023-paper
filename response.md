@lucaferranti ok.

@dpsanders @JeffreySarnoff many thanks for the reviews.

We propose the following changes to the paper and its software:

#### Paper TODO

- [ ] clarify what the FlowFPX toolkit is and its relationship to FloatTracker.jl ("TF.jl" for short)
- [ ] rename FloatTracker.jl to TrackedFloats.jl
- [ ] explicitly say there is no formal link between TF.jl and GPU-FPX
- [ ] spell out FPX = Floating Point eXception, somewhere
- [ ] clarify the explanation of how injection works, explain how `odds` is used
- [ ] fix the `floatmax` issue
- [ ] acknowledge the threat with thread safety

#### Software TODO

- [ ] rename FloatTracker.jl to TrackedFloats.jl
- [ ] add contributor guidelines
- [ ] add a license to CSTG
- [ ] add structure to the TF.jl documentation
- [ ] make sure TF.jl has appropriate API documentation.
      * @dpsanders we need clarification here. TF.jl has docstrings already; what needs to happen to turn those into API documentation? <https://docs.juliahub.com/General/FloatTracker/stable/autodocs/>
- [ ] export only functions that start with `ft_`


#### Future Work

Each of the following needs a matching GitHub issue. @dpsanders opened issues for several of these --- maybe all. Thanks!!! We'll confirm, put links below, and then mark these as completed.

- [ ] add tracked Ints (this is a great first issue for a future new contributor)
- [ ] create an in-memory logging interface (exposing the current one may suffice)
- [ ] fix the thread safety issue
- [ ] explore Cuda.jl for GPU integration
- [ ] add firm CSTG integration (rewrite in Julia, use BinaryBuilder.jl, or
      write a loose Julia API)


Please comment to let us know whether these TODOs sound good, or if you need to see other changes in the next revision.

