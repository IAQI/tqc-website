{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}

---
year: {{ $year }}
title: University of Amsterdam
type: partner
draft: false
category: community
logo: /{{ $year }}/partners/logos/uva.png
website: https://www.uva.nl
---
