check_mk_agent:
  pkg.installed:
    - sources:
      - check-mk-agent: {{ pillar['check_mk_agent']['pkg_source'] }}
    - require:
      - pkg: xinetd