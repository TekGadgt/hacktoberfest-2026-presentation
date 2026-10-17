---
theme: default
title: Hacktoberfest Hack Day Hampton x RevolutionVA
info: October 17, 2026 at 757 Makerspace in Hampton, Virginia
class: text-left full-banner
colorSchema: dark
fonts:
  provider: none
aspectRatio: 16/9
canvasWidth: 980
loop: true
---

<div class="eyebrow">Community Hack Day</div>

<div class="hero-title">
  Hacktoberfest<br>
  <span class="coral">Hack Day</span> Hampton<br>
  <span class="blue">x RevolutionVA</span>
</div>

<div class="hero-details">
  {{ $eventData.event.date }} · {{ $eventData.event.publicTime }}<br>
  {{ $eventData.event.venue }}
</div>

<div class="bookend-partners bookend-opening">
  <a class="bookend-partner revva" href="https://revolutionva.org" aria-label="RevolutionVA">
    <span class="bookend-mark"><img src="/assets/revolutionva-bird.png" alt=""></span>
    <img class="bookend-wordmark" src="/assets/revolutionva-wordmark.png" alt="RevolutionVA">
  </a>
  <a class="bookend-partner mlh" href="https://www.mlh.com" aria-label="Major League Hacking">
    <span class="bookend-mark"><img src="/assets/mlh-logo-white.svg" alt="Major League Hacking"></span>
  </a>
  <a class="bookend-partner dev" href="https://dev.to" aria-label="DEV Community">
    <span class="bookend-mark"><img src="/assets/dev-badge.svg" alt="DEV Community"></span>
  </a>
  <a class="bookend-partner digitalocean" href="https://www.digitalocean.com" aria-label="DigitalOcean">
    <span class="bookend-mark"><img src="/assets/DO_Logo_vertical_white.svg" alt="DigitalOcean"></span>
  </a>
</div>

<!--
Arrival slide. Leave this up as attendees check in.
Source: https://www.mlh.com/events/hacktoberfest-2026-in-the-757
-->

---

# Your hosts

<div class="host-row">
  <div v-for="host in $eventData.hosts" :key="host.name" class="host">
    <div class="host-media">
      <img :src="host.photo" :alt="host.name">
      <EventQr class="host-qr" :value="host.url" :size="100" />
    </div>
    <div>
      <div class="host-name">{{ host.name }}</div>
      <div class="host-role">{{ host.role }}</div>
      <div class="host-community">{{ host.community }}</div>
    </div>
  </div>
</div>

<div class="side-note">Questions are welcome. Find either of us at any point today.</div>

<!--
The bios are intentionally short. Professional background comes from the supplied LinkedIn profile exports.
-->

---
loop: true
---

# What today is about

<div class="big-copy">
  Hacktoberfest Hack Days are short, hands-on hackathons. Today focuses on building with <strong>open-source AI</strong> and <strong>open-weight models</strong>.

  Bring your own idea, join another team, or explore a challenge. Beginners, students, developers, and makers all belong here.
</div>

<div class="side-note">A project idea is useful. Curiosity is enough.</div>

<!--
Source: https://hacktoberfest-handbook.mlh.com/hacktoberfest-host-guide
-->

---
loop: true
---

# Today at a glance

<dl class="timeline">
  <dt>10:00 AM</dt><dd>Doors, check-in, breakfast, and team formation</dd>
  <dt>10:15 AM</dt><dd>Welcome, then project time</dd>
  <dt>12:00 PM</dt><dd>Lunch from Mama Rosa's</dd>
  <dt>1:00 PM</dt><dd>Two short workshops, then final builds</dd>
  <dt>{{ $eventData.event.submissionDeadline }}</dt><dd>Submissions close, then project demos</dd>
  <dt>3:00 PM</dt><dd>Awards, then time to connect</dd>
  <dt>4:00 PM</dt><dd>Event closes</dd>
</dl>

---
loop: true
---

# Two hands-on workshops

<div class="workshop-split">
  <div v-for="workshop in $eventData.workshops" :key="workshop.title" class="workshop">
    <div class="workshop-time">{{ workshop.time }}</div>
    <div class="workshop-title">{{ workshop.title }}</div>
    <div class="workshop-copy">{{ workshop.description }}</div>
    <div class="workshop-presenter">Led by {{ workshop.presenter }}</div>
  </div>
