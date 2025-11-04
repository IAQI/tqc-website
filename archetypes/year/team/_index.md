{{- $year := path.Base (path.Dir (path.Dir .File.Path)) -}}
---
title: Committees
year: {{ $year }}
type: team
layout: list_with_header
draft: False
---

<!-- We have to include the section titles here, rather than generating them in the teams shortcode, because otherwise the .TableOfContent is incorrect. -->

## Local Organizer
{{< teams types="core" year={{ $year }} >}}

You can contact the Organizing Committee via email to {{< button-link label="{{ $year }}@tqc-conference.org" url="mailto:{{ $year }}@tqc-conference.org" icon="email" >}}

{{< teams types="org" year={{ $year }} >}}

### Local Organizers
* XXX

### National organisers:
* XXX

### International organisers:
* XXX

## Steering Committee
{{< teams types="steering" year={{ $year }} >}}

## Program Committee
{{< teams types="pcchairs=PC chair" year={{ $year }} >}}
You can contact the PC chair via email to {{< button-link label="pcchairs{{ $year }}@tqc-conference.org" url="mailto:pcchairs{{ $year }}@tqc-conference.org" icon="email" >}}<br>

### PC members
* XXX
* YYY