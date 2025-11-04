{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}
---
key: khurana 
name: Dakshita Khurana
surname: Khurana
year: {{ $year }}
company: University of Illinois Urbana-Champaign
photoURL: /{{ $year }}/speakers/images/khurana.png
type: invited
website: '/{{ $year }}/sessions/invited_khurana'
socials:
  - link: https://cs.illinois.edu/about/people/faculty/dakshita
    name: Website
---
