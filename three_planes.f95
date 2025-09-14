program three_planes

  implicit none
  real :: a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3
  real :: det, detx, dety, detz, x, y, z

  ! printing outwards
  print *, 'Enter coefficients for 3 equations:'
  print *, 'Equation 1: a1 b1 c1 d1 (for a1*x + b1*y + c1*z = d1)'
  read *, a1, b1, c1, d1
  print *, 'Equation 2: a2 b2 c2 d2'
  read *, a2, b2, c2, d2
  print *, 'Equation 3: a3 b3 c3 d3'
  read *, a3, b3, c3, d3

  ! Main determinant
  det = a1*(b2*c3 - b3*c2) - b1*(a2*c3 - a3*c2) + c1*(a2*b3 - a3*b2)

  if (abs(det) < 1.0e-6) then
     !checks if system is consistent
     detx = d1*(b2*c3 - b3*c2) - b1*(d2*c3 - d3*c2) + c1*(d2*b3 - d3*b2)
     dety = a1*(d2*c3 - d3*c2) - d1*(a2*c3 - a3*c2) + c1*(a2*d3 - a3*d2)
     detz = a1*(b2*d3 - b3*d2) - b1*(a2*d3 - a3*d2) + d1*(a2*b3 - a3*b2)

     if (abs(detx) < 1.0e-6 .and. abs(dety) < 1.0e-6 .and. abs(detz) < 1.0e-6) then
        print *, 'Infinite solutions'
     else
        print *, 'No unique solution (inconsistent system)'
     end if
     
  else
     ! Cramer's rule
     detx = d1*(b2*c3 - b3*c2) - b1*(d2*c3 - d3*c2) + c1*(d2*b3 - d3*b2)
     dety = a1*(d2*c3 - d3*c2) - d1*(a2*c3 - a3*c2) + c1*(a2*d3 - a3*d2)
     detz = a1*(b2*d3 - b3*d2) - b1*(a2*d3 - a3*d2) + d1*(a2*b3 - a3*b2)

     x = detx / det
     y = dety / det
     z = detz / det
     
     ! putting out solution
     print *, 'Unique solution:'
     print *, 'x = ', x
     print *, 'y = ', y
     print *, 'z = ', z
     
  end if
  
end program three_planes
