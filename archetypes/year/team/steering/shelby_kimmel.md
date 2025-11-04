{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}

---
title: Shelby Kimmel
surname: Kimmel
type: steering
subtitle: Middlebury College
job: SC member
year: {{ $year }}
photoURL: /{{ $year }}/team/images/shelby_kimmel.jpg
socials:
  - link: 'https://shelbykimmel.com/'
    name: Site

---
