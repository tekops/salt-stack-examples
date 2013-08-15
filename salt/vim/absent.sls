# pkg.install
vim:
  pkg:
    {% if grains['os_family'] == 'RedHat' %}
    - name: vim-enhanced
    {% elif grains['os_family'] == 'Debian' %}
    - name: vim-nox
    {% endif %}
    - purged