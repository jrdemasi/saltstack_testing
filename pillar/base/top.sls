base:
  # Only things that literally get applied to every host should go here
  '*':
    - users
    - groups
  '{{ grains.id }}':
    - ignore_missing: True
    - minions.{{ grains.id }}