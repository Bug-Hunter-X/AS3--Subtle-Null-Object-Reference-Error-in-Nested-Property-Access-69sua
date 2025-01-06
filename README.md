# ActionScript 3 Null Object Reference Bug

This repository demonstrates a common yet subtle bug in ActionScript 3 related to null object references when accessing nested properties.  The code appears to have a null check, but it fails to account for the possibility of null values deeper within the object hierarchy.  This often results in intermittent runtime errors that can be difficult to track down.

## Problem
The `bug.as` file contains ActionScript code that attempts to access nested properties of an object.  The code includes a check to ensure the main object is not null; however, it doesn't handle the case where a nested property might be null.

## Solution
The `bugSolution.as` file provides a corrected version of the code.  It uses a series of null checks to safely access nested properties, preventing the 1009 error.

## How to Reproduce
1. Clone this repository.
2. Open `bug.as` in an ActionScript 3 editor (like FlashDevelop).
3. Run the code with different input values (some with null nested properties).
4. Observe the 1009 error occurring intermittently.  Then compare with the corrected code.