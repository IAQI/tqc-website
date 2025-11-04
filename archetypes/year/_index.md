---
title: Home
menu:
  main:
    weight: 1
    identifier: home-{{ .Name }}
year: {{ .Name }}
type: home
layout: home
---
<!-- JUMBO -->
{{% jumbo img="/images/{{ .Name }}/background-{{ .Name }}.jpg" imgLabel="TQC {{ .Name }} background" logo="/images/{{ .Name }}/logo-{{ .Name }}.png" %}}

## 15-19 September {{ .Name }}

{{< button-link label="Call For Papers"
                url="call"
                icon="cfp" >}}

{{% /jumbo %}}


{{% home-info what="Participants:>200,Days:5,Invited Talks:4" class="primary" %}}
## What is TQC {{ .Name }}?

TQC {{ .Name }} is the 20th [ADJUST!] edition of the yearly international scientific conference on the Theory of Quantum Computation, Communication and Cryptography. See the list of previous conferences <a style="color: yellow" href="/{{ .Name }}/charter/#history-of-tqc">here</a>.
{{% /home-info %}}

{{% home-keydates %}}

{{% home-keydate-table title="Key Dates TQC {{ .Name }}" %}}
(all times 23:59 AoE)

|Date |Event|
|:----|:----|
| 20 February {{ .Name }} | Opening of submission server |
| Sat, 1 March {{ .Name }} |  Talk/Poster submission deadline |
| Fri, 25 April {{ .Name }} | Talk acceptance notification |
| Wed, 30 April {{ .Name }} | Poster-only submission deadline |
| Mon, 5 May {{ .Name }} | Poster-only acceptance notification |
| Mon, 15 - Fri, 19 Sept {{ .Name }} | TQC {{ .Name }} |
{{% /home-keydate-table %}}

{{% home-keydate-table title="Website Updates" %}}
|Date |Event|
|:----|:----|
|1 Feb {{ .Name }} | New website created|
{{% /home-keydate-table %}}

{{% /home-keydates %}}


<!-- THE MAP -->
{{% home-location
    image="/images/{{ .Name }}/venue-{{ .Name }}.jpg"
    address="TBD"
    %}}

## The {{ .Name }} venue
{{% /home-location %}}

<!-- 
{{% home-speakers year={{ .Name }} %}}
## Featured Speakers
{{< button-link label="All Speakers"
                url="/{{ .Name }}/speakers"
                icon="cfp" >}}
{{% /home-speakers %}}
-->

{{% partners categories="community" year={{ .Name }} %}}
## Sponsors

TQC {{ .Name }} is seeking sponsors. To know more about sponsor packages and other information, contact {{< button-link label="{{ .Name }}@tqc-conference.org" url="mailto:{{ .Name }}@tqc-conference.org?subject=Sponsorship Enquiry" icon="email" >}} 

{{% /partners %}}

