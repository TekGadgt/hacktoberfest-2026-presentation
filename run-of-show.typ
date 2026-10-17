#let data = json("event-data.json")
#let mode = sys.inputs.at("mode", default: "comparison")
#let event = data.event
#let shared = data.schedule.shared
#let full-panel = data.schedule.fullPanel
#let build-priority = data.schedule.buildPriority

#let teal = rgb("#28554e")
#let teal-dark = rgb("#173e3a")
#let coral = rgb("#f07770")
#let blue = rgb("#79aed3")
#let amber = rgb("#f5be62")
#let paper = rgb("#f7f7f2")
#let gray = rgb("#e7ebe8")

#set page(
  paper: "us-letter",
  flipped: true,
  margin: (x: 0.38in, y: 0.34in),
  header: context align(right, text(size: 6.5pt, fill: rgb("#64706d"))[
    Internal organizer document · #event.date
  ]),
  footer: context align(center, text(size: 6.5pt, fill: rgb("#64706d"))[
    #event.officialName · page #counter(page).display()
  ]),
)

#set text(font: "Open Sans", size: 7.4pt, fill: teal-dark)
#set par(leading: 0.55em)
#set heading(numbering: none)

#let status-color(status) = if status == "confirmed" { teal } else if status == "provisional" { coral } else { amber }

#let status-label(status) = box(
  fill: status-color(status),
  inset: (x: 4pt, y: 2pt),
  radius: 2pt,
  text(size: 5.6pt, weight: "bold", fill: white, upper(status)),
)

#let title-block(title, subtitle) = [
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    [
      #text(font: "Poppins", size: 20pt, weight: "bold", fill: teal)[#title]
      #v(2pt)
      #text(size: 8pt, fill: rgb("#52615d"))[#subtitle]
    ],
    box(
      fill: teal,
      inset: 8pt,
      radius: 4pt,
      text(size: 7pt, weight: "bold", fill: paper)[#event.publicTime\
      #event.venue],
    ),
  )
  #v(8pt)
]

#let schedule-table(title, subtitle, rows) = [
  #title-block(title, subtitle)
  #table(
    columns: (0.72in, 1.25in, 2.15in, 1.05in, 1.15in, 1.55in, 0.76in),
    inset: (x: 4pt, y: 3.4pt),
    stroke: (x, y) => if y == 0 { none } else { 0.45pt + rgb("#cbd4d1") },
    fill: (x, y) => if y == 0 { teal } else if calc.even(y) { rgb("#f2f5f3") } else { white },
    align: (left, left, left, left, left, left, center),
    table.header(
      [#text(weight: "bold", fill: white)[TIME]],
      [#text(weight: "bold", fill: white)[ATTENDEE ACTIVITY]],
      [#text(weight: "bold", fill: white)[ORGANIZER ACTION]],
      [#text(weight: "bold", fill: white)[OWNER]],
      [#text(weight: "bold", fill: white)[DECK / AV]],
      [#text(weight: "bold", fill: white)[DEPENDENCY]],
      [#text(weight: "bold", fill: white)[STATUS]],
    ),
    ..rows.map(row => (
      [#text(weight: "bold", fill: teal)[#row.time]],
      [#row.activity],
      [#row.organizer],
      [#row.owner],
      [#row.cue],
      [#row.dependency],
      [#status-label(row.status)],
    )).flatten(),
  )
]

#let comparison-page() = [
  #title-block(
    "Organizer run-of-show",
    "Planning edition · compare the two final-hour options before publishing detailed times",
  )

  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #box(fill: rgb("#eef4f2"), inset: 10pt, radius: 4pt, width: 100%)[
        #text(font: "Poppins", size: 11pt, weight: "bold", fill: teal)[Confirmed public blocks]
        #v(4pt)
        #table(
          columns: (0.8in, 1fr),
          inset: (x: 2pt, y: 2.7pt),
          stroke: none,
          [*10:00*], [Doors, breakfast, and check-in],
          [*10:15*], [Opening, then project time],
          [*12:00*], [Lunch from Mama Rosa's],
          [*1:00*], [Decision-model workshop, then Hermes Agent workshop at 1:30],
          [*#event.submissionDeadline.replace(" PM", "")*], [Submissions close, then demos and judging],
          [*3:00*], [Awards, then social time],
          [*4:00*], [Event closes],
        )
      ]
    ],
    [
      #box(fill: rgb("#fff1ef"), inset: 10pt, radius: 4pt, width: 100%)[
        #text(font: "Poppins", size: 11pt, weight: "bold", fill: teal)[Decision still needed]
        #v(4pt)
        - Decide whether the third judge must participate in final selection.
        - Confirm demo length and raffle plans.
        - Assign the final-photos lead late in the afternoon.
        - Get Wi-Fi details on arrival and add them to the deck.
      ]
    ],
  )

  #v(10pt)
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #box(stroke: 1.5pt + coral, inset: 10pt, radius: 4pt, width: 100%)[
        #text(font: "Poppins", size: 12pt, weight: "bold", fill: teal)[Full-panel option]
        #v(3pt)
        Submission cutoff at *2:30 PM*. Demos and judging finish before the third judge leaves at 3. The final hour holds awards, possible raffles, social time, and photos.
      ]
    ],
    [
      #box(stroke: 1.5pt + blue, inset: 10pt, radius: 4pt, width: 100%)[
        #text(font: "Poppins", size: 12pt, weight: "bold", fill: teal)[Build-time-priority option]
        #v(3pt)
        Submission cutoff around *2:50 PM*. Teams receive another 30 minutes to build. Remaining judges handle a compressed demo, judging, and closing sequence.
      ]
    ],
  )

  #v(10pt)
  #box(fill: teal, inset: 10pt, radius: 4pt, width: 100%)[
    #text(font: "Poppins", size: 10pt, weight: "bold", fill: amber)[Contacts and operational details]
    #v(3pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      gutter: 12pt,
      text(size: 7pt, fill: paper)[
        *MLH INCIDENTS*\
        #data.contacts.mlhIncidentPhone\
        #data.contacts.mlhIncidentEmail
      ],
      text(size: 7pt, fill: paper)[
        *VENUE*\
        #event.address\
        Contact: #data.contacts.venueContact
      ],
      text(size: 7pt, fill: paper)[
        *DAY-OF DETAILS*\
        Emergency: #data.contacts.emergencyContact\
        Wi-Fi: #data.contacts.wifi
      ],
    )
  ]
]

#let full-page() = schedule-table(
  "Full-panel schedule",
  "Submissions and judging complete by 3 PM · provisional until both hosts approve",
  shared + full-panel,
)

#let build-page() = schedule-table(
  "Build-time-priority schedule",
  "Later submission cutoff · remaining judges handle the final block",
  shared + build-priority,
)

#if mode == "comparison" {
  comparison-page()
  pagebreak()
  full-page()
  pagebreak()
  build-page()
} else if mode == "full-panel" {
  full-page()
} else if mode == "build-priority" {
  build-page()
} else {
  panic("Unknown mode: " + mode)
}
