# Waiting List Card Template

This repository contains a simple typst template used to generate waiting list index cards for a psychotherapy practice. The template is optimized for A5 landscape printing, allowing for easy manual data entry during phone calls.

## Prerequisites

To compile this document correctly, ensure the following fonts are installed:
- Roboto (used for the main text)
- DejaVu Sans Mono (used for text inputs, header date, and checkbox symbols)

## Usage

You can use the template to print blank cards for your desk or pre-fill them programmatically. Import the `warteliste` function from the template file and pass your arguments.

### Example

```typst
#import "@local/waitlist:0.1.0": *

#show: warteliste.with(
  datum: [],
  name: [],
  geburtsdatum: [],
  telefonnummer: [],
  erreichbarkeit: [],
  email: [],
  krankenversicherung: [],
  anliegen: [],
  vorbehandlungen: [],
  zeitliche-flexibilitaet: [],
  ptv11: false,
  code: false,
  spontan: false,
  dsgvo: true
)
```

## Parameters

The warteliste function accepts several parameters to pre-fill the form. All text parameters default to empty content `[]`. Checkbox parameters default to boolean values.

### Text Fields (accept string or content)
- datum: Date of the request (renders in the top right header).
- name: Last name, first name.
- geburtsdatum: Date of birth.
- telefonnummer: Phone number.
- erreichbarkeit: Best time to reach the patient.
- email: Email address.
- krankenversicherung: Health insurance details (e.g., provider name).
- anliegen: Brief description of symptoms or reason for seeking therapy.
- vorbehandlungen: Previous treatments or hospitalizations.
- zeitliche-flexibilitaet: General availability for appointments.

### Checkbox Fields (accept boolean values)
- ptv11 (default: false): Marks if a PTV-11 form is available.
- code (default: false): Marks if a code (Dringlichkeitscode) is available.
- spontan (default: false): Marks if the patient can attend short-notice appointments.
- dsgvo (default: true): Marks if the patient consented to data storage.

## Layout Specifications
- Format: A5 Landscape (flipped: true)
- Margins: 10mm top, 10mm right
- Language: German (de) for correct hyphenation