{% for line in spack_prefix_lines %}
{{line}}
{%endfor%}
export SPACK_ROOT={{spack_root}}
if [-f $SPACK_ROOT/share/spack/setup-env.sh ]; then
    export LMOD_SYSTEM_DEFAULT_MODULES={{spack_default_modules}}
    . $SPACK_ROOT/share/spack/setup-env.sh
    {% for unuse_module in spack_unuse_module_paths %}
    module unuse {{unuse_module}}
    {% endfor %}
    {% for default_module in spack_default_module_paths %}
    module use {{default_module}}
    {% endfor %}
fi
