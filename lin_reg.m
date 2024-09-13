## This is a script to test our linear regression function

A = [1 2 3 4 5 6 7 8 9 10];
B = [1.2 1.8 2.6 3.2 3.8 3.9 5 5.7 6.2 7.3 ];

[m c] = Linear_Regression(A,B);

x = 0:.1:length(A);
y = m.*x + c;


figure(1)
plot(A,B,'rx',x,y,'b',linewidth = 13)
title("Data Representation and its line fitting")
xlabel("X (DATA)")
ylabel("Y (Predicted Output)")
legend("DATA","Line Fitting")
xlim([0 10])
ylim([0 7])
grid on

