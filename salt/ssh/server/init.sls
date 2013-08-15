openssh-server:
  pkg.installed

ssh_server:
  service:
    - running
    {% if grains['os_family'] == 'Debian' %}
    - name: ssh
    {% elif grains['os_family'] == 'RedHat' %}
    - name: sshd
    {% endif %}
  require:
    - pkg: openssh-server