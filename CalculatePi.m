%Estimate pi using a Monte Carlo approach
clear all;                          %clear 
close all;                          %close all figures
NumSamples=1000;                    %Number of samples to be generated
L=1;      
%Square side [A.U.]
R=L/2;                              %Radius
Inside=0;                           %Number of points inside the circle
figure;                             %Open a new figure
hold on;
axis equal;                         %1-1 aspect ratio 
plot([-R,-R,R,R],[-R,R,R,-R],'b');  %Plot square
theta=0:0.01:2*pi; plot(R*cos(theta), R*sin(theta),'k');  %Plot circle
for k=1:NumSamples
    x=rand()-R;                     %x coordinate of the point
    y=rand()-R;                     %y coordinate of the point
    if sqrt(x*x+y*y)<=R             %is it inside?
        Inside=Inside+1;            %yes! increment Inside
        plot(x,y,'ko');             %plot a round marker
    else
        plot(x,y,'b.');             %no, plot a dot
    end    
end
Pi=4*Inside/NumSamples;             %Approximiation of pi