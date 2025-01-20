### Keynote Sandbox

2025-01-20 Initial Version

## Introduction

This is a collection of AppleScripts I've put together to try to understand the range of scripting abilities in Keynote.

## Keynote Sandbox.scpt

## Clicker.scpt

This is the main driver program with a collection of WIP functions.

`addShape` - _Objective:_ Add argument shape to the current slide at the desired location.

_Challenges:_ The AppleScript library for Keynote doesn't permit the selection of a shape type. Instead, I have to use the System Events library to script the injection of a shape into the document.

`listProps` - _Objective:_ Generic utility to display an alert with the properties of the argument object.

`slideinfo` - _Objective:_ Report information about the current slide.

`drawFreehand` - _Objective:_ Draw a shape from the collection of points.

`setShapePos` - _Objective:_ Set the position of the currently-selected shape to the argument x,y.

`setShapeSize` - _Objective:_ Set the width, height of the selected shape to the argument width, height.

`setShapeFill` - _Objective:_ Interact with the Style panel to set the fill of the selected shape.

`pixelColor` - _Objective:_ Report the RGB color of the pixel at the given location.

`abs` - _Objective:_ Returns the absolute value of the argument number.

`findSlideTopLeft` - _Objective:_ Find the actual top-left of the slide object within the slide pane.


`clickAndTell` - _Objective:_ Automate clicking at a location and log what the `click` function returns.
