
#let input-text(body) = text(
  font: "DejaVu Sans Mono",
  size: 10pt,
  body,
)

#let checkbox(checked, body) = {
  let ballot-box = {
    set text(font: "DejaVu Sans Mono", size: 20pt)
    if checked { sym.ballot.check } else { sym.ballot }
  }

  grid(
    columns: 2,
    align: horizon,
    column-gutter: 2mm,
    move(ballot-box, dy: -0.7mm), text(size: 10pt, body),
  )
}

#let warteliste(
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
  dsgvo: true,
  body,
) = [
  #set page(
    paper: "a5",
    margin: (y: 10mm, right: 10mm),
    flipped: true,
    header: [Anfragedatum: #text(font: "DejaVu Sans Mono", datum)],
  )
  #set text(font: "Roboto", lang: "de")

  #block()[
    #set text(size: 9pt)

    #table(
      columns: 2 * (1fr,),
      rows: 1fr,
      [
        Name, Vorname:

        #input-text(name)
      ],
      [Geburtsdatum:

        #input-text(geburtsdatum)
      ],
      [Telefonnummer:

        #input-text(telefonnummer)
      ],
      [Erreichbarkeit:

        #input-text(erreichbarkeit)
      ],
      [E-Mail-Adresse:

        #input-text(email)
      ],
      table.cell(align: horizon)[#checkbox(
        true,
        "Anrufbeantworter und mit Namen melden",
      )],
      table.cell(colspan: 2)[Krankenversicherung:

        #input-text(krankenversicherung)
      ],
      table.cell(colspan: 2)[Anliegen:

        #input-text(anliegen)
      ],
      [#checkbox(ptv11, "PTV11 vorhanden") #checkbox(code, "Dringlichkeitscode")],
      [Vorbehandlungen:

        #input-text(vorbehandlungen)
      ],
      [Zeitliche Flexibilität:

        #input-text(zeitliche-flexibilitaet)
      ],
      table.cell(align: horizon)[#checkbox(
        spontan,
        "Kann Termine auch spontan wahrnehmen",
      )],
      table.cell(colspan: 2, align: horizon)[#checkbox(
        dsgvo,
        "Klient:in hat in die Speicherung der Daten auf der Warteliste eingewilligt.",
      )],
    )
  ]
]
