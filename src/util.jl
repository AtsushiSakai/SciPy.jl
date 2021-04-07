
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

    return """
    $(fname)$(sig)
    $(fdoc)
    """
end



