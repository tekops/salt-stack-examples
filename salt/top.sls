base:
  '*':
    - core

  'roles:webserver-apache':
      - match: grain
      - apache
      - apache.vhosts.www_xyz_corp