// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@8192
D=A   // place 8192 in n
@n
M=D
(LOOP)
@i    //i=0
M=0
@KBD
D=M    //check value of KBD
@BLACK
D;JGT
(WHITE)
@i
D=M
@SCREEN
A=A+D
M=0
@i
MD=M+1
@n
D=D-M
@LOOP
D;JEQ
@WHITE
0;JMP
(BLACK)
@i
D=M
@SCREEN
A=A+D
M=-1
@i
MD=M+1
@n
D=D-M
@LOOP
D;JEQ
@BLACK
0;JMP
