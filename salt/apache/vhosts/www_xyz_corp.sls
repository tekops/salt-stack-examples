include:
  - apache

extend:
  apache2:
    service:
      - require:
        - file: www.xyz.corp
      - watch:
        - file: www.xyz.corp


www.xyz.corp:
  file.managed:
    {% if grains['os_family'] == 'RedHat' %}
    - name: /etc/httpd/conf.d/www_xyz_corp.conf
    {% elif grains['os_family'] == 'Debian'  %}
    - name: /etc/apache2/sites-enabled/www_xyz_corp.conf
    {% endif %}
    - source: salt://apache/vhosts/conf/www_xyz_corp.conf
