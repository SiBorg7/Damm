Damm
====

Damm Algorithm Check Digit Implementation in R

This script creates a new Function called DammDigit which can be used to generate a check digit
using the Damm Alogorithm or which can be used to check a number with a Damm Alogirthm check digit.

Usage:

To create a check digit for the number '572' type the following into the R console:

DammDigit(572)

This returns 4.  Append this to the number to get 5724.

To check a number with a check digit for validity (e.g. 5724 as created above) simply type:

DammDigit(5724)

This returns 0, indicated the number is valid.  If anything other than 0 is returned, there is
a transcription error in the number.

This can be incorporated into any program where a check digit needs to be generated and/or checked for validity.

Reference

This implementation of the Damm Alogirthm is based on the description and matrix given in the reference
below:

http://en.wikipedia.org/wiki/Damm_algorithm
