{% set machine_tags = salt['pillar.get']("config:tags", None) %}
{% for group, args in pillar['groups'].items() %}
    {% if 'tags' in args and args['tags'] != None %}
      {% if args['tags'] | intersect(machine_tags) %}
    add group {{ group }}:
      group.present:
        - name: {{ group }}
        - gid: {{ args['gid'] }}
      {% else %}
    remove {{ group }}:
      group.absent
      {% endif %}
    {% else %}
    notags remove {{ group }}:
      group.absent
    {% endif %}
{% endfor %}