{{- $year := path.Base (path.Dir (path.Dir (path.Dir .File.Path))) -}}

---
year: {{ $year }}
title: International Association for Quantum Information (IAQI)
type: partner
draft: false
category: community
logo: /{{ $year }}/partners/logos/iaqi.png
website: https://www.iaqi.org
---
