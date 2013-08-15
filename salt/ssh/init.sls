openssh-client:
  pkg.installed:
    {% if grains['os_family'] == 'Debian' %}
    - name: openssh-client
    {% elif grains['os_family'] == 'RedHat' %}
    - name: openssh-clients
    {% endif %}
  
my_key==:
  ssh_auth:
    - present
    - user: root
    - enc: ssh-rsa