Damm
====

Damm Algorithm Check Digit Implementation in R

This script creates a function called DammDigit which can be used to generate a check digit using the Damm Algorithm.  It can also be used to check a number for validity where a check digit has been added using this function.

The algorithm depends on the use of a totallly asymmetric quasigroup of order 10 (a 10 x 10 matrix) and the check digit returned depends on which matrix is used.  The implementation of the algorithm in this function is based on the matrix given in the reference below.

Usage:

To create a check digit for the number '572' type the following into the R console:

DammDigit(572)

This returns 4.  Append this to the number to get 5724.

To check a number with a check digit for validity (e.g. 5724 as created above) simply type:

DammDigit(5724)

This returns 0, indicating that the number is valid.  If anything other than 0 is returned, there is a transcription error in the number.

This can be incorporated into any program where a check digit needs to be generated and/or checked for validity.

Reference

This implementation of the Damm Alogirthm is based on the description and matrix given in the reference
below:

http://en.wikipedia.org/wiki/Damm_algorithm
