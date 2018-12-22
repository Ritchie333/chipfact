b $5CCB BASIC
D $5CCB The listing says RANDOMIZE USR 24114 (#R$5E32) but the real value is #R$5F15
t $5CE3 Message
c $5D80 Initialize display
D $5D80 This routine takes the text starting at #R$5E55 and scrolls it onto screen, accompanied by white noises
b $5DD7 Timing constant for white noise
c $5DD8 Return the next timing constant for white noise in A
c $5DE7 Scroll a line of text onto the screen
R $5DE7 HL Pointer to the string to display
R $5DE7 DE Destination address on screen
g $5E08 Current offset of text being drawn
c $5E09 Play a white noise
c $5E32 Write the attributes for the loading display
b $5E49 The colours to display on screen for each row
B $5E49,$0C,1*$0C
t $5E55 Main loading screen text
c $5F15 Main entry point (BASIC)
c $5F29 Return the next hash byte in A
c $5F38 Main entry point (continued)
N $5F5C Store an address from the memory hash in HL (#R$8000)
N $5F65 Store an address from the memory hash in DE (03C3)
N $5F75 Store an address from the memory hash in HL (#R$8000)
N $5F87 Store an address from the memory hash in HL (056B)
c $5F93 Hash memory with "safe" instructions
D $5F93 This is another memory routine which hashes #R$8000 - 8CA0 with instructions that do nothing except copy register values around. This means that when the loading system finishes and steps into #R$83C3, it will execute this code until it finds the game decrypter at #R$8C1C.
b $5FA8 Hash byte used to decrypt the game once loaded
i $5FA9
c $8000 Main entry point (second block)
D $8000 This block is loaded immediately after the screen is drawn and the banner messages scrolled on screen.
b $8029 Data for the on screen characters
B $8029,$3C,6*$0A
D $8029 This block of memory holds 6 bytes for each character onscreen
D $8029 {00|current speed hash value}
D $8029 {01|speed (lower = faster)}
D $8029 {02|current address onscreen}
D $8029 {04|current frame number. Bit 7 is off for left and on for right, other bits make up an offset from #R$8077 (left) or #R$8177 (right)}
D $8029 {05|current direction 1 = right, 0 = left}
D $8029 The speed is static, but everything else alters as loading progresses...
w $8065 Timer speed
D $8065 This evaluates to 1/10 second
b $8065 Number of ticks until timer should be updated
b $8067 Number of ticks until a whole second has elapsed
b $8068 Current timer value, in reverse
D $8068 These three bytes hold the current value of the timer in the order units, tens, hundreds. Each value is the offset from 3D80 (in the ROM character set) which holds the character to display.
s $806B Temporary buffer for storing tape bits
b $8077 Ted left
D $8077 #UDG$8077,7,,2#UDG$8078,7,,2 #UDG$8097,7,,2#UDG$8098,7,,2 #UDG$80B7,7,,2#UDG$80B8,7,,2 #UDG$80D7,7,,2#UDG$80D8,7,,2 
D $8077 #UDG$8087,7,,2#UDG$8088,7,,2 #UDG$80A7,7,,2#UDG$80A8,7,,2 #UDG$80C7,7,,2#UDG$80C8,7,,2 #UDG$80E7,7,,2#UDG$80E8,7,,2
b $8177 Ted right
D $8177 #UDG$8177,7,,2#UDG$8178,7,,2 #UDG$8197,7,,2#UDG$8198,7,,2 #UDG$81B7,7,,2#UDG$81B8,7,,2 #UDG$81D7,7,,2#UDG$81D8,7,,2 
D $8177 #UDG$8187,7,,2#UDG$8188,7,,2 #UDG$81A7,7,,2#UDG$81A8,7,,2 #UDG$81C7,7,,2#UDG$81C8,7,,2 #UDG$81E7,7,,2#UDG$81E8,7,,2
c $8277 Main animation routine
D $8277 This routine is called between tape signals. It loads the buffer contents into memory, animates the onscreen graphics, and adjusts the timer.
R $8277 DE Pointer to the tape buffer
R $8277 A The low byte index of the buffer to adjust
N $828A A timer tick has occurred. This happens every 1/10 of a second as defined in the speed byte at #R$8065
N $8296 At this point, a full second has elapsed so the display must be updated
N $82B5 Redraw the timer
c $82D4 Animate a sprite
R $82D4 Current screen address
N $82E1 Get the next frame to the right
N $82E8 Get the next frame to the left
N $82F5 A sprite needs changing direction. Don't get the next frame counter, position and direction, but instead just reuse these values and go the other way.
N $82FD Otherwise, get the next set of values to animate with
N $8305 Put the sprite on screen
N $8320 At this point we are done with all animation and can move on to retrieve a bit from tape
c $8341 Get bits from tape
R $8341 IX Current address to load the next byte
R $8341 DE Length remaining in bytes
s $83C3 End of loader
D $83C3 We reach this point when the whole game has loaded. The memory contains instructions that do nothing except copy register values around. This was set up in the routine at #R$5F93.
c $8C1C Game decrypter
D $8C1C The code from here onwards is the third and final block loaded. It follows immediately after the second block with no extra loading tone.
D $8C1C This code creates a hash from 4000 - 5BFF and 5C92 - FFFF and stores it in HL. This means that if any bytes are changed anywhere en route to loading, the game will not decrypt correctly and will crash. The area from 5C00 - 5C92 is not scanned as this contains system variables set up by BASIC and their values are not predictable.
N $8C34 At this point, the hash in HL should be 4DBD
N $8C43 Now decrypt the game
D $8C59 At this point the entire game has been decrypted and is ready to run. The value in HL should be EBF5 and the value in A should be 38
i $8C60