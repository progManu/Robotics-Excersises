function matrix = DHMatrix(a, alpha, d, theta)
    % function to create the matrix from the DH table row
    matrix = [cos(theta) -sin(theta) 0 a;
              sin(theta)*cos(alpha) cos(theta)*cos(alpha) -sin(alpha) -sin(alpha)*d;
              sin(theta)*sin(alpha) cos(theta)*sin(alpha) cos(alpha) cos(alpha)*d;
              0 0 0 1
             ];
end