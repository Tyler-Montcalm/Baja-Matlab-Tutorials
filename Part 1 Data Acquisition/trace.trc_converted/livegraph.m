t=readtable('id0C3_10_SAS.ID0c3_agSteer025Resl.csv');
time=t{:,1};
angle=t{:,2};
angle_cut=t{:,2};

myVideo=VideoWriter('myVideoFile');
myVideo.FrameRate =10;
open(myVideo);

for i=1:1:length(angle)
    if(angle(i)>280)
        angle(i)=280;
    end
end
x = time;
y = angle;
plot(x,y)
hold on
p = plot(x(1),y(1),'o','MarkerFaceColor','red');
hold off
axis manual
for k = 2:length(x)
    p.XData = x(k);
    p.YData = y(k);
    drawnow
    if(mod(k,100) == 0)
        pause(0.01)
    
        frame=getframe(gcf)
        writeVideo(myVideo,frame);
    end
end
close(myVideo)