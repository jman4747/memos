// The project function defines how your document looks.
#let project(
  title: "",
  authors: (),
  departments: (),
  doc_type: "",
  document_number: none,
  date: none,
  status: "DRAFT",
  version: "N/A",
  hash: "",
  src_length: 0,
  graysondoc_version: "0.1.0",
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
      #doc_type\-#document_number - #status - V#version
    ]
  )
  set text(font: "Atkinson Hyperlegible Next", lang: "en", size: 14pt)
  show link: underline
  let dept_line = for dept in departments {
    [
      *#dept*
    ]
  }
  // Title row.
  align(center)[
    #block(text(weight: 500, 1.5em, [#doc_type\-#document_number #title]))
    // #block(text(weight: 700, 1.75em, title))
    #v(2em, weak: true)
    #text([#dept_line], spacing: 200%) \
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
    *Document Type:* #doc_type \
    *Document \#:* #document_number \
    *Status:* #status \
    *Version:* #version \
    *Source Repository:* https://github.com/ \
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
	title:"Engineering Process",
	authors: (
		"Josh T.",
	),
	departments: (
		"All Departments",
	),
	doc_type: "ORG",
	document_number: 4,
	date: "2025/11/29 UTC -0500",
	status: "Draft",
	version: 2,
	hash: "75CD54340855BBF0",
	src_length: 15926,
	graysondoc_version: "0.2.0",
)

= Objectives
<objectives>
- Explain the engineering process
- Map our engineering process to NASA process
- Map our systems engineering process to the Arcadia method

= Overview
<overview>
Grayson Robotics loosely follows the
#link("https://www.nasa.gov/wp-content/uploads/2018/09/nasa_systems_engineering_handbook_0.pdf?emrc=4096b9")[NASA process]
as a baseline to ensure our staring point is reasonable. NASA projects
are more similar to FRC than the commercial product life cycles common
in INCOSE and other examples. Use of LLM, transformer models, or
"Generative AI" is prohibited.

== Design vs Research
<design-vs-research>
All steps prior to building the final robot can be separated into either
design activities or research activities. Generally speaking, design is
how you decide precisely what to do and research is how you figure out
what you could do. Research includes prototyping, R&D taking place
before the season, and researching existing solutions to similar
problems.

Designs must be validated by prototypes, manufacturing standards, or
prior work and justified, at least transitively, by the strategy.

== Prototypes
<prototypes>
All prototypes shall test a documented hypothesis. Team members building
prototypes shall document: the hypothesis being tested, the part of the
strategy they intend to fulfill, and the part of the system design they
intend to implement.

= Requirements
<requirements>
== User Stories
<user-stories>
Informal description of user needs and expectations.

User Story Mapping is a method for capturing a narrative description of
stakeholder goals and strategy.

User Stories are documented with sub-formal Use Cases and and other
informal written and visual methods.

== Use Cases
<use-cases>
Use cases are used to capture functional requirements. Use cases take
the form of a written description of the system's behavior.

=== Sub-Formal Use Case Format
<sub-formal-use-case-format>
- Title
- Primary Actor
- Date
- Scope
- Goal In Context
- Scenario
- Notes

=== Formal Use Case Format
<formal-use-case-format>
- All fields from the sub formal format (except Scenario)
- Stakeholders & Interests
- Precondition
- Minimal Guarantees
- Success Guarantees
- Trigger
- Main Success Scenario
- Extensions
- Response Time
- Frequency
- Secondary Actors
- Open Issues

== Non-Functional Requirements
<non-functional-requirements>
Constraints on the systems composition that can be thought of as
implementation decisions.

Non-functional requirements take the form of short, atomic, "shall"
statements collected into tables.

=== Non-Functional Requirement Table Fields
<non-functional-requirement-table-fields>
- Unique Numerical ID
- Component
- Timestamp w/date, time (24H), UTC offset
- Requirement text (shall statement)
- Version number: auto-incrementing on each change
- Author
- Priority: Mandated, High, Medium, Low
- Status: Accepted or Deleted
- Risks

