{%- from "ipmi/map.jinja" import ipmi with context %}

{# IPMI modules should not be loaded in virtual servers #}
{%- if grains['virtual_subtype'] is not defined %}
{%- for module in ipmi.ipmi_modules %}
kernel_module-{{ module }}:
  kmod.present:
    - name: {{ module }}
{% endfor %}
{% endif %}
