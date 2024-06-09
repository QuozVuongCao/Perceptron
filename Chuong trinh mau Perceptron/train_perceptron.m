function w=train_perceptron(X,D)
% m = so hang cua X = so ngo vao cua Perceptron
% K = so cot cua X = so mau du lieu
% n = so hang cua D = so ngo ra cua mang
% ham nay lap trinh truong hop n = 1
[m,K] = size(X);
eta = 0.2;
E = 0;
w = rand(m,1);
finish_flag = 0;
while ~finish_flag
    for k=1:K
        y(k)= my_perceptron(w,X(:,k));
        w = w + eta*(D(k)-y(k))*X(:,k);
        E = E + 0.5*(D(k)-y(k))^2;
    end
    if E == 0
        finish_flag = 1;
    else
        E = 0;
    end
end
end