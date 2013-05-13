#Constants

#Electromagnetic

constantPermeability=1*10**(-7);
constantCoulomb=8.988*10**(9);
constantChargeElementary=1.602177*10**(-19);
constantEarthMagnetism=2*10**(-5);

#Useful functions

#Vectors

#Produces the unit vector of a given vector.

function ans = normalize(vector)
ans = vector/(norm(vector));
endfunction

#Produces the magnitude of the cross product, given two magnitudes and an angle in degrees

function ans = angleCross(a,b,angle)
ans = norm(a)*norm(b)*sin(angle * pi/180);
endfunction