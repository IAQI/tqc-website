{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}

---
title: François Le Gall
surname: Le Gall
type: steering
subtitle: Nagoya University
job: SC chair
year: {{ $year }}
photoURL: /{{ $year }}/team/images/francois_legall.jpg
socials:
  - link: 'https://www.francoislegall.com/'
    name: Site

---
