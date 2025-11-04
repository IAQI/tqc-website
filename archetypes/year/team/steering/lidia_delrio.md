{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}

---
title: Lídia del Rio
surname: Rio
type: steering
subtitle: Squids and University of Zurich
job: SC member
year: {{ $year }}
photoURL: /{{ $year }}/team/images/lidia_delrio.png
socials:
  - link: 'https://www.physik.uzh.ch/en/groups/delrio.html'
    name: Site

---
