httpd:
  pkg:
    - removed
    {% if grains['os_family'] == 'Debian' %}
    - name: apache2
    {% endif %}
  service:
    - dead
    {% if grains['os_family'] == 'Debian' %}
    - name: apache2
    {% endif %}
    - enable: False
    - require:
      - pkg: httpd