</div>

<!--
Both workshops are short, roughly 20 to 30 minutes each. Times and presenters come from event-data.json.
-->

---
loop: true
---

# The people making today possible

<div class="thanks-stack">
  <div class="thanks-line"><span>Hosted by</span>RevolutionVA</div>
  <div class="thanks-line"><span>Hacktoberfest by</span>DigitalOcean · Major League Hacking · DEV</div>
  <div class="thanks-line"><span>Venue courtesy of</span>757 Makerspace</div>
  <div class="thanks-line"><span>Sponsorship in part by</span>The AI Collective · Hampton Roads</div>
  <div class="thanks-line"><span>Breakfast</span>Panera Bread &amp; Firehouse Coffee</div>
  <div class="thanks-line"><span>Lunch at noon</span>Mama Rosa's</div>
</div>

<div class="side-note">Enjoy the food. Thank the volunteers and partners who made the day possible.</div>

---

<div class="partner-slide">
  <div class="partner-copy">
    <div class="eyebrow">Hosted by</div>
    <div class="partner-title">RevolutionVA</div>
    <p>A volunteer-run nonprofit that brings Virginia developers together through conferences, educational events, and community programs.</p>
  </div>
  <div class="partner-mark revva">
    <img class="bird" src="/assets/revolutionva-bird.png" alt="RevolutionVA bird mark">
    <img class="wordmark" src="/assets/revolutionva-wordmark.png" alt="RevolutionVA">
    <EventQr class="partner-qr" value="https://revolutionva.org" :size="110" />
  </div>
</div>

<!-- Source: https://revolutionva.org -->

---

<div class="partner-slide">
  <div class="partner-copy">
    <div class="eyebrow">Venue courtesy of</div>
    <div class="partner-title">757 Makerspace</div>
    <p>Tools, workspace, training, and a community of makers across its Hampton and Norfolk locations.</p>
  </div>
  <div class="partner-mark makerspace">
    <img src="/assets/757-makerspace-logo.png" alt="757 Makerspace">
    <EventQr class="partner-qr" value="https://www.757makerspace.com" :size="110" />
  </div>
</div>

<!-- Source: https://www.757makerspace.com -->

---

<div class="partner-slide">
  <div class="partner-copy">
    <div class="eyebrow">Sponsorship in part by</div>
    <div class="partner-title">The AI Collective<br>Hampton Roads</div>
    <p>Connecting Hampton Roads through practical AI events, learning resources, networking, and individual support.</p>
  </div>
  <div class="partner-mark ai-collective">
    <img src="/assets/ai-collective-hr-logo.png" alt="The AI Collective Hampton Roads">
    <EventQr class="partner-qr" value="https://sites.google.com/view/aicollectivehr/home" :size="110" />
  </div>
</div>

<!-- Source: https://sites.google.com/view/aicollectivehr/home -->

---

# Code of Conduct

<div class="big-copy">
  Everyone has the right to build in a safe and welcoming environment. Harassment and abuse are never tolerated.

  If someone asks you to stop behavior that makes them uncomfortable, stop immediately.
</div>

<div class="coc-row">
  <div class="coc-report">
    Talk to Chazona or Ryan<br>
    MLH incident line: {{ $eventData.contacts.mlhIncidentPhone }}<br>
    {{ $eventData.contacts.mlhIncidentEmail }} · anonymous reports accepted
  </div>
  <EventQr :value="$eventData.event.codeOfConductUrl" label="Full Code of Conduct" :size="120" />
</div>

<div class="source-note">MLH Code of Conduct · updated April 16, 2026</div>

<!--
Read the first paragraph aloud and point out both hosts.
Source: https://github.com/MLH/mlh-policies/blob/main/code-of-conduct.md
-->

---
loop: true
---

# Project rules

<ul class="rules">
  <li>Project-specific work begins after the opening.</li>
  <li>One person submits for the team through OrganizerHQ.</li>
  <li>Prize entries must select every challenge they enter.</li>
  <li>The open-source challenge requires a public GitHub repository and an open-source license.</li>
  <li>Offensive security testing requires explicit authorization from the system owner.</li>
  <li>Every eligible team receives the same opportunity to demonstrate its work.</li>
