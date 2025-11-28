// The project function defines how your document looks.
#let project(
  title: "",
  authors: (),
  date: none,
  version: "N/A",
  hash: "",
  src_length: 0,
  graysondoc_version: "0.3.0",
  body
) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(
    paper: "us-letter",
    numbering: "1",
    number-align: center,
    header: [
      #set text(size: 8pt)
      #set align(center)
      V#version
    ]
  )
  set text(font: "Atkinson Hyperlegible Next", lang: "en", size: 14pt)
  show link: underline
  // Title row.
  align(center)[
    #block(text(weight: 500, 1.5em, [#title]))
    // #block(text(weight: 700, 1.75em, title))
    #v(2em, weak: true)
    V#version - #date \
    #v(1em)
    // #image("../8100-logo.svg")
    // #text("So let it be written. So let it be Done.", style: "italic")
  ]
  pagebreak(weak: true)
  // table of contents
  outline()
  pagebreak(weak: true)
  heading("Document Control")
  align(left)[
    *Version:* #version \
    *Souce File Hash (XXH3 64):* #hash \
    *Souce File Length:* #src_length \
    *Graysondoc Version:* #graysondoc_version \
  ]
  heading("Authors")
  for author in authors {
    [
      *#author* \
    ]
  }
  set par(justify: true)
  set heading(numbering: none)
  // Main body.
  pagebreak(weak: true)
  set heading(numbering: "1.1")
  body
}

#show: project.with(
	title:"Fall & Winter Action Items 25",
	authors: (
		"Josh T.",
	),
	date: "2025/11/25 UTC -0500",
	version: 1,
	hash: "D030984D24A2EBA3",
	src_length: 5261,
	graysondoc_version: "0.2.0",
)

= Action Items for Fall & Winter 2025
<action-items-for-fall-winter-2025>
This isn't a complete list and will be updated. All students should read
this regardless of department (sub-team). All of these tasks must have
an accompanying project document that tracks progress of the tasks. It
can be in whatever format for now, just make it! I would prefer if they
were in Markdown on GitHub (like this file) but do whatever helps you
get started ASAP. We need to get into the habit of documenting what we
are doing.

If you have questions or are unsure of anything please ask! If you want
me to look at anything in person schedule a weekend meeting.

== Changelog
<changelog>
=== 0: 2025-09-29
<section>
- Initial release.

=== 1: 2025-10-07
<section-1>
- spelling
- battery sponsors

= Git Hub
<git-hub>
Everyone should have an account there and we will have to do some kind
of training. We will start with the ACT-DCS repository and try to
organize all of these projects there.

= Recycle Old Robot
<recycle-old-robot>
+ Each sub team should carefully catalog every single component they
  remove.
+ Electrical shall remove everything that can be before manufacturing
  disassembles the mechanical components.
+ Gearboxes, including the swerve drives, shall be left assembled after
  removal from the robot.
+ Josh T. will decide what raw plastic and metal can be thrown away
  after everything is set aside.
+ The swerve drives shall be overhauled with supervision of Josh T.
  and/or Mr.~Schellenberg.

= Sort Fasteners
<sort-fasteners>
No.~Seriously. This is an Operations task but anyone can help. If you
are unsure what something is or how to categorize it, first check
McMaster-Carr, then ask Josh T. or another mentor.

= Programming
<programming>
Three to six people need to prototype common software sub-systems.

== Logging
<logging>
We need to make sure we know how to log arbitrary information about
robot state to files on the RIO and extricate that data in less than two
(2) minutes.

== Vision
<vision>
Focus on the Limelight and make sure you can get angle and distance to
the QR code things.

== Basic Navigation
<basic-navigation>
Auto aligning to a vision target on button press (while held). You don't
need a whole vision setup; in fact it would be best to start off without
one then integrate it later. You don't need any fancy pose estimation
just data from the camera, gyro, encoders, and the ability to tell the
drivetrain to do basic motions: - Translate (including sideways for
swerve) some distance via encoders - Rotate by some number of degrees

= Batteries Plus
<batteries-plus>
For Outreach, Electrical, and Operations departments.

Attempt to obtain sponsorship when next recycling batteries:

Split old batteries between these locations: - 905 Parkside Walk Lane
Suite 101, Lawrenceville, GA 30043 - 2324 Ronald Reagan Pkwy,
Snellville, GA 30078

Outreach shall plan the interaction and prepare contact info. Operations
shall plan the transport of batteries. Electrical shall prepare
batteries for recycling.

Ask Josh for details at next in-person meeting.

= Electrical
<electrical>
Standardizing hardware and setting up batteries.

== CAN Bus Connectors
<can-bus-connectors>
See my
#link("https://github.com/jman4747/ACT-DCS/blob/main/2025/2025-06-21_CAN_Bus_Connector_Testing.md")[CAN Bus Connectors paper.]

We may just standardize PP15 connectors for all CAN Bus then write a
separate paper that standardizes what ferrules to use with PP15's where
the wire gauge we want to use is smaller than the minimum size for the
PP15.

== Electrical Standards
<electrical-standards>
Should detail: - Wire gauges and insulation types to use. - Connectors
to use. - Get specific part numbers and buy in bulk. - Favor parts
available from Automation Direct and McMaster-Carr.

Pending
#link("https://github.com/jman4747/ACT-DCS/blob/main/2025/2025-06-21_CAN_Bus_Connector_Testing.md")[CAN Bus Connectors]
decision.

== Recycle robot batteries
<recycle-robot-batteries>
Remove cables and save all related hardware.

Combine with Batteries Plus sponsor ask.

== Robot Battery Standards
<robot-battery-standards>
Refine the existing document.

== Electrical Troubleshooting Cheat Sheet
<electrical-troubleshooting-cheat-sheet>
When there's an electrical problem, what should you check and in what
order? It should also include the led indicator patterns for all devices
on the robot e.g.~for the SPARK Max, it blinks a certain way when the
CAN Bus is disconnected.

= Manufacturing
<manufacturing>
== Lathe
<lathe>
+ Create a maintenance plan and mount it.
+ Order tooling for:
  + Making non-threaded spacers from tube stock
  + Parting stock to length
  + Making threaded spacers (drilling and tapping ends of stock)

All work will be in aluminum, bronze, and plastics. Find a machinist
mentor to help with this!

== Field Element Build Prep
<field-element-build-prep>
The Manufacturing dept. shall build all field elements within three (3)
days of kickoff. The Manufacturing dept. shall prepare for this before
the season starts by using past field specifications to estimate what
tools and materials will be needed on kickoff. The team shall ensure a
budget is available on Kickoff for this purpose and obtain some
competition approved carpet.

== CNC Router
<cnc-router>
We need to test cut aluminum, Acetal Resin (aka Delrin), ABS, UHMW
White, and Polycarbonate in 0.125” and 0.25” thicknesses. - We need to
determine optimal cutters, feeds, and speeds. - We need to come up with
setup techniques for large flat pieces that will prevent warping. - We
need to determine how accurate the tool is for different kinds of parts.
