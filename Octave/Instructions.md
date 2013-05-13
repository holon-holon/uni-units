Acquiring Octave
=======================

Windows
-------

Windows users can use [cygwin](http://www.cygwin.com) to install octave and octave-forge.

OS X
----

The octave wiki has instructions [here](http://wiki.octave.org/Octave_for_MacOS_X).

Linux
-----

Simply use your package manager to install octave.

Using Octave and .m Files
=========================

To actually run octave, you will need to open a terminal ("cmd" for windows, "bash" or "terminal" 
for OS X) and type in "octave". This will enter the octave prompt.

To use the .m files in this repository, save them somewhere, and type source /path/to/file.m. 
Entering octave from the directory where these files are stored will allow you to use source 
"file.m" and save typing.

More technical users may wish to clone the git repository and add it to their octave path.

An example
----------

Included so far are a variety of constants, which can be found by typing constant (or con) and 
hitting tab twice. Alternatively, you can read through phys1001.m to find out the constants and
functions.

Let's say we wanted to use the Biot-Savart law

	B = (m0/4pi)*(q*vxr-hat/r^2)

and we know what q, v and r are:
	
	q=constantChargeElementary
	v=[3,4,5]
	r=[5,12,13]

The constant (m0/4pi) is defined as constantPermeability in phys1001.m.

In octave, we have one of two approaches: define the variables q, v, and r, line by line, or define 
them all on the same line of code.

Line by line:
q=constantChargeElementary
v=[3,4,5]
r=[5,12,13]

To find B, we now just type in the Biot-Savart law:

constantPermeability*(q*cross(v,normalize(r))/norm(r)**2)

There are three unfamiliar functions here:

cross(v,w) calculates the cross product of two vectors.
normalize(v) produces the unit vector from an input vector.
norm(v) produces the magnitude of a vector.

For further clarity,

	cross(v,normalize(r))

works because normalize(r) produces a vector, so octave happily evaluates the function as if it were a vector.

