{% for line in spack_prefix_lines %}
{{line}}
{%endfor%}
set SPACK_ROOT={{spack_root}}
set LMOD_SYSTEM_DEFAULT_MODULES={{spack_default_modules}}
source $SPACK_ROOT/share/spack/setup-env.csh
{% for unuse_module in spack_unuse_module_paths %}
module unuse {{unuse_module}}
{% endfor %}
{% for default_module in spack_default_module_paths %}
module use {{default_module}}
{% endfor %}

{% if spack_root_only_module_paths %}
if ( "$USER" != "root" ) then
{% for module_path in spack_root_only_module_paths %}
  module unuse {{module_path}}
{% endfor %}
endif
{% endif %}

