{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}
---
title: C.M. Chandrashekar
surname: Chandrashekar
type: core
year: {{ $year }}
subtitle: IISc, Bengaluru
job: General chair
photoURL: /{{ $year }}/team/images/chandrashekar.jpeg
socials:
  - link: 'http://iap.iisc.ac.in/~chandracm/'
    name: Site
---
