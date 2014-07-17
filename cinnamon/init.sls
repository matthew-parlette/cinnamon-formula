{% from "cinnamon/map.jinja" import cinnamon with context %}

linuxmint-keyring:
  pkg:
    - latest
    - name: {{ cinnamon.keyring_pkg }}
    - require:
      - pkgrepo: cinnamon

cinnamon:
  pkgrepo.managed:
    - name: {{ cinnamon.pkgrepo }}
    - file: {{ cinnamon.pkgrepo_file }}
  pkg:
    - latest
    - name: {{ cinnamon.pkg }}
    - require:
      - pkg: linuxmint-keyring
