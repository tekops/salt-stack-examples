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
    - name: /etc/apache2/sites-enabled/www_xyz_corp.conf
    - source: salt://apache/vhosts/conf/www_xyz_corp.conf