</ul>

<div class="side-note">Ask a host before the deadline if you are unsure whether your project qualifies.</div>

<!--
Say out loud: shop equipment is in a separate, closed room and is off-limits today.

Sources:
https://hacktoberfest-handbook.mlh.com/project-submissions-and-judging-for-hacktoberfest-hack-day
https://github.com/MLH/mlh-policies/blob/main/standard-hackathon-rules.md
-->

---
loop: true
---

# Five ways to enter

<ol class="challenge-index">
  <li v-for="challenge in $eventData.challenges" :key="challenge.name">{{ challenge.name }}</li>
</ol>

<div class="side-note">One project may enter every challenge it qualifies for.</div>

---
loop: true
---

<div class="challenge-kind">{{ $eventData.challenges[0].kind }}</div>
<div class="challenge-name">{{ $eventData.challenges[0].name }}</div>
<div class="challenge-summary">{{ $eventData.challenges[0].summary }}</div>
<div v-for="rule in $eventData.challenges[0].requirements" :key="rule" class="challenge-rule">{{ rule }}</div>
<div class="challenge-prize">{{ $eventData.challenges[0].prize }}</div>

<!-- Source: official MLH event challenge page and Hacktoberfest Host Handbook. -->

---
loop: true
---

<div class="challenge-kind">{{ $eventData.challenges[1].kind }}</div>
<div class="challenge-name">{{ $eventData.challenges[1].name }}</div>
<div class="challenge-summary">{{ $eventData.challenges[1].summary }}</div>
<div v-for="rule in $eventData.challenges[1].requirements" :key="rule" class="challenge-rule">{{ rule }}</div>
<div class="challenge-prize">{{ $eventData.challenges[1].prize }}</div>

<!-- Source: official MLH event challenge page. -->

---
loop: true
---

<div class="challenge-kind">{{ $eventData.challenges[2].kind }}</div>
<div class="challenge-name">{{ $eventData.challenges[2].name }}</div>
<div class="challenge-summary">{{ $eventData.challenges[2].summary }}</div>
<div v-for="rule in $eventData.challenges[2].requirements" :key="rule" class="challenge-rule">{{ rule }}</div>
<div class="challenge-prize">{{ $eventData.challenges[2].prize }}</div>

<!-- Source: official MLH event challenge page. -->

---
loop: true
---

<div class="challenge-kind">{{ $eventData.challenges[3].kind }}</div>
<div class="challenge-name">{{ $eventData.challenges[3].name }}</div>
<div class="challenge-summary">{{ $eventData.challenges[3].summary }}</div>
<div v-for="rule in $eventData.challenges[3].requirements" :key="rule" class="challenge-rule">{{ rule }}</div>
<div class="challenge-prize">{{ $eventData.challenges[3].prize }}</div>

<!-- Source: official MLH event challenge page. -->

---
loop: true
---

<div class="challenge-kind">{{ $eventData.challenges[4].kind }}</div>
<div class="challenge-name">{{ $eventData.challenges[4].name }}</div>
<div class="challenge-summary">{{ $eventData.challenges[4].summary }}</div>
<div v-for="rule in $eventData.challenges[4].requirements" :key="rule" class="challenge-rule">{{ rule }}</div>
<div class="challenge-prize">{{ $eventData.challenges[4].prize }}</div>

<!-- Source: official MLH event challenge page. -->

---
loop: true
---

# Project submission

<div class="submit-grid">
  <ol>
    <li>Sign in with the account used to register.</li>
    <li>Open the event's <strong>Challenges</strong> page.</li>
    <li>Select <strong>Add Submission</strong>.</li>
    <li>Add the repository, name, description, and technologies.</li>
  </ol>
  <ol start="5">
    <li>Select every challenge the project enters.</li>
    <li>Submit before {{ $eventData.event.submissionDeadline }}.</li>
    <li>Open <strong>Your Submission</strong> to invite teammates.</li>
    <li>Confirm every teammate accepts the invitation.</li>
  </ol>
</div>

<div class="side-note">The Add Submission button appears only while the submission window is open.</div>

