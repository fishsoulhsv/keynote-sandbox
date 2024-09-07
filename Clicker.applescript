
(** Add the argument shape to the current slide at the desired location *)
on addShape(wantedShapeName)
	tell application "System Events"
		-- Assumes that keynote is maximized on the main monitor
		tell process "Keynote"
			
			-- Set up some convenience variables
			set w to window 1
			set tb to toolbar 1 of w
			set shapeButton to checkbox "Shape" of tb
			
			-- If the shape dialog isn't open, open it by clicking on the Shape button in the toolbar
			try
				set shapeDialog to pop over 1 of shapeButton
			on error errMsg number errNum
				click shapeButton
				set shapeDialog to pop over 1 of shapeButton
			end try
			
			-- Type in the name of the desired shape into the searchbox of the shapes dialog		
			set searchField to text field 1 of shapeDialog
			(*
		try
			-- If there's already text in the dialog, there'll be an "x" button that will need clicking.
			-- click the "x" to clear the searchfield
			set xBtn to button 2 of searchField
			click xBtn
		end try
		*)
			set value of searchField to wantedShapeName
			delay 0.5
			
			-- click on the first item in the match list to add the shape to the slide
			set firstMatch to button 1 of group 1 of list 1 of list 1 of scroll area 1 of shapeDialog
			click firstMatch
			
		end tell
	end tell
end addShape

on listProps(MyObject)
	display alert "1"
	try
		get properties of MyObject
	on error errText number errNum
		
		set pStart to offset of "{" in errText
		set structure to text pStart thru ((length of errText) - 2) of errText
		set TIDL to AppleScript's text item delimiters
		set AppleScript's text item delimiters to ","
		set fields to text items of structure as list
		set myMessage to ""
		repeat with f from 1 to count of fields
			set AppleScript's text item delimiters to ":"
			set theseItems to text items of (item f of fields) as list
			set itemPropName to text 2 thru length of item 1 of theseItems
			set itemValue to item 2 of theseItems
			set myMessage to myMessage & "Property Label: " & itemPropName & tab & "Value: " & itemValue & linefeed
		end repeat
		set AppleScript's text item delimiters to TIDL
		set myMessage to "oops"
		display alert myMessage
	end try
end listProps

on slideinfo()
	log "SlideInfo..."
	tell application "Keynote"
		set theSlide to current slide of front document
		
		
		log theSlide's default body item
		
		(*
		BROKEN
		log "objCDictionary..."
		set objCDictionary to current application's NSDictionary's dictionaryWithDictionary:theSlide
		log "allKeys..."
		set allKeys to objCDictionary's allKeys()
		log allKeys
		*)
		
		--REF: https://stackoverflow.com/questions/18062494/how-to-enumerate-the-keys-and-values-of-a-record-in-applescript
		try
			properties of theSlide as string
		on error errMsg number errNum
			--log errMsg
			set si to errMsg
		end try
		log "si---> " & si
		
		(* Objective-C classes:
		
			smas - slide layout
			KnMs - slide's parent document's title?
			KnSd - slide
			KSdN - slide number
			sdti - Slide title item
			sdbi - slide body item
			Kskp
			Kbsh
			ksnt
			strn - Slide Transition object (
				xdur - transition's duration
				xdly - transition's delay
				xeft - transition's effect - ****tnil, if no transition
				xaut - transition's automatic-ness. "false" = transition onClick
			)
			Ktsh
		*)
		
		log "-----"
		log properties of theSlide as list
		set a to properties of theSlide as list
		repeat with i from 1 to count of a
			log item i of a
		end repeat
		
		(*
		set i to 0
		repeat with p in (properties of theSlide as list)
			set i to i + 1
			log i & ". " & (p as string)
		end repeat
		*)
		--scroll area 2 of splitter group 1 of w
		--BROKEN: listProps({"a", "bc"})
	end tell
end slideinfo


