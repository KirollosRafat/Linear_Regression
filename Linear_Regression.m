function [a,b] = Linear_Regression(x,y)
  n = length(x); ##vector length

  segmaX = sum(x); ##sum of x vector
  segmaY = sum(y);##sum of y vector

  xy = x .* y; ## Element-wise multiplication to lead to xy
  segmaXY = sum(xy);## sum of xy vectorr

  segmaX_2 = sum(x.^2); ##sum of x_squared vector
  segmaY_2 = sum(y.^2); ##sum of y_squared vector

  a = ((segmaY * segmaX_2)-(segmaX * segmaXY ))/((n*segmaX_2)-(segmaX^2)); ## slope
  b = ((n * segmaXY)-(segmaY * segmaX ))/((n*segmaX_2)-(segmaX^2)); ## y-intercept
endfunction
