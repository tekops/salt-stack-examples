check_mk_agent:
  {% if grains['os_family'] == 'Debian' %}
  pkg_source: salt://core/files/check-mk-agent_1.2.2p2-2_all.deb
  {% elif grains['os_family'] == 'RedHat' %}
  pkg_source: salt://core/files/check_mk-agent-1.2.2p2-1.noarch.rpm
  {% endif %}