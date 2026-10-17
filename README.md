# Hacktoberfest Hack Day Hampton

Source for the opening deck, information loop, and internal organizer run-of-show for October 17, 2026 at 757 Makerspace in Hampton, Virginia.

## Requirements

- Node.js and npm
- Typst 0.15 or newer

## Install

```sh
npm install
```

## Presentation

```sh
npm run dev
npm run build
npm run export
```

- `slides.md` contains the Slidev presentation.
- `event-data.json` contains event facts, workshops, challenges, contacts, and schedules.
- Press `a` during presentation mode to start or stop the 15-second information loop.
- Any manual keyboard or pointer navigation stops the loop.
- A slide joins the loop by setting `loop: true` in its frontmatter; the first slide sets it in the headmatter.

The static site builds to `dist/`. The exported deck PDF is written to `output/pdf/`.

## Organizer run-of-show

Compile all three editions:

```sh
npm run runbook
```

Compile one edition directly:

```sh
typst compile --input mode=full-panel run-of-show.typ output/pdf/hacktoberfest-run-of-show-full-panel.pdf
typst compile --input mode=build-priority run-of-show.typ output/pdf/hacktoberfest-run-of-show-build-priority.pdf
```

The default `comparison` mode produces a three-page planning document. The other modes produce a one-page day-of schedule.

## Complete build

```sh
npm run build:all
```

Generated files are reproducible outputs. Edit the Slidev, Typst, CSS, Vue, and JSON sources instead of editing PDFs or files in `dist/`.

## Information-loop smoke test

1. Run `npm run dev` and open presentation mode.
2. From slide 1, press `a`; the deck should jump to slide 3 and show the loop-status badge.
3. Wait 15 seconds; the deck should advance to slide 4.
4. Press an arrow key or click once; the badge should disappear and the deck should remain on the manually selected slide for longer than 15 seconds.
5. Press `a` again to restart the loop. Press `a` once more to stop it.

## Before the event

- Set `contacts.wifi` in `event-data.json` once the network is confirmed. The "Project time" slide shows it automatically; while it is `TBD` the line stays hidden.
- Select the final schedule mode and update the attendee-facing broad schedule if needed.
- Scan every QR code from the projected deck.
- Test the site without a network connection.
