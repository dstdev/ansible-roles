{% for line in spack_prefix_lines %}
{{line}}
{%endfor%}
set SPACK_ROOT={{spack_root}}
if ( -f $SPACK_ROOT/share/spack/setup-env.sh ) then
    source $SPACK_ROOT/share/spack/setup-env.csh
    {% for unuse_module in spack_unuse_module_paths %}
    module unuse {{unuse_module}}
    {% endfor %}
    {% for default_module in spack_default_module_paths %}
    module use {{default_module}}
    {% endfor %}
endif

if ( ! $?__Init_Default_Modules )  then
  setenv __Init_Default_Modules 1
  if ( ! $?LMOD_SYSTEM_DEFAULT_MODULES ) then
    setenv LMOD_SYSTEM_DEFAULT_MODULES "StdEnv"
  endif
  module --initial_load restore
else
  module refresh
endif