= Concept Studies
<concept-studies>
Concept studies mostly occurs at the game design phase handled by FIRST,
but the team is still responsible for setting its goals for the season.
The outputs of this phase are the Game Manual (and associated field
design materials) the teams goals for the season, and a preliminary
strategy. We decide and document our season goals before the season
starts, as such they are agnostic with respect to the game rules.

== Game Manual
<game-manual>
The Game Manual provides three important categories of information:
fabrication requirements, game & tournament rules, and field
specifications. All team members need to read and understand the rules,
as every department has responsibilities requiring knowledge of the game
manual.

There are less obvious reasons that team members would need to read the
manual, for example:

- Conduct rules common to all competition events.
- How the ranking system breaks ties matters to the Strategy dept
- The theme, cosmetic markings, and design of field elements is
  important to the marketing team for obtaining the Imagery Award.

== Team Goals
<team-goals>
Grayson Robotics shall document our goals are prior to the beginning of
the build season:

- Each department shall document goals for that department as a User
  Story.
- The strategy department shall incorporate each departments goals into
  a unified User Story

== Preliminary Strategy
<preliminary-strategy>
Grayson Robotics shall document a preliminary strategy prior to the
beginning of the build season:

- Each department shall create a draft strategy for their role in
  achieving the #link(<team-goals>)[Team Goals] in the form of a user
  story.
- The strategy department shall incorporate each departments strategy
  into a unified User Story.

= Concept & Technology Development
<concept-technology-development>
Figure out how we want to play the game. Most systems engineering work
happens here.

At this stage, we build prototypes to understand how we can handle
game-pieces and nothing else. For example:

- We would want to know how different materials grip the game piece.
- How it slides on other materials.
- Build mock-ups to see how many game pieces we could hold at once and
  how they might be arranged.

We cannot build more involved prototypes until we fully understand what
the system needs to do and that is the output of this phase.

== Field Elements
<field-elements>
The Manufacturing dept shall build all field elements within three (3)
days of Kickoff. The Manufacturing dept shall prepare for this before
the season starts by using past field specifications to estimate what
tools and materials will be needed on kickoff. The team shall ensure a
budget is available on Kickoff for this purpose and obtain some
competition approved carpet.

== Season Goals
<season-goals>
After the season begins, the team shall set more specific goals that
refer to the game and extend the #link(<team-goals>)[Team Goals]
documented before the start of the season.

== Handling Analysis
<handling-analysis>
Engineering departments shall analyze how game pieces interact with
different materials and common mechanisms.

For example:

- How much time a 2025 Coral takes to slide down the feeder station
  ramp.
- What materials would allow a 2013 Frisbee to slide freely.

All engineering departments shall use this information to check that
their designs are feasible.

Team members are forbidden from creating more involved prototypes prior
to approval of the Strategy, so as not to bias the strategy development.

== Strategy
<strategy>
The strategy dept shall create a draft strategy (a plan to meet the
Season Goals) and seek approval from each department for this plan. The
strategy shall include both scoring priorities and competition plans.

=== Game-play Analysis
<game-play-analysis>
Analyze how long different actions may take. Find the theoretical
maximum number of times a team could score via particular methods, and
try to estimate what the maximum scores could be based on physical
limitations. Use this to set preliminary performance targets, the
feasibility of which will be tested by the engineering departments with
prototypes.

Analyze the Degrees of Freedom (DoF) involved in scoring; an axis of
rotation or translation or a part of the robot or game piece/field
element.

The Systems Engineering department shall maintain a Game-Play Analysis
document containing the aforementioned calculations and listing all
identified DoF.

