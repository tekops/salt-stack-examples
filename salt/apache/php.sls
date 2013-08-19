include:
  - http

php:
  pkg:
    - installed
    {% if grains['os_family'] == 'Debian' %}
    - name: php5
    {% endif %}
    - require_in:
      - service: httpd
