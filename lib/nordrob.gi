#############################################################################
##
#A  nordrob.gi              GUAVA Code library                  Reinald Baart
#A                                                        &Jasper Cramwinckel
#A                                                           &Erik Roijackers
##
##  This file contains the complete Nordstrom-Robinson code
##

#############################################################################
##
#F  NordstromRobinsonCode( )  . . . . . . . . . . . . Nordstrom-Robinson code
##

InstallMethod(NordstromRobinsonCode, true, [], 0, 
function() 
	local C, elements;
	elements := Codeword(
[ [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 
      Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), 0*Z(2), 
      0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 
      0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0 ], 
  [ Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, 
      Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2) ] ]);
      
	C := ElementsCode(elements, "Nordstrom-Robinson code", GF(2)); 
	SetWordLength(C, 16);
	SetSize(C, 256);  
    SetIsLinearCode(C, false); 
    SetIsCyclicCode(C, false); 
    C!.lowerBoundMinimumDistance := 6; 
    C!.upperBoundMinimumDistance := 6; 
    SetMinimumDistance(C, 6); 
	SetWeightDistribution(C,  
		[ 1, 0, 0, 0, 0, 0, 112, 0, 30, 0, 112, 0, 0, 0, 0, 0, 1 ]); 
    SetInnerDistribution(C, 
		[ 1, 0, 0, 0, 0, 0, 112, 0, 30, 0, 112, 0, 0, 0, 0, 0, 1 ]); 
    C!.boundsCoveringRadius := [ 4 ]; 
	SetCoveringRadius(C, 4); 
	return C;
end);

