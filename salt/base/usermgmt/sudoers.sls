add sre sudo group:
  file.managed:
    - name: /etc/sudoers.d/sre
    - source:
      - salt://usermgmt/files/sre.sudoers
    - user: root
    - group: root
    - mode: 440
add webdev sudo group:
  file.managed:
    - name: /etc/sudoers.d/webdev
    - source:
      - salt://usermgmt/files/webdev.sudoers
    - user: root
    - group: root
    - mode: 440