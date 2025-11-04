{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}

---
title: Frédéric Magniez
surname: Magniez
type: steering
subtitle: University of Toronto
job: SC co-chair
year: {{ $year }}
photoURL: /{{ $year }}/team/images/frederic_magniez.jpg
socials:
  - link: 'https://www.irif.fr/~magniez/'
    name: Site

---
