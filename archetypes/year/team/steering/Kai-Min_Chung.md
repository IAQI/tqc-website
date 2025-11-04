{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}

---
title: Kai-Min Chung
surname: Chung
type: steering
subtitle: IIS, Academia Sinica
job: SC member
year: {{ $year }}
photoURL: /{{ $year }}/team/images/kmchung.jpg
socials:
  - link: 'https://homepage.iis.sinica.edu.tw/~kmchung/'
    name: Site
---
