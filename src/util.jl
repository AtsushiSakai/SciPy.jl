
import PyCall: hasproperty # Base.hasproperty only in Julia 1.2

struct LazyHelp
    o
    keys::Tuple{Vararg{String}}
    LazyHelp(o) = new(o, ())
    LazyHelp(o, k::AbstractString) = new(o, (k,))
end
function show(io::IO, st, h::LazyHelp)
    o = h.o
    for k in h.keys
        o = o[k]
    end
    print(io, _generate_docstring(o))
end
Base.show(io::IO, h::LazyHelp) = show(io, "text/plain", h)
function Base.Docs.catdoc(hs::LazyHelp...)
    Base.Docs.Text() do io
        for h in hs
            show(io, MIME"text/plain"(), h)
        end
    end
end

function _generate_docstring(f)
    py"""
    import inspect

    def get_signature(f):
        try:
            return str(inspect.signature(f))
        except ValueError:
            return ""
    """

    fname = hasproperty(f, "__name__") ? f.__name__ : ""
    sig = hasproperty(f, "__call__") ? py"get_signature"(f) : ""
    fdoc = hasproperty(f, "__doc__") ? f.__doc__ : ""

    # fdoc = replace(fdoc, "\n    " => "\n") # remove beginning tab

    return """
    $(fname)$(sig)
    $(fdoc)
    """
end



