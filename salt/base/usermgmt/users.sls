{% set home_prefix = salt['pillar.get']("config:homedirs", "/home") %}
{% set createhome = salt['pillar.get']("config:createhome", False) %}
{% set machine_tags = salt['pillar.get']("config:tags", None) %}
{% for user, args in pillar['users'].items() %}
    {% if 'tags' in args and args['tags'] != None %}
      {% if args['tags'] | intersect(machine_tags) %}
        {{ user }}:
          user.present:
            - uid: {{ args['uid'] }}
            - gid: {{ args['gid'] }}
            - fullname: {{ args['fullname'] }}
            - home: {{ home_prefix}}/{{ user }}
            - createhome: {{ createhome }}
            {% if args.get('required_groups', []) %}
            - groups: {{ args['required_groups'] }}
            {% else %}
            - groups: []
            {% endif %}
            {% if args.get('groups', []) %}
            - optional_groups: {{ args['groups'] }}
            {% else %}
            - optional_groups: []
            {% endif %}
            - allow_gid_change: True
            - remove_groups: True
      {% else %}
        {{ user }}:
          user.absent
      {% endif %}
    {% else %}
        {{ user }}: 
          user.absent
    {% endif %}
{% endfor %}