<!--
The full MLH walkthrough appears in the appendix.
Source: supplied MLH challenge-submission deck and the Host Handbook.
-->

---
loop: true
---

# Event links

<div class="qr-row">
  <EventQr :value="$eventData.event.eventUrl" label="Registration and check-in" />
  <EventQr :value="$eventData.event.challengeUrl" label="Challenges and event details" />
  <EventQr :value="$eventData.event.codeOfConductUrl" label="MLH Code of Conduct" />
  <EventQr :value="$eventData.event.rulesUrl" label="MLH Hackathon Rules" />
</div>

<div class="side-note" style="text-align:center">Submission access lives on the Challenges page while the window is open.</div>

---
class: text-center
---

<div class="resting">
  <div class="eyebrow">Build · Learn · Connect</div>
  <div class="hero-title">Project time</div>
  <p>Find a team, ask for help, and make something you can show.</p>
  <div class="hero-details" style="display:inline-block;text-align:left">
    <template v-if="$eventData.contacts.wifi !== 'TBD'">Wi-Fi: {{ $eventData.contacts.wifi }}<br></template>
    Lunch at noon<br>
    Submissions close at {{ $eventData.event.submissionDeadline }}
  </div>
</div>

<!-- Resting slide. Press A to start or stop the information loop. -->

---

<div class="appendix-label">MLH SUBMISSION WALKTHROUGH</div>
<div class="appendix-hero">Submitting a challenge project</div>
<div class="big-copy">The following slides preserve the official workflow supplied by the Hacktoberfest team.</div>

---

<div class="appendix-label">MLH SUBMISSION WALKTHROUGH</div>
<div class="submission-step">
  <div><div class="submission-step__number">01</div><div class="submission-step__title">Open the event</div><div class="submission-step__copy">Sign in to OrganizerHQ using the account you registered with, then open the event page.</div></div>
  <img class="submission-shot" src="/mlh-submission/01-open-event.png" alt="OrganizerHQ event page">
</div>

---

<div class="appendix-label">MLH SUBMISSION WALKTHROUGH</div>
<div class="submission-step">
  <div><div class="submission-step__number">02</div><div class="submission-step__title">Open Challenges</div><div class="submission-step__copy">Use the Challenges button at the top of the public event page.</div></div>
  <img class="submission-shot" src="/mlh-submission/02-click-challenges.png" alt="Challenges button">
</div>

---

<div class="appendix-label">MLH SUBMISSION WALKTHROUGH</div>
<div class="submission-step">
  <div><div class="submission-step__number">03</div><div class="submission-step__title">Add a submission</div><div class="submission-step__copy">The Add Submission button appears only while submissions are open.</div></div>
  <img class="submission-shot" src="/mlh-submission/03-add-submission.png" alt="Add Submission button">
</div>

---

<div class="appendix-label">MLH SUBMISSION WALKTHROUGH</div>
<div class="submission-step">
  <div><div class="submission-step__number">04</div><div class="submission-step__title">Enter project details</div><div class="submission-step__copy">Add the repository, project name, description, technologies, and an optional demo URL.</div></div>
  <img class="submission-shot" src="/mlh-submission/04-project-details.png" alt="Project submission form">
</div>

---

<div class="appendix-label">MLH SUBMISSION WALKTHROUGH</div>
<div class="submission-step">
  <div><div class="submission-step__number">05</div><div class="submission-step__title">Choose challenges and submit</div><div class="submission-step__copy">Select every challenge the project qualifies for, then select Submit Project.</div></div>
  <img class="submission-shot" src="/mlh-submission/05-submit-and-open.png" alt="Submitted project view">
</div>

---

<div class="appendix-label">MLH TEAM INVITATIONS</div>
<div class="appendix-hero">Team members come next</div>
<div class="big-copy">OrganizerHQ enables team invitations only after one person submits the project.</div>

---

<div class="appendix-label">MLH TEAM INVITATIONS</div>
<div class="submission-step">
  <div><div class="submission-step__number">06</div><div class="submission-step__title">Open your submission</div><div class="submission-step__copy">After submitting, open Your Submission to manage the project team.</div></div>
  <img class="submission-shot" src="/mlh-submission/05-submit-and-open.png" alt="Your Submission view">
