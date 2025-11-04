{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}
---
key: eisert 
name: Jens Eisert
surname: Eisert
year: {{ $year }}
company: FU Berlin
photoURL: /{{ $year }}/speakers/images/eisert.jpg
type: invited
website: '/{{ $year }}/sessions/invited_eisert'
socials:
  - link: https://www.physik.fu-berlin.de/en/einrichtungen/ag/ag-eisert/index.html
    name: Website
---
