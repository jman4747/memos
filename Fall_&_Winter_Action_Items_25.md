# Action Items for Fall & Winter 2025

This isn't a complete list and will be updated.
All students should read this regardless of department (sub-team).
All of these tasks must have an accompanying project document that tracks progress of the tasks. It can be in whatever format for now, just make it!
I would prefer if they were in Markdown on GitHub (like this file) but do whatever helps you get started ASAP. We need to get into the habit of documenting what we are doing.

If you have questions or are unsure of anything please ask!
If you want me to look at anything in person schedule a weekend meeting.

## Changelog

### 0: 2025-09-29
 - Initial release.

# Git Hub

Everyone should have an account there and we will have to do some kind of training.
We will start with the ACT-DCS repository and try to organize all of these projects there.

# Recycle Old Robot

1. Each sub team should carefully catalog every single component they remove.
2. Electrical shall remove everything that can be before manufacturing disassembles the mechanical components.
3. Gearboxes, including the swerve drives, shall be left assembled after removal from the robot.
4. Josh T. will decide what raw plastic and metal can be thrown away after everything is set aside.
5. The swerve drives shall be overhauled with supervision of Josh T. and/or Mr. Schellenberg.

# Sort Fasteners

No. Seriously. This is an Operations task but anyone can help.
If you are unsure what something is or how to categorize it, first check McMaster-Carr, then ask Josh T. or another mentor.

# Programming

Three to six people need to prototype common software sub-systems.

## Logging

We need to make sure we know how to log arbitrary information about robot state to files on the RIO and extricate that data in less than two (2) minutes.

## Vision

Focus on the Limelight and make sure you can get angle and distance to the QR code things.

## Basic Navigation

Auto aligning to a vision target on button press (while held).
You don't need a whole vision setup; in fact it would be best to start off without one then integrate it later.
You don't need any fancy pose estimation just data from the camera, gyro, encoders, and the ability to tell the drivetrain to do basic motions:
- Translate (including sideways for swerve) some distance via encoders
- Rotate by some number of degrees

# Electrical

Standardizing hardware and setting up batteries.

## CAN Bus Connectors

See my [CAN Bus Connectors paper.](https://github.com/jman4747/ACT-DCS/blob/main/2025/2025-06-21_CAN_Bus_Connector_Testing.md)

We may just standardize PP15 connectors for all CAN Bus then write a separate paper that standardizes what ferrules to use with PP15's where the wire gauge we want to use is smaller than the minimum size for the PP15.

## Electrical Standards

Should detail:
- Wire gauges and insulation types to use.
- Connectors to use.
- Get specific part numbers and buy in bulk.
- Favor parts available from Automation Direct and McMaster-Carr.

Pending [CAN Bus Connectors](#can bus connectors) decision.

## Recycle robot batteries

Remove cables and save all related hardware.

## Robot Battery Standards

Refine the existing document.

## Electrical Troubleshooting Cheat Sheet

When there's an electrical problem, what should you check and in what order?
It should also include the led indicator patterns for all devices on the robot e.g. for the SPARK Max, it blinks a certain way when the CAN Bus is disconnected.

# Manufacturing

## Lathe

1. Create a maintenance plan and mount it.
2. Order tooling for:
	1. Making untreaded spacers from tube stock
	2. Parting stock to length
	3. Making threaded spacers (drilling and tapping ends of stock)

All work will be in aluminum, bronze, and plastics.
Find a machinist mentor to help with this!

## Field Element Build Prep

The Manufacturing dept. shall build all field elements within three (3) days of kickoff.
The Manufacturing dept. shall prepare for this before the season starts by using past field specifications to estimate what tools and materials will be needed on kickoff.
The team shall ensure a budget is available on Kickoff for this purpose and obtain some competition approved carpet.

## CNC Router

We need to test cut aluminum, Acetal Resin (aka Delrin), ABS, UHMW White, and Polycarbonate in 0.125" and 0.25" thicknesses.
- We need to determine optimal cutters, feeds, and speeds.
- We need to come up with setup techniques for large flat pieces that will prevent warping.
- We need to determine how accurate the tool is for different kinds of parts.


