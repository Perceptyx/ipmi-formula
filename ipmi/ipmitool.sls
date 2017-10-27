{%- from "ipmi/map.jinja" import ipmi with context %}

ipmitool:
  pkg.installed:
    - name: {{ ipmi.ipmitool_pkg }}
    - refresh: True