=== Scoring Priorities
<scoring-priorities>
Set priority levels between different scoring methods rather than
detailing individual match plans. The strategy shall prioritize scoring
types that serve as tie-breakers for the tournament ranking. The
strategy department shall maintain a special document for this purpose.

=== Competition Plans
<competition-plans>
Competition plans should seek to answer, at a minimum, these questions:

- What data needs to be collected during and at competition?
- Priority ranking between match plans; which are more important?
- Which match plans need to be realized by each competition?
- How will we chose alliance partners?
- What aspects of our robot will we emphasize to other teams?
- What awards will we aim for?
- What aspects of the team/robot will we emphasize to judges to get
  awards?
- What types of scoring will we prioritize at the event? (Helps decide
  which sub-systems get priority for completion.)

Competition plans shall take the form of User Stories collected from
each department that detail their plans for each competition.

== Strategy Verification
<strategy-verification>
All team members shall review the draft and each department shall
approve it or, if they do not, the Strategy dept shall revise it.
Approval is by department, not by member. Each department shall use its
own internal method for deciding weather to approve the strategy.

== Operational Analysis (OA)
<operational-analysis-oa>
Without considering the role of the robot, answer the question: "what
does the team need to do to execute the strategy?"

The OA depends on the strategy but the Systems dept can start work,
based on the rules, before the strategy is approved. Once the team
approves the strategy, the Systems dept shall complete the OA.

This document will be used by all departments not just engineering. For
example: operations would need it as a starting point to know what to
bring to competitions and how to set up the cart. With that in mind, the
Systems Engineering dept shall consider everything the team will need to
do at a competition, not just what happens during in matches.

OA documentation should take the form of
#link(<formal-use-case-format>)[Formal Use Cases] and requirements for
the team.

=== Match Plans
<match-plans>
Create a #link(<formal-use-case-format>)[Formal Use Case] for every
match scenario we need to be able to carry out to achieve our goals. The
robot should not be the actor at this stage, rather, we would write the
user story as if the team is the actor. Match plans should be specific
and granular. In 2025 that would mean enumerating the specific pegs and
order to place coral.

== Acquire-Deposit Options Prototyping
<acquire-deposit-options-prototyping>
The engineering departments shall prototype sub-systems that can acquire
game pieces and deposit them in ways that meet the strategy. This means,
for now, ignoring how the pieces will be stored and transferred through
the robot. The goal is to create several alternatives that we can select
our final design from later.

This should start as soon as the strategy is complete and agreed upon.

== System Needs Analysis (SA)
<system-needs-analysis-sa>
Given the #link(<operational-analysis-oa>)[OA];, answer the question:
"Of everything the team needs to do, what will the robot do?"

The Systems Engineering dept shall designate which Use Cases and
requirements created as part of the OA will be fulfilled by the robot.

If a Use Case needs to be rewritten or split, the Systems Engineering
dept shall write a new Use Case(s) that references and supersedes the
old one.

Software development for the main robot can start using the completed
SA.

= Preliminary Design & Technology Development
<preliminary-design-technology-development>
Use prototypes to figure out what's feasible for the robot to do and
finalize a concept.

Set final performance requirements using the prototypes to ensure that
the requirements are feasible.

== Interface Options Prototyping
<interface-options-prototyping>
Prototype the mechanisms that will transfer game pieces from intake
sub-systems to scoring sub-systems. This should start as soon as the
System Needs Analysis is complete as we will want to be sure that the
robot will need the mechanism.

== Logical Architecture (LA)
<logical-architecture-la>
The LA shall guide prototyping by defining how the system needs to
function without assigning a level of detail that would preclude any
particular physical implementation. Answer the question: "how will the
robot work?" without describing any specific hardware. This allows you
to describe what may become physically interdependent sub-systems as
logically separate.

It may be the case that a particular mechanical device is responsible
for handling two completely different functions, but it would be too
limiting to decide this before all functions are enumerated. For
example: in 2025 one would model the Coral and Algae lifts as two
separate logical components. Even though they may be the same physical
hardware, they will have different requirements for handling each game
element that are best discovered by considering the two subsystems
independently.

