check_mk_agent:
  {% if grains['os_family'] == 'Debian' %}
  pkg_source: salt://check-mk-agent/files/check-mk-agent_1.2.2p2-2_all.deb
  pkg_name: check-mk-agent
  {% elif grains['os_family'] == 'RedHat' %}
  pkg_source: salt://check-mk-agent/files/check-mk-agent-1.2.2p2-1.noarch.rpm
  pkg_name: check_mk-agent
  {% endif %}