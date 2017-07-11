function pred = perceptron_predict(w, x)
%   w is weight vector (d * 1)
%   x is feature vector (1 * d)
%   pred is prediction result based on w and x

%#################################################################################
%####   you should maintain the size of the return value in starter codes  #######
%#################################################################################
  z = x * w;
  if (z <= 0)
      pred = -1;
  else
      pred = 1;
  end
end