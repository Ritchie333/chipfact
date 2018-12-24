b $62FB Graphics for title screen
N $62FB The top half of the screen display is 2 pixels wide, right-justified
B $62FB,$C0,2*60
N $63BB The bottom half of the screen takes the full width
B $63BB,$C00,20*60
N $6FBB Attributes for title screen
w $72BB Title theme tune
D $72BB Format is (FD - type) or (pitch or FF for rest, length) or FE end
B $72BB,$226,3,2*$7A,3,2*$53,3,2*$41,1
b $74E1 In-game theme tune
D $74E1 Format is pitch or FF for rest, length, or FE end
B $74E1,$1E5,2*$F2,1
b $76C6 End of game automatic movement data
b $7800 Character set
D $7800 #UDG$7800,7,2 #UDG$7808,7,2 #UDG$7810,7,2 #UDG$7818,7,2 #UDG$7820,7,2 #UDG$7828,7,2 #UDG$7830,7,2 #UDG$7838,7,2 
D $7800 #UDG$7840,7,2 #UDG$7848,7,2 #UDG$7850,7,2 #UDG$7858,7,2 #UDG$7860,7,2 #UDG$7868,7,2 #UDG$7870,7,2 #UDG$7878,7,2
D $7800 #UDG$7880,7,2 #UDG$7888,7,2 #UDG$7890,7,2 #UDG$7898,7,2 #UDG$78A0,7,2 #UDG$78A8,7,2 #UDG$78B0,7,2 #UDG$78B8,7,2 
D $7800 #UDG$78C0,7,2 #UDG$78C8,7,2 #UDG$78D0,7,2 #UDG$78D8,7,2 #UDG$78E0,7,2 #UDG$78E8,7,2 #UDG$78F0,7,2 #UDG$78F8,7,2
D $7800 #UDG$7900,7,2 #UDG$7908,7,2 #UDG$7910,7,2 #UDG$7918,7,2 #UDG$7920,7,2 #UDG$7928,7,2 #UDG$7930,7,2 #UDG$7938,7,2 
D $7800 #UDG$7940,7,2 #UDG$7948,7,2 #UDG$7950,7,2 #UDG$7958,7,2 #UDG$7960,7,2 #UDG$7968,7,2 #UDG$7970,7,2 #UDG$7978,7,2
D $7800 #UDG$7980,7,2 #UDG$7988,7,2 #UDG$7990,7,2 #UDG$7998,7,2 #UDG$79A0,7,2 #UDG$79A8,7,2 #UDG$79B0,7,2 #UDG$79B8,7,2 
D $7800 #UDG$79C0,7,2 #UDG$79C8,7,2 #UDG$79D0,7,2 #UDG$79D8,7,2 #UDG$79E0,7,2 #UDG$79E8,7,2 #UDG$79F0,7,2 #UDG$79F8,7,2
D $7800 #UDG$7A00,7,2 #UDG$7A08,7,2 #UDG$7A10,7,2 #UDG$7A18,7,2 #UDG$7A20,7,2 #UDG$7A28,7,2 #UDG$7A30,7,2 #UDG$7A38,7,2 
D $7800 #UDG$7A40,7,2 #UDG$7A48,7,2 #UDG$7A50,7,2 #UDG$7A58,7,2 #UDG$7A60,7,2 #UDG$7A68,7,2 #UDG$7A70,7,2 #UDG$7A78,7,2
D $7800 #UDG$7A80,7,2 #UDG$7A88,7,2 #UDG$7A90,7,2 #UDG$7A98,7,2 #UDG$7AA0,7,2 #UDG$7AA8,7,2 #UDG$7AB0,7,2 #UDG$7AB8,7,2 
D $7800 #UDG$7AC0,7,2 #UDG$7AC8,7,2 #UDG$7AD0,7,2 #UDG$7AD8,7,2 #UDG$7AE0,7,2 #UDG$7AE8,7,2 #UDG$7AF0,7,2 #UDG$7AF8,7,2
g $7B00 Movement table for final room
u $7D72
g $7DC0 Buffer for room flags
D $7DC0 Each byte contains flags for a specific room. These are modified as tasks are completed.
D $7DC0 Bits 0-1 hide various moving objects if they are set
D $7DC0 Bits 3-7 hide various walls if they are set
u $7DF2
g $7E00 Buffer for moving objects
B $7E00,$C6,$21*6
i $7EC6
g $7ED0 Buffer for Ted's current graphic
g $7FD0 Buffer for conveyor belts
g $8000 Copy of screen 1
g $9000 Copy of screen 2
g $A000 Copy of attributes 1
g $A200 Copy of attributes 2
g $A400
g $A402 
g $A403 Various flags
D $A403 If bit 0 is set, Ted is in mid-jump
D $A403 If bit 5 is set, Ted is in mid-air
g $A404 Pointer to movement table
g $A406 Current screen address of Ted
g $A408 Pointer to graphic buffer containing Ted's current frame
g $A40A
g $A40E
g $A410 Flag state when the room was entered
g $A410 Pointer to movement table when room was entered
g $A412 Screen address of Ted when entering the room
g $A414 Pointer to graphic buffer of Ted when entered the room
g $A416
g $A418
g $A41D Pointer to current static object collision table
g $A41F Pointer to current conveyor belt table
g $A421 Current border colour
g $A422 Current room
g $A423 Pointer to static UDGs
g $A425 Current time
g $A42A
g $A42B
g $A42C Next location on screen to erase a life from
D $A42C Values are from 00 - 1F
g $A42D Number of lives
D $A42D Bits 4-8 hold the number of "misses" : 00 - 1F
D $A42E
g $A430 Attribute of first task button being drawn
g $A431 Character offset of first task button being drawn
g $A433 Attribute of current task button being drawn
g $A434 Character offset of current task button being drawn
g $A436
g $A438 Tick counter
g $A439 Various flags
D $A439 Set bit 1 to mark Ted has entered a room and is safe
D $A439 Set bit 1 to mark "repeated death" - instant game over
g $A43A Last room visited before this one
g $A43B
g $A43D
g $A43F
g $A440 Timing speed (number of ticks to increment on each frame)
g $A441 Address of current static UDG being drawn
g $A443 Attribute of current static UDG being drawn
g $A444
g $A445 Size and direction of UDG being drawn
g $A446
g $A447
g $A448 Bitmask to use for keypresses
g $A449
g $A44B
g $A44D Base address of current screen to draw to
g $A44F Current pitch of music note to play
g $A450 Current length of music note to play
g $A451 Pointer to current theme tune data
g $A453 Pointer to current theme tune data entry
g $A455 Current note frequency being played
g $A457 Current room flags
g $A459
g $A45B Various flags
N $A45B Set bit 1 to mark tune on or off
N $A45B Set bit 5 to denote a Kempston joystick is used
g $A45C
g $A45D
g $A45E Number of tasks completed
g $A45F Character of task button being drawn
g $A460
g $A461
g $A462
g $A464
w $A465 Pointer to conveyor belt graphics
w $A467 Pointer to task button graphics
w $A469 Pointer to moving graphics offsets
w $A46B Pointer to moving graphics data
w $A46D Pointer to default room flags
w $A46F Pointer to next rooms
w $A471 Pointer to room offsets
w $A473 Pointer to room data
w $A475 Pointer to main theme tune
w $A477 Pointer to in-game tune
w $A479 Pointer to end of game movement routine
b $A47B Ted left
D $A47B #UDG$A47B,7,,2#UDG$A47C,7,,2 #UDG$A49B,7,,2#UDG$A49C,7,,2 #UDG$A4BB,7,,2#UDG$A4BC,7,,2 #UDG$A4DB,7,,2#UDG$A4DC,7,,2 
D $A47B #UDG$A48B,7,,2#UDG$A48C,7,,2 #UDG$A4AB,7,,2#UDG$A4AC,7,,2 #UDG$A4CB,7,,2#UDG$A4CC,7,,2 #UDG$A4EB,7,,2#UDG$A4EC,7,,2
b $A57B Ted right
D $A57B #UDG$A57B,7,,2#UDG$A57C,7,,2 #UDG$A59B,7,,2#UDG$A59C,7,,2 #UDG$A5BB,7,,2#UDG$A5BC,7,,2 #UDG$A5DB,7,,2#UDG$A5DC,7,,2 
D $A57B #UDG$A58B,7,,2#UDG$A58C,7,,2 #UDG$A5AB,7,,2#UDG$A5AC,7,,2 #UDG$A5CB,7,,2#UDG$A5CC,7,,2 #UDG$A5EB,7,,2#UDG$A5EC,7,,2
w $A67B List of musical note pitches for theme tune
D $A67B The notes are defined as the gap between toggling the speaker bit on and off. Longer gap = lower frequency = lower pitch.
c $A72F Check for input based on a particular table
N $A73C Check any valid keys have been pressed
N $A747 Check for Kempston joystick, if we have it 
b $A752 Offsets for LEFT input
B $A752,9,1,2*4
b $A75C Offsets for RIGHT input
B $A75C,9,1,2*3
b $A764 Offsets for JUMP input
B $A764,7,1,2*3
b $A76C Movement table
b $A7BD Movement table - game over
b $A813 Movement table - game won
b $A844
b $A85C UDG for main title text character
D $A85C #UDG$A85C,7
t $A864 FEATURING 'TECHNICIAN TED'
t $A87C Tasks completed
t $A88B Time
t $A88F You Have Run Out Of Time
b $A8AF Graphic for energy bar
D $A8AF #UDG$A8AF,7
t $A8B7 Start of day
t $A8BC End of day
b $A8C1 Sound data for "lose a life" effect
b $A8C9
b $A959
t $A95A Text for instructions
b $AA0B
w $AA11 Directives for interrupt states
D $AA11 These control how often a particular action is "interrupted". Higher value - more often
w $AA2D Jump table for interrupt states
D $AA2D These contain the default routines to jump to if an action is not "interrupted".
b $AA49 Offset flags
D $AA49 When moving to a new room, take the value in the table at (#R$A46F), divide the current room number by 4, add the direction (0 - left, 1 - up, 2 - right, 3 - down) and add the value indexed from AA4A
D $AA49 This table from AA53-AA64, then AA49-AA64, then AA49-AA4B is used to calculate initial room flags by taking the value at (#R$A46D) and subtracting the next value here
c $AA65 Main entry point
D $AA65 Move memory buffers into the correct place
N $AA81 Display the title screen
N $AAF5 Display instructions
N $AB4C Start a new game
N $AB87 Detect a Kempston joystick
N $AB96 Initialize game flags
N $AC3C Move to another roo 
N $ACB2 Lost a life - flash the screen and restart the room
N $AD51 Run out of lives
c $ADBE Adjust movement in the final room
c $ADDB Enter the final room - game over
c $AE28 Enter the final room and display the ending sequence - game won!
c $AE4E Move Ted by one pixel
c $AE77 Enter a new room
N $AE7D Get the room flags, to work out what we should draw
N $AEB2 Clear the screen
N $AECB Put objects on the screen
N $AEFF Draw any task buttons
N $AF05 Initialize moving objects
N $AF2B Draw the title and status area
N $AF2E Make the copy of the screen live
c $AF5D Play the game until we exit the room or lose a life
N $AF60 Check for TUNE ON / OFF, and toggle the status if pressed
N $AF80 Move conveyor belts
N $AF99 Advance all moving objects on by one frame 
N $AFEA Check for PAUSE. If A-G is pressed, loop around until it isn't
N $B067 Special case for room 30 - display "Game over"
N $B0BE Check for ABORT (CAPS + SPACE). If pressed, restart the game, otherwise loop back
c $B0DC Flash the screen
c $B140 Print the room name and status area
c $B203 Print a set of task buttons
R $B203 A Index of the button to draw
R $B203 HL Pointer to button data
N $B25C Draw the task button attributes
c $B2B6 Copy task box attributes into all the screen buffers
c $B2C9 Copy task box attributes onto the screen buffer
R $B2C9 HL Offset of first box
R $B2C9 BC Offset of second box relative to first
R $B2C9 DE Address of attribute buffer
R $B2C9 A Attribute to copy
c $B2D2 Perform an action after hitting a button
N $B35E Completed a task - update status
c $B398 Draw a conveyor belt
c $B3C8 Draw a section of conveyor belt
c $B3E4 Copy a moving object's frame to the screen buffer
R $B3E4 IX The frame buffer
R $B3E4 HL The address in the screen buffer to copy to
R $B3E4 B Width in bytes (pixels / 8 )
R $B3E4 C Height in bytes
c $B440 Redraw Ted to a new location
c $B4A5 Put moving objects into the live buffer
R $B4A5 IX Pointer to the moving object buffer
R $B4A5 HL Pointer to data from the room
c $B5E6 Calculate space for a graphic
c $B5FA Read static UDG information and store it in a screen buffer
R $B5FA IX Pointer to UDG information
N $B61E Draw the current sprite here
N $B655 Copy the sprite data onto screen
N $B660 Put the attribute on screen
N $B6A3 Change the current sprite, or end logic
N $B6D2 Set a new current sprite
c $B6F5 Print a number
R $B6F5 HL The screen address to print
R $B6F5 The number to print
c $B72D Print a character from the main character set
R $B72D A The character to print
R $B72D HL The screen address to print
R $B72D BC Pointer to the character set (when called from B730)
c $B74A Print a high 7 bit terminated string
R $B74A HL The screen address to print
R $B74A DE Pointer to the string
c $B755 Print spaces
R $B755 A Number of spaces to print
c $B760 Copy a UDG
R $B760 HL Screen address to copy to
R $B760 DE Address of UDG graphic data
c $B770 Advance the time and print it
c $B774 Print the current time
c $B787 Advance the timer by one minute
c $B7A3 Check if we've run out of time
c $B7B8 Print "You have run out of time"
c $B7CC Put a frame of a graphic on screen
R $B7CC HL Address to draw on screen
R $B7CC DE Pointer to the graphic buffer
c $B803 Copy an object between screen buffers
R $B803 HL Location of the screen buffer
R $B803 A Height of object. (The width is stored in #R$A455).
c $B82E Set next position for moving objects
c $B99C Update a moving object's data
R $B99C IX Pointer to current moving object data
R $B99C HL New screen position for object
R $B99C C Flags
c $B9EF Set up movement area for the room
c $BA34 Collision detection (preserving HL)
c $BA3B Collision detection
N $BA84 Ted has hit something unpleasant :-(
c $BA8B Hit both task boxes, change the state of the game
R $BA8B HL Points to the ID of the effect to trigger
c $BAAA Hit the first task box in a room - see if it triggers something else
R $BAAA HL Pointer to the "static object" store in the current room
N $BAAA Triggered in rooms 07 (The Silcon Etching Tank) and 13 (Abrasion Dust Extraction)
c $BABD Hit a lift button 
c $BAE5 Set colour for moving objects
c $BB17 Move one frame and check for input
N $BBCC Check for LEFT
N $BBD8 Check for RIGHT
N $BBF0 Check for JUMP
N $BC04 Check for conveyor belts
c $BD9E Move one frame in the final room
c $BECF Adjust position in the final room
c $BEF6 Play a sound
R $BEF6 H Length
R $BEF6 L Frequency
c $BF1B Play a "hit task box" sound
c $BF35 Play a "killed" sound
c $BF4B Interruptable routine A
c $BF8D Interruptable routine B
c $BFB9 Interruptable routine C
c $BFDD Interruptable routine D
c $BFFB Interruptable routine 9
c $C00D Interrupt routines
D $C00D The code here has several entry points and is called when the tick counter accessed in #R$C05C overflows and requires an "interrupt" to be triggered.
N $C033 Toggle the speaker to play a sound
E $C00D Control passes to #R$C05C
c $C05C Execute next interruptable command
R $C05C IX Pointer to action table (#R$AA11 - #R$AA2B)
R $C05C DE Current tick counter
N $C05C The tick counter is decremented by the value pointed to by IX. If it overflows to 0, control goes to #R$C096, otherwise the command from #R$AA2D - #R$AA47 is executed instead.
c $C075 Reset the interruptable tick counter
c $C07E Interruptable routine 8 - Move back one state
c $C084 Interruptable routine 3 - Determine if ENTER was pressed
D $C084 This routine is also entered at #R$C091 if interrupt command FE (quit) was triggered.
c $C096 Interrupt a command
R $C096 HL Current tick counter
N $C096 This routine is called when the tick counter overflows and the standard command should not be executed.
c $C0B8 Interruptable routine 0 - Play a musical note
c $C10E Music command FF (rest)
c $C11B Music command FD (set timbre)
c $C140 Music command FC
c $C158 Interruptable routine 1
c $C18B Decrement the interrupt tick counter and yield
c $C191 Interruptable routine 2
c $C1C0 Animate the title sequence
D $C1C0 On return, carry flag is reset for instructions, or set to start game
c $C1FE Decrement the interrupt tick counter and yield
c $C204 Interruptable routine 4 - print a UDG or text
c $C260 Interruptable routine 5
c $C273 Interruptable routine 6
c $C288 Interruptable routine 7
b $C2C1 UDG 00
D $C2C1 #UDG$C2C1,7
b $C2C9 UDG 01
D $C2C9 #UDG$C2C9,7
b $C2D1 UDG 02
D $C2D1 #UDG$C2D1,7
b $C2D9 UDG 03
D $C2D9 #UDG$C2D9,7
b $C2E1 UDG 04
D $C2E1 #UDG$C2E1,7
b $C2E9 UDG 05
D $C2E9 #UDG$C2E9,7
b $C2F1 UDG 06
D $C2F1 #UDG$C2F1,7
b $C2F9 UDG 07
D $C2F9 #UDG$C2C9,7
b $C301 UDG 08
D $C301 #UDG$C301,7
b $C309 UDG 09
D $C309 #UDG$C309,7
b $C311 UDG 0A
D $C311 #UDG$C311,7
b $C319 UDG 0B
D $C319 #UDG$C319,7
b $C321 UDG 0C
D $C321 #UDG$C321,7
b $C329 UDG 0D
D $C329 #UDG$C329,7
b $C331 UDG 0E
D $C331 #UDG$C331,7
b $C339 UDG 0F
D $C339 #UDG$C339,7
b $C341 UDG 10
D $C341 #UDG$C341,7
b $C349 UDG 11
D $C349 #UDG$C349,7
b $C351 UDG 12
D $C351 #UDG$C351,7
b $C359 UDG 13
D $C359 #UDG$C359,7
b $C361 UDG 14
D $C361 #UDG$C361,7
b $C369 UDG 15
D $C369 #UDG$C369,7
b $C371 UDG 16
D $C371 #UDG$C371,7
b $C379 UDG 17
D $C379 #UDG$C379,7
b $C381 UDG 18
D $C381 #UDG$C381,7
b $C389 UDG 19
D $C389 #UDG$C389,7
b $C391 UDG 1A
D $C391 #UDG$C391,7
b $C399 UDG 1B
D $C399 #UDG$C399,7
b $C3A1 UDG 1C
D $C3A1 #UDG$C3A1,7
b $C3A9 UDG 1D
D $C3A9 #UDG$C3A9,7
b $C3B1 UDG 1E
D $C3B1 #UDG$C3B1,7
b $C3B9 UDG 1F
D $C3B9 #UDG$C3B9,7
b $C3C1 UDG 20
D $C3C1 #UDG$C3C1,7
b $C3C9 UDG 21
D $C3C9 #UDG$C3C9,7
b $C3D1 UDG 22
D $C3D1 #UDG$C3D1,7
b $C3D9 UDG 23
D $C3D9 #UDG$C3D1,7
b $C3E1 UDG 24
D $C3E1 #UDG$C3E1,7
b $C3E9 UDG 25
D $C3E9 #UDG$C3E9,7
b $C3F1 UDG 26
D $C3F1 #UDG$C3F1,7
b $C3F9 UDG 27
D $C3F9 #UDG$C3F9,7
b $C401 UDG 28
D $C401 #UDG$C401,7
b $C409 UDG 29
D $C409 #UDG$C409,7
b $C411 UDG 2A
D $C411 #UDG$C411,7
b $C419 UDG 2B
D $C419 #UDG$C419,7
b $C421 UDG 2C
D $C421 #UDG$C421,7
b $C429 UDG 2D
D $C429 #UDG$C421,7
b $C431 UDG 2E
D $C431 #UDG$C431,7
b $C439 UDG 2F
D $C439 #UDG$C439,7
b $C441 UDG 30
D $C441 #UDG$C441,7
b $C449 UDG 31
D $C449 #UDG$C449,7
b $C451 UDG 32
D $C451 #UDG$C451,7
b $C459 UDG 33
D $C459 #UDG$C459,7
b $C461 UDG 34
D $C461 #UDG$C461,7
b $C469 UDG 35
D $C469 #UDG$C469,7
b $C471 UDG 36
D $C471 #UDG$C471,7
b $C479 UDG 37
D $C479 #UDG$C479,7
b $C481 UDG 38
D $C481 #UDG$C481,7
b $C489 UDG 39
D $C489 #UDG$C489,7
b $C491 UDG 3A
D $C491 #UDG$C491,7
b $C499 UDG 3B
D $C499 #UDG$C499,7
b $C4A1 UDG 3C
D $C4A1 #UDG$C4A1,7
b $C4A9 UDG 3D
D $C4A9 #UDG$C4A9,7
b $C4B1 UDG 3E
D $C4B1 #UDG$C4B1,7
b $C4B9 UDG 3F - Lift 1
D $C4B9 #UDG$C4B9,7#UDG$C4C1,7
D $C4B9 #UDG$C4C9,7#UDG$C4D1,7
b $C4D9 UDG 43 - Lift 2
D $C4D9 #UDG$C4D9,7#UDG$C4E1,7
D $C4D9 #UDG$C4E9,7#UDG$C4F1,7
b $C4F9 UDG 47 - Lift 3
D $C4F9 #UDG$C4F9,7#UDG$C501,7
D $C4F9 #UDG$C509,7#UDG$C511,7
b $C519 UDG 4B - Lift 4
D $C519 #UDG$C519,7#UDG$C521,7
D $C519 #UDG$C529,7#UDG$C531,7
b $C539 UDG 4F - Lift 5
D $C539 #UDG$C539,7#UDG$C541,7
D $C539 #UDG$C549,7#UDG$C551,7
b $C559 UDG 53 - Lift 6
D $C559 #UDG$C559,7#UDG$C561,7
D $C559 #UDG$C569,7#UDG$C571,7
b $C579 UDG 57
D $C579 #UDG$C579,7
b $C581 UDG 58
D $C581 #UDG$C581,7
b $C589 UDG 59
D $C589 #UDG$C589,7
b $C591 UDG 5A
D $C591 #UDG$C591,7
b $C599 UDG 5B
D $C599 #UDG$C599,7
b $C5A1 UDG 5C
D $C5A1 #UDG$C5A1,7
b $C5A9 UDG Conveyor belt 1 (4 frames)
D $C5A9 #UDG$C5A9,7 #UDG$C5B1,7 #UDG$C5B9,7 #UDG$C5C1,7
b $C5C9 UDG Conveyor belt 2 (4 frames)
D $C5C9 #UDG$C5C9,7 #UDG$C5D1,7 #UDG$C5D9,7 #UDG$C5E1,7
b $C5E9 UDG Conveyor belt 3 (4 frames)
D $C5E9 #UDG$C5E9,7 #UDG$C5F1,7 #UDG$C5F9,7 #UDG$C5F1,7
b $C609 UDG - Task button 00
D $C609 #UDG$C609,7#UDG$C611,7
D $C609 #UDG$C619,7#UDG$C621,7
b $C629 UDG - Task button 01
D $C629 #UDG$C629,7#UDG$C631,7
D $C629 #UDG$C639,7#UDG$C641,7
b $C649 UDG - Task button 02
D $C649 #UDG$C649,7#UDG$C651,7
D $C649 #UDG$C659,7#UDG$C661,7
b $C669 UDG - Task button 03
D $C669 #UDG$C669,7#UDG$C671,7
D $C669 #UDG$C679,7#UDG$C681,7
b $C689 UDG - Task button 04
D $C689 #UDG$C689,7#UDG$C691,7
D $C689 #UDG$C699,7#UDG$C6A1,7
b $C6A9 UDG - Task button 05
D $C6A9 #UDG$C6A9,7#UDG$C6B1,7
D $C6A9 #UDG$C6B9,7#UDG$C6C1,7
b $C6C9 UDG - Task button 06
D $C6C9 #UDG$C6C9,7#UDG$C6D1,7
D $C6C9 #UDG$C6D9,7#UDG$C6E1,7
b $C6E9 UDG - Task button 07
D $C6E9 #UDG$C6E9,7#UDG$C6F1,7
D $C6E9 #UDG$C6F9,7#UDG$C701,7
b $C709 UDG - Task button 08
D $C709 #UDG$C709,7#UDG$C711,7
D $C709 #UDG$C719,7#UDG$C721,7
b $C729 UDG - Task button 09
D $C729 #UDG$C729,7#UDG$C731,7
D $C729 #UDG$C739,7#UDG$C741,7
b $C749 UDG - Task button 0A
D $C749 #UDG$C749,7#UDG$C751,7
D $C749 #UDG$C759,7#UDG$C761,7
b $C769 UDG - Task button 0B
D $C769 #UDG$C769,7#UDG$C771,7
D $C769 #UDG$C779,7#UDG$C781,7
b $C789 UDG - Task button 0C
D $C789 #UDG$C789,7#UDG$C791,7
D $C789 #UDG$C799,7#UDG$C7A1,7
b $C7A9 UDG - Task button 0D
D $C7A9 #UDG$C7A9,7#UDG$C7B1,7
D $C7A9 #UDG$C7B9,7#UDG$C7C1,7
b $C7C9 UDG - Task button 0E
D $C7C9 #UDG$C7C9,7#UDG$C7D1,7
D $C7C9 #UDG$C7D9,7#UDG$C7E1,7
b $C7E9 UDG - Task button 0F
D $C7E9 #UDG$C7E9,7#UDG$C7F1,7
D $C7E9 #UDG$C7F9,7#UDG$C801,7
b $C809 UDG - Task button 10
D $C809 #UDG$C809,7#UDG$C811,7
D $C809 #UDG$C819,7#UDG$C821,7
b $C829 UDG - Task button 11
D $C829 #UDG$C829,7#UDG$C831,7
D $C829 #UDG$C839,7#UDG$C841,7
b $C849 UDG - Task button 12
D $C849 #UDG$C849,7#UDG$C851,7
D $C849 #UDG$C859,7#UDG$C861,7
b $C869 UDG - Task button 13
D $C869 #UDG$C869,7#UDG$C871,7
D $C869 #UDG$C879,7#UDG$C881,7
b $C889 UDG - Task button 14
D $C889 #UDG$C889,7#UDG$C891,7
D $C889 #UDG$C899,7#UDG$C8A1,7
b $C8A9 UDG - Task button 15
D $C8A9 #UDG$C8A9,7#UDG$C8B1,7
D $C8A9 #UDG$C8B9,7#UDG$C8C1,7
b $C8C9 UDG - Task button 16
D $C8C9 #UDG$C8C9,7#UDG$C8D1,7
D $C8C9 #UDG$C8D9,7#UDG$C8E1,7
b $C8E9 UDG - Task button 17
D $C8E9 #UDG$C8E9,7#UDG$C8F1,7
D $C8E9 #UDG$C8F9,7#UDG$C901,7
b $C909 UDG - Task button 18
D $C909 #UDG$C909,7#UDG$C911,7
D $C909 #UDG$C919,7#UDG$C921,7
b $C929 UDG - Task button 19
D $C929 #UDG$C929,7#UDG$C931,7
D $C929 #UDG$C939,7#UDG$C941,7
b $C949 UDG - Task button 1A
D $C949 #UDG$C949,7#UDG$C951,7
D $C949 #UDG$C959,7#UDG$C961,7
b $C969 UDG - Task button 1B
D $C969 #UDG$C969,7#UDG$C971,7
D $C969 #UDG$C979,7#UDG$C981,7
b $C989 UDG - Task button 1C
D $C989 #UDG$C989,7#UDG$C991,7
D $C989 #UDG$C999,7#UDG$C9A1,7
b $C9A9 UDG - Task button 1D
D $C9A9 #UDG$C9A9,7#UDG$C9B1,7
D $C9A9 #UDG$C9B9,7#UDG$C9C1,7
b $C9C9 UDG - Task button 1E
D $C9C9 #UDG$C9C9,7#UDG$C9D1,7
D $C9C9 #UDG$C9D9,7#UDG$C9E1,7
b $C9E9 UDG - Task button 1F
D $C9E9 #UDG$C9E9,7#UDG$C9F1,7
D $C9E9 #UDG$C9F9,7#UDG$CA01,7
w $CA09 Moving graphics offset table
b $CA51 Sprite 00 : 0000 - penny farthing right
D $CA51 #UDG$CA51,7,,2#UDG$CA52,7,,2 #UDG$CA71,7,,2#UDG$CA72,7,,2 #UDG$CA91,7,,2#UDG$CA92,7,,2 #UDG$CAB1,7,,2#UDG$CAB2,7,,2
D $CA51 #UDG$CA61,7,,2#UDG$CA62,7,,2 #UDG$CA81,7,,2#UDG$CA82,7,,2 #UDG$CAA1,7,,2#UDG$CAA2,7,,2 #UDG$CAC1,7,,2#UDG$CAC2,7,,2
b $CAD1 Sprite 01 : 0080 - penny farthing left
D $CAD1 #UDG$CAD1,7,,2#UDG$CAD2,7,,2 #UDG$CAF1,7,,2#UDG$CAF2,7,,2 #UDG$CB11,7,,2#UDG$CB12,7,,2 #UDG$CB31,7,,2#UDG$CB32,7,,2
D $CAD1 #UDG$CAE1,7,,2#UDG$CAE2,7,,2 #UDG$CB01,7,,2#UDG$CB02,7,,2 #UDG$CB21,7,,2#UDG$CB22,7,,2 #UDG$CB41,7,,2#UDG$CB42,7,,2
b $CB51 Sprite 02 : 0100 - funnel
D $CB51 #UDG$CB51,7,,2#UDG$CB52,7,,2 #UDG$CB71,7,,2#UDG$CB72,7,,2 #UDG$CB91,7,,2#UDG$CB92,7,,2 #UDG$CBB1,7,,2#UDG$CBB2,7,,2
D $CB51 #UDG$CB61,7,,2#UDG$CB62,7,,2 #UDG$CB81,7,,2#UDG$CB82,7,,2 #UDG$CBA1,7,,2#UDG$CBA2,7,,2 #UDG$CBC1,7,,2#UDG$CBC2,7,,2
b $CC51 Sprite 03 : 0200 - transistor
D $CC51 #UDG$CC51,7,,2#UDG$CC52,7,,2 #UDG$CC71,7,,2#UDG$CC72,7,,2 #UDG$CC91,7,,2#UDG$CC92,7,,2 #UDG$CCB1,7,,2#UDG$CCB2,7,,2
D $CC51 #UDG$CC61,7,,2#UDG$CC62,7,,2 #UDG$CC81,7,,2#UDG$CC82,7,,2 #UDG$CCA1,7,,2#UDG$CCA2,7,,2 #UDG$CCC1,7,,2#UDG$CCC2,7,,2
b $CD51 Sprite 04 : 0300 - chip
D $CD51 #UDG$CD51,7,,3#UDG$CD52,7,,3#UDG$CD53,7,,3 #UDG$CD69,7,,3#UDG$CD6A,7,,3#UDG$CD6B,7,,3 #UDG$CD81,7,,3#UDG$CD82,7,,3#UDG$CD83,7,,3 #UDG$CD99,7,,3#UDG$CD9A,7,,3#UDG$CD9B,7,,3
b $CDB1 Sprite 05 : 0360 - microscope
D $CDB1 #UDG$CDB1,7,,2#UDG$CDB2,7,,2 #UDG$CDD1,7,,2#UDG$CDD2,7,,2 #UDG$CDF1,7,,2#UDG$CDF2,7,,2 #UDG$CE11,7,,2#UDG$CE12,7,,2
D $CDB1 #UDG$CDC1,7,,2#UDG$CDC2,7,,2 #UDG$CDE1,7,,2#UDG$CDE2,7,,2 #UDG$CE01,7,,2#UDG$CE02,7,,2 #UDG$CE21,7,,2#UDG$CE22,7,,2
b $CE31 Sprite 06 : 03E0 - 1 ton weight
D $CE31 #UDG$CE31,7,,2#UDG$CE32,7,,2 #UDG$CE51,7,,2#UDG$CE52,7,,2 #UDG$CE71,7,,2#UDG$CE72,7,,2 #UDG$CE91,7,,2#UDG$CE92,7,,2
D $CE31 #UDG$CE41,7,,2#UDG$CE42,7,,2 #UDG$CE61,7,,2#UDG$CE62,7,,2 #UDG$CE81,7,,2#UDG$CE82,7,,2 #UDG$CEA1,7,,2#UDG$CEA2,7,,2
b $CEB1 Sprite 07 : 0460 - dud box
D $CEB1 #UDG$CEB1,7,,2#UDG$CEB2,7,,2 #UDG$CED1,7,,2#UDG$CED2,7,,2 #UDG$CEF1,7,,2#UDG$CEF2,7,,2 #UDG$CF11,7,,2#UDG$CF12,7,,2
D $CEB1 #UDG$CEC1,7,,2#UDG$CEC2,7,,2 #UDG$CEE1,7,,2#UDG$CEE2,7,,2 #UDG$CF01,7,,2#UDG$CF02,7,,2 #UDG$CF21,7,,2#UDG$CF22,7,,2
b $CF31 Sprite 08 : 04E0 - oscilloscope
D $CF31 #UDG$CF31,7,,2#UDG$CF32,7,,2 #UDG$CF51,7,,2#UDG$CF52,7,,2 #UDG$CF71,7,,2#UDG$CF72,7,,2 #UDG$CF91,7,,2#UDG$CF92,7,,2
D $CF31 #UDG$CF41,7,,2#UDG$CF42,7,,2 #UDG$CF61,7,,2#UDG$CF62,7,,2 #UDG$CF81,7,,2#UDG$CF82,7,,2 #UDG$CFA1,7,,2#UDG$CFA2,7,,2
b $D031 Sprite 09 : 05E0 - capacator
D $D031 #UDG$D031,7,,2#UDG$D032,7,,2 #UDG$D051,7,,2#UDG$D052,7,,2 #UDG$D071,7,,2#UDG$D072,7,,2 #UDG$D091,7,,2#UDG$D092,7,,2
D $D031 #UDG$D041,7,,2#UDG$D042,7,,2 #UDG$D061,7,,2#UDG$D062,7,,2 #UDG$D081,7,,2#UDG$D082,7,,2 #UDG$D0A1,7,,2#UDG$D0A2,7,,2
b $D0B1 Sprite 0A : 0660 - silicon wafer
D $D0B1 #UDG$D0B1,7 #UDG$D0B9,7 #UDG$D0C1,7 #UDG$D0C9,7
b $D0D1 Sprite 0B : 0680 - minicomputer
D $D0D1 #UDG$D0D1,7,,2#UDG$D0D2,7,,2 #UDG$D0F1,7,,2#UDG$D0F2,7,,2 #UDG$D111,7,,2#UDG$D112,7,,2 #UDG$D131,7,,2#UDG$D132,7,,2
D $D0D1 #UDG$D0E1,7,,2#UDG$D0E2,7,,2 #UDG$D101,7,,2#UDG$D102,7,,2 #UDG$D121,7,,2#UDG$D122,7,,2 #UDG$D141,7,,2#UDG$D142,7,,2
b $D1D1 Sprite 0C : 0780 - pickaxe
D $D1D1 #UDG$D1D1,7,,2#UDG$D1D2,7,,2 #UDG$D1F1,7,,2#UDG$D1F2,7,,2 #UDG$D211,7,,2#UDG$D212,7,,2 #UDG$D231,7,,2#UDG$D232,7,,2 #UDG$D251,7,,2#UDG$D252,7,,2 #UDG$D271,7,,2#UDG$D272,7,,2 #UDG$D291,7,,2#UDG$D292,7,,2 #UDG$D2B1,7,,2#UDG$D2B2,7,,2
D $D1D1 #UDG$D1E1,7,,2#UDG$D1E2,7,,2 #UDG$D201,7,,2#UDG$D202,7,,2 #UDG$D221,7,,2#UDG$D222,7,,2 #UDG$D241,7,,2#UDG$D242,7,,2 #UDG$D261,7,,2#UDG$D262,7,,2 #UDG$D281,7,,2#UDG$D282,7,,2 #UDG$D2A1,7,,2#UDG$D2A2,7,,2 #UDG$D2C1,7,,2#UDG$D2C2,7,,2
b $D2D1 Sprite 0D : 0880 - lamp
D $D2D1 #UDG$D2D1,7,,2#UDG$D2D2,7,,2 #UDG$D301,7,,2#UDG$D302,7,,2 #UDG$D331,7,,2#UDG$D332,7,,2 #UDG$D361,7,,2#UDG$D362,7,,2
D $D2D1 #UDG$D2E1,7,,2#UDG$D2E2,7,,2 #UDG$D311,7,,2#UDG$D312,7,,2 #UDG$D341,7,,2#UDG$D342,7,,2 #UDG$D371,7,,2#UDG$D372,7,,2
D $D2D1 #UDG$D2F1,7,,2#UDG$D2F2,7,,2 #UDG$D321,7,,2#UDG$D321,7,,2 #UDG$D351,7,,2#UDG$D352,7,,2 #UDG$D381,7,,2#UDG$D382,7,,2
b $D391 Sprite 0E : 0940 - face
D $D391 #UDG$D391,7,,2#UDG$D392,7,,2 #UDG$D3B1,7,,2#UDG$D3B2,7,,2 #UDG$D3D1,7,,2#UDG$D3D2,7,,2 #UDG$D3F1,7,,2#UDG$D3F2,7,,2
D $D391 #UDG$D3A1,7,,2#UDG$D3A2,7,,2 #UDG$D3C1,7,,2#UDG$D3C2,7,,2 #UDG$D3E1,7,,2#UDG$D3E2,7,,2 #UDG$D401,7,,2#UDG$D402,7,,2
b $D411 Sprite 0F : 09C0 - acid bottle
D $D411 #UDG$D411,7,,2#UDG$D412,7,,2 #UDG$D431,7,,2#UDG$D432,7,,2 #UDG$D451,7,,2#UDG$D452,7,,2 #UDG$D471,7,,2#UDG$D472,7,,2
D $D411 #UDG$D421,7,,2#UDG$D422,7,,2 #UDG$D441,7,,2#UDG$D442,7,,2 #UDG$D461,7,,2#UDG$D462,7,,2 #UDG$D481,7,,2#UDG$D482,7,,2
b $D491 Sprite 10 : 0A40 - droplet
D $D491 #UDG$D491,7,,2#UDG$D492,7,,2 #UDG$D4A1,7,,2#UDG$D4A2,7,,2 #UDG$D4B1,7,,2#UDG$D4B2,7,,2 #UDG$D4C1,7,,2#UDG$D4C2,7,,2
b $D4D1 Sprite 11 : 0A80 - redisual heat
D $D4D1 #UDG$D4D1,7,,2#UDG$D4D2,7,,2 #UDG$D4F1,7,,2#UDG$D4F2,7,,2
D $D4D1 #UDG$D4E1,7,,2#UDG$D4E2,7,,2 #UDG$D501,7,,2#UDG$D502,7,,2
b $D511 Sprite 12 : 0AC0 - box in lift
D $D511 #UDG$D511,7,,2#UDG$D512,7,,2 #UDG$D531,7,,2#UDG$D532,7,,2 #UDG$D551,7,,2#UDG$D552,7,,2 #UDG$D571,7,,2#UDG$D572,7,,2
D $D511 #UDG$D521,7,,2#UDG$D522,7,,2 #UDG$D541,7,,2#UDG$D542,7,,2 #UDG$D561,7,,2#UDG$D562,7,,2 #UDG$D581,7,,2#UDG$D582,7,,2
b $D591 Sprite 13 : 0B40 - fire extinguisher
D $D591 #UDG$D591,7,,2#UDG$D592,7,,2 #UDG$D5B1,7,,2#UDG$D5B2,7,,2 #UDG$D5D1,7,,2#UDG$D5D2,7,,2 #UDG$D5F1,7,,2#UDG$D5F2,7,,2
D $D591 #UDG$D5A1,7,,2#UDG$D5A2,7,,2 #UDG$D5C1,7,,2#UDG$D5C2,7,,2 #UDG$D5E1,7,,2#UDG$D5E2,7,,2 #UDG$D601,7,,2#UDG$D602,7,,2
b $D611 Sprite 14 : 0BC0 - executive toy
D $D611 #UDG$D611,7,,3#UDG$D612,7,,3#UDG$D613,7,,3 #UDG$D641,7,,3#UDG$D642,7,,3#UDG$D643,7,,3 #UDG$D671,7,,3#UDG$D672,7,,3#UDG$D673,7,,3 #UDG$D6A1,7,,3#UDG$D6A2,7,,3#UDG$D6A3,7,,3
D $D611 #UDG$D629,7,,3#UDG$D62A,7,,3#UDG$D62B,7,,3 #UDG$D659,7,,3#UDG$D65A,7,,3#UDG$D65B,7,,3 #UDG$D689,7,,3#UDG$D68A,7,,3#UDG$D68B,7,,3 #UDG$D6B9,7,,3#UDG$D6BA,7,,3#UDG$D6BB,7,,3
b $D6D1 Sprite 15 : 0C80 - big face (3 wide)
D $D6D1 #UDG$D6D1,7,,3#UDG$D6D2,7,,3#UDG$D6D3,7,,3 #UDG$D719,7,,3#UDG$D71A,7,,3#UDG$D71B,7,,3 #UDG$D761,7,,3#UDG$D762,7,,3#UDG$D763,7,,3 #UDG$D7A9,7,,3#UDG$D7AA,7,,3#UDG$D7AB,7,,3
D $D6D1 #UDG$D6E9,7,,3#UDG$D6EA,7,,3#UDG$D6EB,7,,3 #UDG$D731,7,,3#UDG$D732,7,,3#UDG$D733,7,,3 #UDG$D779,7,,3#UDG$D77A,7,,3#UDG$D77B,7,,3 #UDG$D7C1,7,,3#UDG$D7C2,7,,3#UDG$D7C3,7,,3
D $D6D1 #UDG$D701,7,,3#UDG$D702,7,,3#UDG$D703,7,,3 #UDG$D749,7,,3#UDG$D74A,7,,3#UDG$D74B,7,,3 #UDG$D791,7,,3#UDG$D792,7,,3#UDG$D793,7,,3 #UDG$D7D9,7,,3#UDG$D7DA,7,,3#UDG$D7DB,7,,3
b $D7F1 Sprite 16 : 0DA0 - cup of tea 1
D $D7F1 #UDG$D7F1,7,,2#UDG$D7F2,7,,2 #UDG$D811,7,,2#UDG$D812,7,,2 #UDG$D831,7,,2#UDG$D832,7,,2 #UDG$D851,7,,2#UDG$D852,7,,2 
D $D7F1 #UDG$D801,7,,2#UDG$D802,7,,2 #UDG$D821,7,,2#UDG$D822,7,,2 #UDG$D841,7,,2#UDG$D842,7,,2 #UDG$D861,7,,2#UDG$D862,7,,2
b $D871 Sprite 17 : 0E20 - cup of tea 2
D $D871 #UDG$D871,7,,2#UDG$D872,7,,2 #UDG$D891,7,,2#UDG$D892,7,,2 #UDG$D8B1,7,,2#UDG$D8B2,7,,2 #UDG$D8D1,7,,2#UDG$D8D2,7,,2
D $D871 #UDG$D881,7,,2#UDG$D882,7,,2 #UDG$D8A1,7,,2#UDG$D8A2,7,,2 #UDG$D8C1,7,,2#UDG$D8C2,7,,2 #UDG$D8E1,7,,2#UDG$D8E2,7,,2
b $D8F1 Sprite 18 : 0EA0 - flower in pot
D $D8F1 #UDG$D8F1,7,,2#UDG$D8F2,7,,2 #UDG$D911,7,,2#UDG$D912,7,,2 #UDG$D931,7,,2#UDG$D932,7,,2 #UDG$D951,7,,2#UDG$D952,7,,2 #UDG$D971,7,,2#UDG$D972,7,,2 #UDG$D991,7,,2#UDG$D992,7,,2 #UDG$D9B1,7,,2#UDG$D9B2,7,,2 #UDG$D9D1,7,,2#UDG$D9D2,7,,2
D $D8F1 #UDG$D901,7,,2#UDG$D902,7,,2 #UDG$D921,7,,2#UDG$D922,7,,2 #UDG$D941,7,,2#UDG$D942,7,,2 #UDG$D961,7,,2#UDG$D962,7,,2 #UDG$D981,7,,2#UDG$D982,7,,2 #UDG$D9A1,7,,2#UDG$D9A2,7,,2 #UDG$D9C1,7,,2#UDG$D9C2,7,,2 #UDG$D9E1,7,,2#UDG$D9E2,7,,2
b $D9F1 Sprite 19 : 0FA0 - box thingy
D $D9F1 #UDG$D9F1,7,,2#UDG$D9F2,7,,2 #UDG$DA11,7,,2#UDG$DA12,7,,2 #UDG$DA31,7,,2#UDG$DA32,7,,2 #UDG$DA51,7,,2#UDG$DA52,7,,2 #UDG$DA71,7,,2#UDG$DA72,7,,2 #UDG$DA91,7,,2#UDG$DA92,7,,2 #UDG$DAB1,7,,2#UDG$DAB2,7,,2 #UDG$DAD1,7,,2#UDG$DAD2,7,,2
D $D9F1 #UDG$DA01,7,,2#UDG$DA02,7,,2 #UDG$DA21,7,,2#UDG$DA22,7,,2 #UDG$DA41,7,,2#UDG$DA42,7,,2 #UDG$DA61,7,,2#UDG$DA62,7,,2 #UDG$DA81,7,,2#UDG$DA82,7,,2 #UDG$DAA1,7,,2#UDG$DAA2,7,,2 #UDG$DAC1,7,,2#UDG$DAC2,7,,2 #UDG$DAE1,7,,2#UDG$DAE2,7,,2
b $DAF1 Sprite 1A : 10A0 - syringe (1 wide)
D $DAF1 #UDG$DAF1,7 #UDG$DB09,7 #UDG$DB21,7 #UDG$DB39,7 #UDG$DB51,7 #UDG$DB69,7 #UDG$DB81,7 #UDG$DB99,7
D $DAF1 #UDG$DAF9,7 #UDG$DB11,7 #UDG$DB29,7 #UDG$DB41,7 #UDG$DB59,7 #UDG$DB71,7 #UDG$DB89,7 #UDG$DBA1,7
D $DAF1 #UDG$DB01,7 #UDG$DB19,7 #UDG$DB31,7 #UDG$DB41,7 #UDG$DB61,7 #UDG$DB79,7 #UDG$DB91,7 #UDG$DBA9,7
b $DBB1 Sprite 1B : 1160 - silicon wafer
D $DBB1 #UDG$DBB1,7,,2#UDG$DBB2,7,,2 #UDG$DBD1,7,,2#UDG$DBD2,7,,2 #UDG$DBF1,7,,2#UDG$DBF2,7,,2 #UDG$DC11,7,,2#UDG$DC12,7,,2 #UDG$DC31,7,,2#UDG$DC32,7,,2 #UDG$DC51,7,,2#UDG$DC52,7,,2 #UDG$DC71,7,,2#UDG$DC72,7,,2 #UDG$DC91,7,,2#UDG$DC92,7,,2
D $DBB1 #UDG$DBC1,7,,2#UDG$DBC2,7,,2 #UDG$DBE1,7,,2#UDG$DBE2,7,,2 #UDG$DC01,7,,2#UDG$DC02,7,,2 #UDG$DC21,7,,2#UDG$DC22,7,,2 #UDG$DC41,7,,2#UDG$DC42,7,,2 #UDG$DC61,7,,2#UDG$DC62,7,,2 #UDG$DC81,7,,2#UDG$DC82,7,,2 #UDG$DCA1,7,,2#UDG$DCA2,7,,2
b $DCB1 Sprite 1C : 1260 - sine wave
D $DCB1 #UDG$DCB1,7,,2#UDG$DCB2,7,,2 #UDG$DCD1,7,,2#UDG$DCD2,7,,2 #UDG$DCF1,7,,2#UDG$DCF2,7,,2 #UDG$DD11,7,,2#UDG$DD12,7,,2 #UDG$DD31,7,,2#UDG$DD32,7,,2 #UDG$DD51,7,,2#UDG$DD52,7,,2 #UDG$DD71,7,,2#UDG$DD72,7,,2 #UDG$DD91,7,,2#UDG$DD92,7,,2
D $DCB1 #UDG$DCC1,7,,2#UDG$DCC2,7,,2 #UDG$DCE1,7,,2#UDG$DCE2,7,,2 #UDG$DD01,7,,2#UDG$DD02,7,,2 #UDG$DD21,7,,2#UDG$DD22,7,,2 #UDG$DD41,7,,2#UDG$DD42,7,,2 #UDG$DD61,7,,2#UDG$DD62,7,,2 #UDG$DD81,7,,2#UDG$DD82,7,,2 #UDG$DDA1,7,,2#UDG$DDA2,7,,2
b $DDB1 Sprite 1D : 1360 - gun (3 wide)
D $DDB1 #UDG$DDB1,7,,3#UDG$DDB2,7,,3#UDG$DDB3,7,,3 #UDG$DDE1,7,,3#UDG$DDE2,7,,3#UDG$DDE3,7,,3 #UDG$DE11,7,,3#UDG$DE12,7,,3#UDG$DE13,7,,3 #UDG$DE41,7,,3#UDG$DE42,7,,3#UDG$DE43,7,,3
D $DDB1 #UDG$DDC9,7,,3#UDG$DDCA,7,,3#UDG$DDCB,7,,3 #UDG$DDF9,7,,3#UDG$DDFA,7,,3#UDG$DDFB,7,,3 #UDG$DE29,7,,3#UDG$DE2A,7,,3#UDG$DE2B,7,,3 #UDG$DE59,7,,3#UDG$DE5A,7,,3#UDG$DE5B,7,,3
b $DE71 Sprite 1E : 1420 - industrial waste bag
D $DE71 #UDG$DE71,7,,2#UDG$DE72,7,,2 #UDG$DE91,7,,2#UDG$DE92,7,,2 #UDG$DEB1,7,,2#UDG$DEB2,7,,2 #UDG$DED1,7,,2#UDG$DED2,7,,2
D $DE71 #UDG$DE81,7,,2#UDG$DE82,7,,2 #UDG$DEA1,7,,2#UDG$DEA2,7,,2 #UDG$DEC1,7,,2#UDG$DEC2,7,,2 #UDG$DEE1,7,,2#UDG$DEE2,7,,2
b $DEF1 Sprite 1F : 14A0 - small silicon wafer (1 wide)
D $DEF1 #UDG$DEF1,7 #UDG$DEF9,7 #UDG$DF01,7 #UDG$DF09,7 #UDG$DF11,7 #UDG$DF19,7 #UDG$DF21,7 #UDG$DF29,7
b $DF31 Sprite 20 : 14E0 - big boss (top)
D $DF31 #UDG$DF31,7,,2#UDG$DF32,7,,2 #UDG$DF51,7,,2#UDG$DF52,7,,2
D $DF31 #UDG$DF41,7,,2#UDG$DF42,7,,2 #UDG$DF61,7,,2#UDG$DF62,7,,2
b $DF71 Sprite 21 : 1520 - big boss (bottom)
D $DF71 #UDG$DF71,7,,2#UDG$DF72,7,,2 #UDG$DF91,7,,2#UDG$DF92,7,,2 #UDG$DFB1,7,,2#UDG$DFB2,7,,2 #UDG$DFD1,7,,2#UDG$DFD2,7,,2
D $DF71 #UDG$DF81,7,,2#UDG$DF82,7,,2 #UDG$DFA1,7,,2#UDG$DFA2,7,,2 #UDG$DFC1,7,,2#UDG$DFC2,7,,2 #UDG$DFE1,7,,2#UDG$DFE2,7,,2
b $DFF1 Sprite 22 : 15A0 - bin
D $DFF1 #UDG$DFF1,7,,2#UDG$DFF2,7,,2 #UDG$E011,7,,2#UDG$E012,7,,2 #UDG$E031,7,,2#UDG$E032,7,,2 #UDG$E051,7,,2#UDG$E052,7,,2
D $DFF1 #UDG$E001,7,,2#UDG$E002,7,,2 #UDG$E021,7,,2#UDG$E022,7,,2 #UDG$E041,7,,2#UDG$E042,7,,2 #UDG$E061,7,,2#UDG$E062,7,,2
b $E071 Sprite 23 : 1620 - cheque
D $E071 #UDG$E071,7,,2#UDG$E072,7,,2 #UDG$E091,7,,2#UDG$E092,7,,2 #UDG$E0B1,7,,2#UDG$E0B2,7,,2 #UDG$E0D1,7,,2#UDG$E0D2,7,,2
D $E071 #UDG$E081,7,,2#UDG$E082,7,,2 #UDG$E0A1,7,,2#UDG$E0A2,7,,2 #UDG$E0C1,7,,2#UDG$E0C2,7,,2 #UDG$E0E1,7,,2#UDG$E0E2,7,,2
b $E0F1 Initial room flags
D $E0F1 Each entry holds default flags for each room. These are copied to #R$7DC0 when the game starts, and then modified as tasks are completed.
D $E0F1 Used in conjunction with the offset table at #R$AA49
b $E122 Next room table
B $E122,$C4,4*$31
D $E122 Each entry contains left, up, right, down
D $E122 Used in conjunction with the offset table at #R$AA49
w $E1E6 Offsets to room data
b $E248 Room 00 - The Factory Gates
D $E248 Border colour
N $E249 Background colour
N $E24A UDGs
N $E28D Task buttons
N $E28E Collision tables 
N $E296 Moving objects
N $E2AA Title
T $E2AD
b $E2BE Room 01 - Reception
D $E2BE Border colour
N $E2BF Background colour
N $E2C0 UDGs
N $E308 Task buttons
N $E309 Collision tables
N $E316 Moving objects
N $E33C Title
T $E33F
b $E348 Room 02 - Ted's Desk
D $E348 Border colour
N $E349 Background colour
N $E34A UDGs
N $E3A0 Task buttons
N $E3A9 Collision tables
N $E3B7 Moving objects
N $E3D3 Title
T $E3D6
b $E3E0 Room 03 - Silicon Slice Store
D $E3E0 Border colour
N $E3E1 Background colour
N $E3E2 UDGs
N $E426 Task buttons
N $E42F Collision tables
N $E438 Moving objects
N $E45C Title
T $E45F
b $E472 Room 04 - Slice Diffusion Furnaces
D $E472 Border colour
N $E473 Background colour
N $E474 UDGs
N $E4BC Task buttons
N $E4C5 Collision tables
N $E4CE Moving objects
N $E4F2 Title
T $E4F5
b $E50D Room 05 - The Fuming Cupboard
D $E50D Border colour
N $E50E Background colour
N $E50F UDGs
N $E578 Task buttons
N $E581 Collision tables
N $E58C Moving objects
N $E5A8 Title
T $E5AB
b $E5BE Room 06 - The Clean Room
D $E5BE Border colour
N $E5BF Background colour
N $E5C0 UDGs
N $E619 Task buttons
N $E621 Collision tables
N $E62F Moving objects
N $E657 Title
T $E65A
b $E668 Room 07 - The Silicon Etching Tank
D $E668 Border colour
N $E669 Background colour
N $E66A UDGs
N $E6B9 Task buttons
N $E6C4 Collision tables
N $E6CE Moving objects
N $E6F4 Title
T $E6F7
b $E70F Room 08 - The Canteen
D $E70F Border colour
N $E710 Background colour
N $E711 UDGs
N $E7CB Task buttons
N $E7D4 Collision tables
N $E7DC Moving objects
N $E804 Title
T $E807
b $E812 Room 09 - The Photocopier
D $E812 Border colour
N $E813 Background colour
N $E814 UDGs
N $E881 Task buttons
N $E88A Collision tables
N $E895 Moving objects
N $E8BB Title
T $E8BE
b $E8CD Room 0A - The Boardroom
D $E8CD Border colour
N $E8CE Background colour
N $E8CF UDGs
N $E940 Task buttons
N $E949 Collision tables
N $E953 Moving objects
N $E977 Title
T $E97A
b $E987 Room 0B - Slice Surface Abrasion
D $E987 Border colour
N $E988 Background colour
N $E989 UDGs
N $E9C9 Task buttons
N $E9D2 Collision tables
N $E9DC Moving objects
N $EA01 Title
T $EA04
b $EA1A Room 0C - Laser Slice Separation Plant
D $EA1A Border colour
N $EA1B Background colour
N $EA1C UDGs
N $EA74 Task buttons
N $EA7D Collision tables
N $EA84 Moving objects
N $EAAC Title
T $EAAF
b $EACB Room 0D - Bay 7
D $EACB Border colour
N $EACC Background colour
N $EACD UDGs
N $EB36 Task buttons
N $EB3F Collision tables
N $EB4A Moving objects
N $EB72 Title
T $EB75
b $EB7A Room 0E - Microchip Mounting Furnace
D $EB7A Border colour
N $EB7B Background colour
N $EB7C UDGs
N $EBCD Task buttons
N $EBD6 Collision tables
N $EBE1 Moving objects
N $EC07 Title
T $EC0A
b $EC25 Room 0F - The Tea Machine
D $EC25 Border colour
N $EC26 Background colour
N $EC27 UDGs
N $EC78 Task buttons
N $EC81 Collision tables
N $EC8D Moving objects
N $ECB3 Title
T $ECB6
b $ECC5 Room 10 - Power Generator
D $ECC5 Border colour
N $ECC6 Background colour
N $ECC7 UDGs
N $ED11 Task buttons
N $ED1A Collision tables
N $ED22 Moving objects
N $ED44 Title
T $ED47
b $ED56 Room 11 - The Electroplating Bath
D $ED56 Border colour
N $ED57 Background colour
N $ED58 UDGs
N $EDC1 Task buttons
N $EDCA Collision tables
N $EDD8 Moving objects
N $EDFC Title
T $EDFF
b $EE16 Room 12 - Quality Assurance Department
D $EE16 Border colour
N $EE17 Background colour
N $EE18 UDGs
N $EE56 Task buttons
N $EE5F Collision tables
N $EE67 Moving objects
N $EE8B Title
T $EE8E
b $EEAA Room 13 - Abrasion Dust Extraction
D $EEAA Border colour
N $EEAB Background colour
N $EEAC UDGs
N $EF00 Task buttons
N $EF0B Collision tables
N $EF13 Moving objects
N $EF3D Title
T $EF40
b $EF58 Room 14 - Matthew's Lair
D $EF58 Border colour
N $EF59 Background colour
N $EF5A UDGs
N $EFA0 Task buttons
N $EFA9 Collision tables
N $EFB0 Moving objects
N $EFD8 Title
T $EFDB
b $EFE9 Room 15 - We Call Him Sir!
D $EFE9 Border colour
N $EFEA Background colour
N $EFEB UDGs
N $F058 Task buttons
N $F061 Collision tables
N $F06B Moving objects
N $F091 Title
T $F094
b $F0A4 Room 16 - The Wage Department
D $F0A4 Border colour
N $F0A5 Background colour
N $F0A6 UDGs
N $F101 Task buttons
N $F10A Collision tables
N $F121 Moving objects
N $F13F Title
T $F142
b $F155 Room 17 - On Top Of The Factory
D $F155 Border colour
N $F156 Background colour
N $F157 UDGs
N $F195 Task buttons
N $F196 Collision tables
N $F19E Moving objects
N $F1B2 Title
T $F1B5
b $F1CA Room 18 - Electrical Conduit Tubing
D $F1CA Border colour
N $F1CB Background colour
N $F1CC UDGs
N $F1F8 Task buttons
N $F1F9 Collision tables
N $F200 Moving objects
N $F222 Title
T $F225
b $F23F Room 19 - Tradesman's Entrance
D $F23F Border colour
N $F240 Background colour
N $F241 UDGs
N $F27A Task buttons
N $F27B Collision tables
N $F281 Moving objects
N $F297 Title
T $F29A
b $F2AE Room 1A - The Fire Escape
D $F2AE Border colour
N $F2AF Background colour
N $F2B0 UDGs
N $F306 Task buttons
N $F307 Collision tables
N $F30D Moving objects
N $F32F Title
T $F332
b $F341 Room 1B - The Official Union Flag
D $F341 Border colour
N $F342 Background colour
N $F343 UDGs
N $F399 Task buttons
N $F39A Collision tables
N $F3A0 Moving objects
N $F3BC Title
T $F3BF
b $F3D6 Room 1C - A Bit Of Fresh Air!
D $F3D6 Border colour
N $F3D7 Background colour
N $F3D8 UDGs
N $F3F7 Task buttons
N $F3F8 Collision tables
N $F3FE Moving objects
N $F408 Title
T $F40B
b $F41E Room 1D - The Acid Bottle Store
D $F41E Border colour
N $F41F Background colour
N $F420 UDGs
N $F4A7 Task buttons
N $F4A8 Collision tables
N $F4AD Moving objects
N $F4D5 Title
T $F4D8
b $F4ED Room 1E - The Picket Line
D $F4ED Border colour
N $F4EE Background colour
N $F4EF UDGs
N $F55A Task buttons
N $F55B Collision tables
N $F565 Moving objects
N $F58F Title
T $F592
b $F5A1 Room 1F - The Cloakroom
D $F5A1 Border colour
N $F5A2 Background colour
N $F5A3 UDGs
N $F603 Task buttons
N $F604 Collision tables
N $F609 Moving objects
N $F62F Title
T $F632 
b $F63F Room 20 - The Shop Steward
D $F63F Border colour
N $F640 Background colour
N $F641 UDGs
N $F688 Task buttons
N $F689 Collision tables
N $F691 Moving objects
N $F6B8 Title
T $F6BB
b $F6CB Room 21 - Main Corridor
D $F6CB Border colour
N $F6CC Background colour
N $F6CD UDGs
N $F716 Task buttons
N $F717 Collision tables
N $F71E Moving objects
N $F746 Title
T $F749
b $F756 Room 22 - Danger! High Voltage Testing
D $F756 Border colour
N $F757 Background colour
N $F758 UDGs
N $F790 Task buttons
N $F791 Collision tables
N $F798 Moving objects
N $F7AA Title
T $F7AD
b $F7CA Room 23 - Under A Diffusion Furnace
D $F7CA Border colour
N $F7CB Background colour
N $F7CC UDGs
N $F817 Task buttons
N $F818 Collision tables
N $F821 Moving objects
N $F845 Title
T $F848
b $F861 Room 24 - Power Cables
D $F861 Border colour
N $F862 Background colour
N $F863 UDGS
N $F897 Task buttons
N $F898 Collision tables
N $F89E Moving objects
N $F8C6 Title
T $F8C9
b $F8D5 Room 25 - Beaker Store
D $F8D5 Border colour
N $F8D6 Background colour
N $F8D7 UDGs
N $F908 Task buttons
N $F909 Collision tables
N $F90E Moving objects
N $F91A Title
T $F91D
b $F929 Room 26 - Beaker Store - Tea Machine
D $F929 Border colour
N $F92A Background colour
N $F92B UDGs
N $F96D Task buttons
N $F96E Collision tables
N $F974 Moving objects
N $F990 Title
T $F993
b $F9B3 Room 27 - Down In The Sewerage
D $F9B3 Border colour
N $F9B4 Background colour
N $F9B5 UDGs
N $F9DA Task buttons
N $F9DB Collision tables 
N $F9DE Moving objects
N $FA08 Title
T $FA0B
b $FA1F Room 28 - The Cellar
D $FA1F Border colour
N $FA20 Background colour
N $FA21 UDGs
N $FA6B Task buttons
N $FA6C Collision tables
N $FA77 Moving objects
N $FA99 Title
T $FA9C
b $FAA6 Room 29 - Under MUDL's Tea Machine
D $FAA6 Border colour
N $FAA7 Background colour
N $FAA8 UDGs
N $FAF4 Task buttons
N $FAF5 Collision tables
N $FAFC Moving objects
N $FB26 Title
T $FB29
b $FB41 Room 2A - The Lift
N $FB41 Border colour
N $FB42 Background colour
N $FB43 UDGs
N $FBBD Task buttons
N $FBBE Collision tables
N $FBCA Moving objects
N $FBE6 Title
T $FBE9
b $FBF1 Room 2B - The Forgotten Room
D $FBF1 Border colour
N $FBF2 Background colour
N $FBF3 UDGs
N $FC25 Task buttons
N $FC26 Collision tables
N $FC2E Moving objects
N $FC4E Title
T $FC51
b $FC63 Room 2C - Prehistoric Caves
N $FC63 Border colour
N $FC64 Background colour
N $FC65 UDGs
N $FCB6 Task buttons
N $FCB7 Collision tables
N $FCBC Moving objects
N $FCE0 Title
T $FCE3
b $FCF4 Room 2D - Satelite Communication System
D $FCF4 Border colour
N $FCF5 Background colour
N $FCF6 UDGs
N $FD38 Task buttons
N $FD39 Collision tables
N $FD3E Moving objects
N $FD5A Title
T $FD5D
b $FD7B Room 2E - Surbiton Colliery
N $FD7B Border colour
N $FD7C Background colour
N $FD7E UDGs
N $FDD3 Task buttons
N $FDD4 Collision tables
N $FDD9 Moving objects
N $FDFF Title
T $FE02
b $FE13 Room 2F - OK ! Where Do I Get My Reward ?
D $FE13 Border colour
N $FE14 Background colour
N $FE15 UDGs
N $FE40 Task buttons
N $FE41 Collision tables
N $FE48 Moving objects
N $FE68 Title
T $FE6B
b $FE8B Room 30 - ###
D $FE8B This room is the end screen (whether by losing all lives, running out of time, or, amazingly, actually completing the game), but the title is configured to display black INK on PAPER, so it is not displayed
D $FE8B Border colour
N $FE8C Background colour
N $FE8D UDGs
N $FEA6 Task buttons
N $FEA7 Collision tables
N $FEAA Moving objects
N $FED1 Title
T $FED4
i $FED7