</div>

---

<div class="appendix-label">MLH TEAM INVITATIONS</div>
<div class="submission-step">
  <div><div class="submission-step__number">07</div><div class="submission-step__title">Select Add Member</div><div class="submission-step__copy">The Add Member control becomes available after the project has been submitted.</div></div>
  <img class="submission-shot" src="/mlh-submission/05-submit-and-open.png" alt="Add Member control">
</div>

---

<div class="appendix-label">MLH TEAM INVITATIONS</div>
<div class="submission-step">
  <div><div class="submission-step__number">08</div><div class="submission-step__title">Create an invitation link</div><div class="submission-step__copy">Create a link for the submitted project, then copy it.</div></div>
  <img class="submission-shot" src="/mlh-submission/06-create-invite.png" alt="Create Invitation Link control">
</div>

---

<div class="appendix-label">MLH TEAM INVITATIONS</div>
<div class="submission-step">
  <div><div class="submission-step__number">09</div><div class="submission-step__title">Share the invitation</div><div class="submission-step__copy">Send the link to teammates. They join the project after accepting it.</div></div>
  <img class="submission-shot" src="/mlh-submission/07-share-invite.png" alt="Team invitation link">
</div>

---

<div class="appendix-label">MLH TEAM INVITATIONS</div>
<div class="hero-title">Confirm the whole team</div>
<div class="big-copy">Before the deadline, open the submission once more and make sure every teammate appears on it.</div>

<div class="side-note">Need help? Ask Chazona or Ryan while the submission window is still open.</div>

---
class: text-center
---

<div class="resting">
  <div class="eyebrow">Final call</div>
  <div class="hero-title">Submissions closing</div>
  <p>Submit in OrganizerHQ and confirm the public repository, selected challenges, and full team.</p>
  <div class="side-note">Ask Chazona or Ryan now if anything is blocking your submission.</div>
</div>

---
class: text-center
---

<div class="resting">
  <div class="eyebrow">Show what you built</div>
  <div class="hero-title"><span class="blue">Demos</span></div>
  <p>Show the working project first. Then explain the problem and how open-source AI contributes.</p>
  <div class="side-note">Keep within the announced demo time and leave room for judge questions.</div>
</div>

---
class: text-center
---

<div class="resting">
  <div class="eyebrow">Final selections</div>
  <div class="hero-title">Judging <span class="coral">& awards</span></div>
  <p>Judges will make their final selections after the demos. Keep your project ready for follow-up questions.</p>
  <div class="side-note">Awards and any raffle announcements follow the final decision.</div>
</div>

---
class: text-left full-banner
---

<div class="eyebrow">Hacktoberfest 2026 in the 757</div>

<div class="hero-title">
  Thanks for<br>
  <span class="coral">coming</span>
</div>

<div class="hero-details">
  Keep building. Keep contributing.<br>
  Stay connected with Hampton Roads' developer<br>
  and maker community by visiting <a href="https://757tech.org">757tech.org</a>.
</div>

<EventQr class="closing-qr" value="https://757tech.org" label="757tech.org" :size="140" />

<div class="bookend-partners bookend-closing">
  <a class="bookend-partner revva" href="https://revolutionva.org" aria-label="RevolutionVA">
    <span class="bookend-mark"><img src="/assets/revolutionva-bird.png" alt=""></span>
    <img class="bookend-wordmark" src="/assets/revolutionva-wordmark.png" alt="RevolutionVA">
  </a>
  <a class="bookend-partner mlh" href="https://www.mlh.com" aria-label="Major League Hacking">
    <span class="bookend-mark"><img src="/assets/mlh-logo-white.svg" alt="Major League Hacking"></span>
  </a>
  <a class="bookend-partner dev" href="https://dev.to" aria-label="DEV Community">
    <span class="bookend-mark"><img src="/assets/dev-badge.svg" alt="DEV Community"></span>
  </a>
  <a class="bookend-partner digitalocean" href="https://www.digitalocean.com" aria-label="DigitalOcean">
    <span class="bookend-mark"><img src="/assets/DO_Logo_vertical_white.svg" alt="DigitalOcean"></span>
  </a>
</div>