on drawFreehand(wantedPoints)
	--slideinfo()
	
	tell application "System Events"
		-- Assumes that keynote is maximized on the main monitor
		tell process "Keynote"
			activate
			
			-- Set up some convenience variables
			set w to window 1
			set tb to toolbar 1 of w
			set shapeButton to checkbox "Shape" of tb
			
			-- If the shape dialog isn't open, open it by clicking on the Shape button in the toolbar
			try
				set shapeDialog to pop over 1 of shapeButton
			on error errMsg number errNum
				click shapeButton
				set shapeDialog to pop over 1 of shapeButton
			end try
			
			-- Click on the Freehand tool...
			set freeHandBtn to button 1 of shapeDialog
			delay 0.2
			click freeHandBtn
			delay 0.2
			
			-- Finding the slide:
			--  If the navigation panel is showing: `scroll area 2 of splitter group 1 of w`
			--  If the navigation panel AND the object browser are showing: `scroll area 3 of splitter group 1 of w`
			
			
			-- Now click at the point locations requested in wantedPoints
			-- TODO: Need to compute the global coordinates of the top-left of the slide.
			-- In the meantime, here's a hardcode.
			set slideTopLeft to {154, 238}
			display alert 1
			repeat with i from 1 to length of wantedPoints
				set curPt to item i of wantedPoints
				set newX to (item 1 of curPt) + (item 1 of slideTopLeft)
				set newY to (item 2 of curPt) + (item 2 of slideTopLeft)
				--display alert "newX=" & newX & " newY=" & newY
				--log "newX=" & newX & " newY=" & newY
				--display alert (click at {newX, newY})
				click at {newX, newY}
				delay 0.2
			end repeat
			display alert 2
		end tell
	end tell
end drawFreehand

on setShapePos(wantedX, wantedY)
	tell application "Keynote"
		-- Get the selected item from the slide.
		set doc to the front document
		try
			set sel to selection of doc
			-- sel will be a list. Operate only on the first item of the list.
			-- And if NO shapes are selected it'll still have one item: the slide itself.
			if (number of items of sel ­ 1) then
				display alert "Caution: Selection is multiple items. Operating only on first one."
			end if
			set sel1 to item 1 of sel
			set the position of sel1 to {wantedX, wantedY}
		on error errMsg number errNum
			display alert "Error from setShapePos: " & errMsg
		end try
	end tell
end setShapePos

on setShapeSize(wantedX, wantedY)
	tell application "Keynote"
		-- Get the selected item from the slide.
		set doc to the front document
		try
			set sel to selection of doc
			-- sel will be a list. Operate only on the first item of the list.
			-- And if NO shapes are selected it'll still have one item: the slide itself.
			if (number of items of sel ­ 1) then
				display alert "Caution: Selection is multiple items. Operating only on first one."
			end if
			set sel1 to item 1 of sel
			-- Many shapes won't let you squish them. In that case, the last setting wins.
			set the width of sel1 to wantedX
			set the height of sel1 to wantedY
		on error errMsg number errNum
			display alert "Error from setShapeSize: " & errMsg
		end try
	end tell
end setShapeSize

