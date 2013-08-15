include:
  - core.xinetd

check_mk_agent:
  pkg.installed:
    - sources:
      - {{ pillar['check_mk_agent']['pkg_name'] }}: {{ pillar['check_mk_agent']['pkg_source'] }}
    - require:
      - pkg: xinetd