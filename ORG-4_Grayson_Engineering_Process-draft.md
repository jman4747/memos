# Objectives

- Explain the engineering process
- Map our engineering process to NASA process

# Overview

Grayson Robotics loosely follows the [NASA process](https://www.nasa.gov/wp-content/uploads/2018/09/nasa_systems_engineering_handbook_0.pdf?emrc=4096b9) as a baseline to ensure our staring point is reasonable.
NASA projects are more similar to FRC than the commercial product life cycles common in INCOSE and other examples.
Use of LLM, transformer models, or "Generative AI" is prohibited.

## Design vs Research
All steps prior to building the final robot can be separated into either design activities or research activities.
Generally speaking, design is how you decide precisely what to do and research is how you figure out what you could do.
Research includes prototyping, R&D taking place before the season, and researching existing solutions to similar problems.

Designs must be validated by prototypes, manufacturing standards, or prior work and justified, at least transitively, by the strategy.

All prototypes must test a documented hypothesis.

# Concept Studies

Concept studies mostly occurs at the game design phase handled by FIRST, but the team
is still responsible for setting its goals for the season. The outputs of this phase are
the Game Manual (and associated field design materials) and the teams goals for the season.
We decide and document our season goals before the season starts, as such they are
agnostic with respect to whatever the specific game will entail.

## Game Manual

The Game Manual provides three important categories of information:
fabrication requirements, game & tournament rules, and field specifications.
All team members will need to read and understand all of these as every department
has responsibilities requiring knowledge of the game manual.

There are less obvious reasons that team members would need to read the manual, for example:

- Conduct rules common to all competition events.
- How the ranking system breaks ties matters to the Strategy dept
- The theme, cosmetic markings, and design of field elements is important to the marketing team for obtaining the Imagery Award.

## Season Goals

Grayson Robotics shall document our goals are prior to the beginning of the build season.
Remember: goals aren't strategy.

# Concept & Technology Development

Figure out how we want to play the game.
Most systems engineering work happens here.

We build prototypes mostly to tell how we can handle game-pieces and nothing else.
For example:

- We would want to know how different materials grip the game piece.
- How it slides on other materials.
- Build mock-ups to see how many game pieces we could hold at once and how they might be arranged.

We cannot build more involved prototypes until we fully understand what the system needs to do and that is the output of this phase.

## Field Elements

The Manufacturing dept shall build all field elements within three (3) days of Kickoff.
The Manufacturing dept shall prepare for this before the season starts by using past field specifications to estimate what tools and materials will be needed on kickoff.
The team shall ensure a budget is available on Kickoff for this purpose and obtain some competition approved carpet.

## Season Goals

Prior to the start of the season, the team shall document its goals for the upcoming season.
After the season begins, the team shall set more specific goals that refer to the game and extend the goals documented before the start of the season.

## Handling Analysis

Engineering departments shall analyze how game pieces interact with different materials and common mechanisms.

For example:

- How much time a 2025 Coral takes to slide down the feeder station ramp.
- What materials would allow a 2013 Frisbee to slide freely.

All engineering departments shall use this information to check that their designs are feasible.

It is forbidden for team members to create more involved prototypes prior to approval of the Strategy so as not to bias the strategy development.

## Strategy

The strategy dept shall create a draft strategy (a plan to meet the Season Goals) and seek approval from each department for this plan.
The strategy shall include both scoring priorities and competition plans.

### Game-play Analysis

Analyze how long different actions may take.
Find the theoretical maximum number of times a team could score via particular methods, and try to estimate what the maximum scores could be based on physical limitations.
Use this to set preliminary performance targets, the feasibility of which will be tested by the engineering departments with prototypes.

Analyze the Degrees of Freedom (DoF) involved in scoring; an axis of rotation or translation or a part of the robot or game piece/field element.

### Scoring Priorities

Set priority levels between different scoring methods rather than detailing individual match plans.
The strategy shall prioritize scoring types that serve as tie-breakers for the tournament ranking.

### Competition Plans

Competition plans should seek to answer, at a minimum, these questions:

- What data needs to be collected during and at competition?
- Priority ranking between match plans; which are more important?
- Which match plans need to be realized by each competition?
- How will we chose alliance partners?
- What aspects of our robot will we emphasize to other teams?
- What awards will we aim for?
- What aspects of the team/robot will we emphasize to judges to get awards?
- What types of scoring will we prioritize at the event? (Helps decide which sub-systems get priority for completion.)

## Strategy Verification

All team members shall review the draft and each department shall approve it or, if they do not, the Strategy dept shall revise it.
Approval is by department, not by member. Each department shall use its own internal method for deciding weather to approve the strategy.

## Operational Analysis (OA)

Without considering the role of the robot, answer the question: "what does the team need to do to execute the strategy?"

The OA depends on the strategy but the Systems dept can start work, based on the rules, before the strategy is approved.
Once the team approves the strategy, the Systems dept shall complete the OA.

This document will be used by all departments not just engineering.
For example: operations would need it as a starting point to know what to pack and how to set up the cart.
With that in mind, the Systems Engineering dept shall consider everything the team will need to do at a competition, not just what happens during in matches.

### Match Plans

Create a user story for every match scenario we need to be able to carry out to achieve our goals.
The robot should not be the actor at this stage, rather, we would write the user story as if the team is the actor.
Match plans should be specific and granular. In 2025 that would mean enumerating the specific pegs and order to place coral.

## Acquire-Deposit Options Prototyping

The engineering departments shall prototype sub-systems that can acquire game pieces and deposit them in ways that meet the strategy.
This means, for now, ignoring how the pieces will be stored and transferred through the robot.
The goal is to create several alternatives that we can select our final design from later.

This should start as soon as the strategy is complete and agreed upon.

## System Needs Analysis (SA)

Given the [OA](#operational-analysis-oa), answer the question: "Of everything the team needs to do, what will the robot do?"

Software development for the main robot can start using the completed SA.

# Preliminary Design & Technology Development

Use prototypes to figure out what's feasible for the robot to do and finalize a concept.

Set final performance requirements using the prototypes to ensure that the requirements are feasible.

## Interface Options Prototyping

Prototype the mechanisms that will get game pieces from intake sub-systems to scoring sub-systems.
This should start as soon as the System Needs Analysis is complete as we will want to be sure that the robot will need the mechanism.

## Logical Architecture (LA)

The LA shall guide prototyping by defining how the system needs to function without assigning a level of detail that would preclude any particular physical implementation.
Answer the question: "how will the robot work?" without describing any specific hardware.
This allows you to describe what may become physically interdependent sub-systems as logically separate.

It may be the case that a particular mechanical device is responsible for handling two completely different functions,
but it would be too limiting to decide this before all functions are enumerated.
For example: in 2025 one would model the Coral and Algae lifts as two separate logical components.
Even though they may be the same physical hardware, there are different requirements for handling each game element which are best discovered by considering the two subsystems independently.

## Prototype Selection

Select the combination of prototypes that will ultimately be combined into a final robot design.
This will constitute a complete robot concept and shall be agreed upon by all team members.

Decision factors for relative comparison:

- readjustment or calibration during competition
- how many sensors
- what kinds of sensors
- degrees of freedom
- number of uncontrolled basic motions for the game piece
- cost
- manufacturing time
- manufacturing know how (do we already have experience with all required techniques)
- weight

# Final Design & Fabrication

Construct a prototype robot from the selected prototype sub-systems.

For the competition robot, document, at the greatest detail possible,
what specific components will be used through both 3D CAD and written technical documentation.

## Physical Architecture (PA)

What specific parts the robot is made of and how it does what it does.
The PA takes the abstract model of [LA](#logical-architecture-la) and assigns specific components to the logical sub-systems described by the [LA](#logical-architecture-la).

The PA document shall describe what prototypes we select to build the prototype robot and why.
The PA document shall describe how the prototypes will interact with each other in as much detail as each engineering department requires.
This shall be updated throughout the Final Design & Fabrication phase as more refinement becomes necessary.

The PA documentation shall be comprised of at least:

- [CAD](#final-cad)
- Wire diagram or connection list
- Operator procedures & checklists

## Prototype Robot

The prototype robot shall be useful for drive practice and code testing, and 
be updated to maintain parity with the competition robot over time.

Robot code should be built with abstractions that allow most logic to be reused despite non-functional differences between prototype and competition robot.

## Final CAD

The final CAD should include details down to individual components expected to be assembled or manufactured by Grayson Robotics.
Furthermore, components shall have material properties set or have their weight manually entered to ensure accurate weight estimation.

# Assembly, Integration & Test, Launch

Minimize changes and focus on developing operations and training documentation, and operator practice.

## Initial Competition Robot

An initial competition robot shall be ready for practice no less than one (1) week before the first district qualifier.
In 2026 the deadline would be: 2026-03-06.

## Upgrades

Upgrades must progress through the full design process and be fitted and tested on the prototype robot.
Furthermore, the designers shall produce a plan for restoring the competition robot to its prior state before integration of the upgrade. 

# Schedule 2026

Concept & Technology Development Phase:

- Kickoff: 2026-01-03
- Field Elements Constructed: 2026-01-06
	- Manufacturing dept
- Strategy Completed: 2026-01-07
	- Strategy dept: draft
	- All members: approve
- Operational Analysis complete: 2026-01-13
	- Systems Engineering dept
- System Needs Analysis: 2026-01-18
	- Systems Engineering dept

Preliminary Design & Technical Development Phase:

- Logical Architecture: 2026-01-28
	- Systems Engineering dept
- Acquire-Deposit Prototype Selection: 2026-01-30
	- Systems Engineering dept
- Interface Prototype Selection: 2026-02-05 
	- Systems Engineering dept

Final Design & Fabrication Phase:

- Physical Architecture: 2026-02-09
- Prototype Robot: 2026-02-14
- Final CAD: 2026-02-21

Assembly, Integration & Test, Launch Phase:

- First Version Competition Robot: 2026-03-06
- First District Qualifier (Gwinnett): 2026-03-13