-- Interact with the Style panel to set the fill of the selected shape.
-- Requires that we have a selection
on setShapeFill()
	tell application "System Events"
		tell process "Keynote"
			
			-- Set up some convenience variables
			set w to window 1
			set tb to toolbar 1 of w
			
			-- First click on the Document button, then go back and click on the Format button. That'll make
			-- sure we are seeing the Formatting tools palette.
			set DocButton to radio button 3 of group 1 of tb
			set FmtButton to radio button 1 of group 1 of tb
			click DocButton
			click FmtButton
			
			-- Click on the Style tab.
			set StyleTab to radio button 1 of radio group 1 of w
			click StyleTab
			
			-- Select the Fill Type (caution -- there's a spinny triangle next to Fill and if that's closed, then we can't click any of the Fill items.
			
			
		end tell
	end tell
end setShapeFill

on pixelColor(loc)
	-- return the RGB of the pixel at the given loc
	-- many thanks to https://apple.stackexchange.com/questions/87801/how-to-get-color-of-pixel-in-coordinates-123-456-in-screen
	-- even though the -s parameter in the accepted answer is incorrect.
	--log "pixelColor(" & loc & ")"
	
	set x to item 1 of loc
	set y to item 2 of loc
	set screenCapCmd to "screencapture -R" & x & "," & y & ",1,1 -t bmp $TMPDIR/test.bmp"
	-- There are actually four BGRA pixels in this bmp file.
	-- For info on the bmp file format, see https://en.wikipedia.org/wiki/BMP_file_format
	
	-- The command to hexdump the 2x2 pixel screencapture bmp file.
	-- This depends on the bit depth being 24 or 32 bits per pixel.
	-- The value of the "-s" parameter is the offset, and it's based on what the DIB in the header of the bmp file says.
	set xxdCmd to "xxd -p -l 3 -s 146 $TMPDIR/test.bmp"
	-- The order of the color components isn't RGB but is BGR.
	
	-- The sed command reverses the order of the output of the hexdump so that we get RGB instead of BGR
	set sedCmd to "sed 's/\\(..\\)\\(..\\)\\(..\\)/\\3\\2\\1/'"
	
	set ans to (do shell script screenCapCmd & " && " & xxdCmd & " | " & sedCmd)
	
	return ans
	
end pixelColor

on abs(num)
	if num < 0 then return -num
	return num
end abs

on findSlideTopLeft()
	
	-- Find the actual top-left of the slide object within the slide pane.
	-- There doesn't seem to be an AppleScript handle to get to the slide object's location.
	-- Instead, I can click on the document and get the panel that contains the slide. Then
	-- I have to find where the slide is within the slide pane.
	
	tell application "System Events"
		tell process "Keynote"
			global slidePane
			set slidePane to (click at {575, 359})
		end tell
	end tell
	
	tell application "Keynote"
		global slidePane
		try
			-- DOESN'T WORK: display alert properties of slidePane
			--log properties of slidePane
		on error errMsg number errNum
			"properties of slidePane --> " & (log errMsg)
		end try
		
		
		-- STUDY UI element from System Events.sdef...
		-- REF: https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_fundamentals.html#//apple_ref/doc/uid/TP40000983-CH218-SW8
		
		-- Find the actual top-left of the slide. Start with the top-left of the pane that contains the slide. Click it. If the color of the pixel
		-- clicked is the background color, then move half-way to the bottom right of the pane.
		set topleft to item 3 of (properties of slidePane as list)
		set minX to (item 1 of topleft) + 1
		set minY to (item 2 of topleft) + 1
		log "minX=" & minX & ", minY=" & minY
		set topleftColor to my pixelColor({minX, minY})
		log ((minX as string) & ", " & minY as string) & " = " & topleftColor
		
		set notDone to true
		set deltaY to 100
		set maxRepeats to 20
		set iRepeats to 0
		set nowInSlide to false -- Signal whether the point currently under consideration is not within the bounds of the slide
		set prevInSlide to false -- Signal whether the PREVIOUSLY considered point was within the bounds of the slide.
		--set paneBgColor to "d8d8d9"
		set paneBgColor to "e5e5e6"
		
		repeat while notDone
			set iRepeats to iRepeats + 1 -- keep track of how many times we've repeated.
			log "iRepeats=" & iRepeats
			set prevInSlide to nowInSlide
			
			set topleftColor to my pixelColor({minX, minY})
			
			if topleftColor ­ paneBgColor then
				-- We're WITHIN the slide now!
				set nowInSlide to true
			else
				-- we're still (or back) into the pane background
				set nowInSlide to false
			end if
			
			log ((minX as string) & ", " & minY as string) & " = " & topleftColor & " deltaY=" & deltaY & " nowInSlide=" & nowInSlide
			
			-- If previous point was the the opposite of current point, and if deltaX isn't too small, work our way back up towards the edge of the slide.
			if prevInSlide ­ nowInSlide then
				if my abs(deltaY) > 1 then
					-- If deltaY is still big, then we need to set it to negative half deltaX and prepare to go in the other direction.
					set deltaY to (-0.5 * deltaY) as integer
					if deltaY = 0 then set notDone to false
				else
					set notDone to false
				end if
			end if
			
			if iRepeats > maxRepeats then
				log "Too many repeats. Exiting loop"
				set notDone to false
			end if
			
			if notDone then
				-- We're still in the background. Update minX, minY and check again.
				--set minX to minX + deltaY
				set minY to minY + deltaY
				set topleftColor to my pixelColor({minX, minY})
			end if
			
		end repeat
		
		-- If we're here, assume we're in the slide's shadow. At 100% zoom, the shadow is 9px wide. 
		-- So add 9px to the y value to get us to the actual edge of the slide.
		set minY to minY + 10
		
		log "findSlideTopLeft Answer: top of slide is at " & minY
		
	end tell
end findSlideTopLeft

--addShape("Circle") -- works
--setShapePos(200, 200) -- works
--setShapeSize(190, 720) -- works
--WIP:setShapeFill()
--WIP:drawFreehand({{10, 10}, {100, 30}, {300, 10}})
findSlideTopLeft()
--slideinfo()
--display alert pixelColor({410, 410})