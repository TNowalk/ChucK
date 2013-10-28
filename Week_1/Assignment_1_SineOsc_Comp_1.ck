/*
  Assignment_1_SineOsc_Comp_1
  
  30 Second composition to test knowledge of ChucK.  Plays a 
  Major scale and a couple of Triads.
  
  @package ChucK
  @author Trevor Nowalk
  @License http://opensource.org/licenses/AFL-3.0 Academic Free License (AFL 3.0)
  @since Version 1.0
  @date 2013-10-24
*/

// Init Sound Network
SinOsc s => dac;

// Init default Volume
3 => int vol;

// Init Middle C4
261.63 => float c4;
// Init D4
293.66 => float d4;
// Init E4
329.63 => float e4;
// Init F4
349.23 => float f4;
// Init G4
392.00 => float g4;
// Init A4
440.00 => float a4;
// Init B4
493.88 => float b4;
// Init C5
523.25 => float c5;

// Keep track of start time
now => time start;

// Set Volume
vol => s.gain;

<<< "Ascending Major Scale" >>>;
// Setup for loop to play the major scale
for (1 => int i; i < 9; i++) {
    // Using an array to store notes would be a better solution, 
    // but to meet the requirements of the assignment let's use 
    // a series of if/else statements
    if (i == 1) {
        // Set Frequency to C4
        c4 => s.freq;
    } else if (i == 2) {
        // Set Frequency to D4
        d4 => s.freq;
    } else if (i == 3) {
        // Set Frequency to E4
        e4 => s.freq;
    } else if (i == 4) {
        // Set Frequency to F4
        f4 => s.freq;
    } else if (i == 5) {
        // Set Frequency to G4
        g4 => s.freq;
    } else if (i == 6) {
        // Set Frequency to A4
        a4 => s.freq;
    } else if (i == 7) {
        // Set Frequency to B4
        b4 => s.freq;
    } else if (i == 8) {
        // Set Frequency to C5
        c5 => s.freq;
    }
    // Play note for 1 second
    1::second => now;
}

// Mute the sound
0 => s.gain;
// Play 1.5 seconds for a pause at the top
1.5::second => now;
// Rest the volume
vol => s.gain;

<<< "Descending Major Scale" >>>;
// Now that we've gone up the scale, let's come back down
for (8 => int i; i >= 1; i--) {
    if (i == 1) {
        // Set Frequency to C4
        c4 => s.freq;
    } else if (i == 2) {
        // Set Frequency to D4
        d4 => s.freq;
    } else if (i == 3) {
        // Set Frequency to E4
        e4 => s.freq;
    } else if (i == 4) {
        // Set Frequency to F4
        f4 => s.freq;
    } else if (i == 5) {
        // Set Frequency to G4
        g4 => s.freq;
    } else if (i == 6) {
        // Set Frequency to A4
        a4 => s.freq;
    } else if (i == 7) {
        // Set Frequency to B4
        b4 => s.freq;
    } else if (i == 8) {
        // Set Frequency to C5
        c5 => s.freq;
    }
    // Play note for 1 second
    1::second => now;
}

// Fill the rest of the time with some triads

// Mute
0 => s.gain;
// Advance time 1.5 seconds
1.5::second => now;
// Unmute
vol => s.gain;

// C Major Triad
<<< "C Major Triad" >>>;
// Set frequency to C4
c4 => s.freq;
// Play for 1 second
1::second => now;
// Set frequency to E4
e4 => s.freq;
// Play for 1 second
1::second => now;
// Set frequency to G4
g4 => s.freq;
// Play for 1 second
1::second => now;
// Set frequency to E4
e4 => s.freq;
// Play for 1 second
1::second => now;
// Set frequency to C4
c4 => s.freq;
// Play for 1 second
1::second => now;

// Mute
0 => s.gain;
// Advance time 1 seconds
1::second => now;
// Unmute
vol => s.gain;

// F Major Triad
<<< "F Major Triad" >>>;
// Set frequency to F4
f4 => s.freq;
// Play for 1 second
1::second => now;
// Set frequency to A4
a4 => s.freq;
// Play for 1 second
1::second => now;
// Set frequency to C5
c5 => s.freq;
// Play for 1 second
1::second => now;
// Set frequency to A4
a4 => s.freq;
// Play for 1 second
1::second => now;
// Set frequency to F4
f4 => s.freq;
// Play for 1 second
1::second => now;

// Total Time Elapsed
now - start => dur elapsed;

// Print Time Elapsed
<<< "Time Elapsed: ", elapsed/second >>>;