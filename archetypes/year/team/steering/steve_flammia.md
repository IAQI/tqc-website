{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}

---
title: Steve Flammia
surname: Flammia
type: steering
subtitle: AWS Center for Quantum Computing
job: SC member
year: {{ $year }}
photoURL: /{{ $year }}/team/images/steve_flammia.jpg
socials:
  - link: 'https://sflammia.github.io/'
    name: Site

---