== Prototype Selection
<prototype-selection>
Select the combination of prototypes that will ultimately be combined
into a final robot design. This will constitute a complete robot concept
and shall be agreed upon by all team members.

Decision factors for relative comparison:

- readjustment or calibration during competition
- how many sensors
- what kinds of sensors
- degrees of freedom
- number of uncontrolled basic motions for the game piece
- cost
- manufacturing time
- manufacturing know how (do we already have experience with all
  required techniques)
- weight

= Final Design & Fabrication
<final-design-fabrication>
Construct a prototype robot from the selected prototype sub-systems.

For the competition robot, document, at the greatest detail possible,
what specific components will be used through both 3D CAD and written
technical documentation.

== Physical Architecture (PA)
<physical-architecture-pa>
What specific parts the robot is made of and how it does what it does.
The PA takes the abstract model of #link(<logical-architecture-la>)[LA]
and assigns specific components to the logical sub-systems described by
the #link(<logical-architecture-la>)[LA];.

The PA document shall describe what prototypes we select to build the
prototype robot and why. The PA document shall describe how the
prototypes will interact with each other in as much detail as each
engineering department requires. This shall be updated throughout the
Final Design & Fabrication phase as more refinement becomes necessary.

The PA documentation shall be comprised of at least:

- #link(<final-cad>)[CAD]
- Wire diagram or connection list
- Operator procedures & checklists

== Prototype Robot
<prototype-robot>
The prototype robot shall be useful for drive practice and code testing,
and be updated to maintain parity with the competition robot over time.

Robot code should be built with abstractions that allow most logic to be
reused despite non-functional differences between prototype and
competition robot.

== Final CAD
<final-cad>
The final CAD should include details down to individual components
expected to be assembled or manufactured by Grayson Robotics.
Furthermore, components shall have material properties set or have their
weight manually entered to ensure accurate weight estimation.

The model should generally exclude individual wires and connectors
except where the Electrical dept expects the connector to be
disconnected as part of normal operation. Routing paths for wire
harnesses should be modeled to ensure that designers consider what paths
and surfaces are safe for wires and where wires are expected to flex
with a moving mechanism.

= Assembly, Integration & Test, Launch
<assembly-integration-test-launch>
Minimize changes and focus on developing operations and training
documentation, and operator practice.

== Initial Competition Robot
<initial-competition-robot>
An initial competition robot shall be ready for practice no less than
one (1) week before the first district qualifier. In 2026 the deadline
would be: 2026-03-06.

== Upgrades
<upgrades>
Upgrades must progress through the full design process and be fitted and
tested on the prototype robot. Furthermore, the designers shall produce
a plan for restoring the competition robot to its prior state before
integration of the upgrade.

= Schedule 2026
<schedule-2026>
Concept & Technology Development Phase:

- Kickoff: 2026-01-10
- Field Elements Constructed: 2026-01-11
  - Manufacturing dept
- Strategy Completed: 2026-01-15
  - Strategy dept: draft
  - All members: approve
- Operational Analysis complete: 2026-01-17
  - Systems Engineering dept
- System Needs Analysis: 2026-01-19
  - Systems Engineering dept

Preliminary Design & Technical Development Phase:

- Logical Architecture: 2026-01-24
  - Systems Engineering dept
- Acquire-Deposit Prototype Selection: 2026-01-31
  - Systems Engineering dept
- Interface Prototype Selection: 2026-02-07
  - Systems Engineering dept

Final Design & Fabrication Phase:

- Physical Architecture: 2026-02-14
- Prototype Robot: 2026-02-14
- Final CAD: 2026-02-21

Assembly, Integration & Test, Launch Phase:

- First Version Competition Robot: 2026-03-06
- First District Qualifier (Gwinnett): 2026-03-13
