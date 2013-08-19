apache2:
  pkg:
    - installed
    {% if grains['os_family'] == 'RedHat' %}
    - name: httpd
    {% endif %}
  service:
    - running
    {% if grains['os_family'] == 'Redhat' %}
    - name: httpd
    {% endif %}
    - enable: True
    - require:
      - pkg: apache2