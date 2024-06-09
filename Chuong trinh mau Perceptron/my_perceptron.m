function y=my_perceptron(w,x)
net = w'*x;
if net >=0
    y = 1;
else
    y = 0;
end
end