time=zeros(1,1000);
steerAng=zeros(1,1000);
steerAng2=zeros(1,1000);

for i=1:1000
    time(i)=i;
    steerAng(i)=sin(i/20);
    steerAng2(i)=cos(i/20);
end

figure(1)
plot(time,steerAng)
figure(2)
plot(time(1,1:250),steerAng(1,1:250));

figure(3)
plot(time(1,1:500),steerAng(1,1:500),'o','MarkerFaceColor','red');


figure(4)
plot(time(1,1:500),steerAng(1,1:500),'o','MarkerFaceColor','black');
hold on
plot(time(1,1:500),steerAng2(1,1:500),'x','MarkerFaceColor','Yellow');
legend('steer','wheel');


figure(5)
subplot(2,2,1);
plot(time(1,1:200),steerAng(1,1:200),'o','MarkerFaceColor','red');
hold on
plot(time(1,1:200),steerAng2(1,1:200),'x','MarkerFaceColor','Yellow');
legend('sin','cos');
title('Subplot 1 of 4 (2,2)')
hold off

subplot(2,2,2);
plot(time(1,1:300),steerAng(1,1:300),'o','MarkerFaceColor','red');
hold on
plot(time(1,1:300),steerAng2(1,1:300),'x','MarkerFaceColor','Yellow');
legend('sin','cos');
title('Subplot 2 of 4 (2,2)')
grid on
hold off

subplot(2,2,3);
plot(time(1,1:400),steerAng(1,1:400),'o','MarkerFaceColor','red');
hold on
plot(time(1,1:400),steerAng2(1,1:400),'x','MarkerFaceColor','Yellow');
legend('sin','cos');
title('Subplot 3 of 4 (2,2)')
grid on
xlabel('Time in Seconds');
hold off

subplot(2,2,4);
plot(time(1,1:500),steerAng(1,1:500),'o','MarkerFaceColor','red');
hold on
plot(time(1,1:500),steerAng2(1,1:500),'x','MarkerFaceColor','Yellow');
legend('sin','cos');
title('Subplot 4 of 4 (2,2)')
grid on
xlabel('Time in Seconds');
ylabel('Steering Angle in Degrees')
hold off

