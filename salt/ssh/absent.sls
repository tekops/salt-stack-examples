openssh:
  pkg:
    - purged

my_key==:
  ssh_auth:
    - absent
    - user: root
    - enc: ssh-rsa