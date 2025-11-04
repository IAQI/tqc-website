{{- $year := path.Base (path.Dir (path.Dir .File.Path)) -}}
---
title: Speakers
year: {{ $year }}
draft: true
type: speakers
layout: list_with_header
menu:
    {{ $year }}:
        weight: 40
        identifier: speakers
        parent: technical-program

---


{{< speakers types="tutorial=Tutorial Speakers" year={{ $year }} >}}

{{< speakers types="invited=Invited Speakers" year={{ $year }} >}}

{{< speakers types="industry=Industry Panel" year={{ $year }} >}}

{{< speakers types="lecture=Public Lecture" year={{ $year }} >}}

