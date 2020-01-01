% Solve an Input-Output Fitting problem with a Neural Network
% Script generated by Neural Fitting app
% Created 01-Oct-2019 14:16:08
%
% This script assumes these variables are defined:
%
%   pls - input data.
%   Nuclear_D_ - target data.
hidricainput=[H_drica_D_1__2 Hidrica_D_6__1 Pluviosidade_D_1__2 M_s_D_1__2];
xava = hidricainput';


results = sim(nethidrica, xava);
%consumoAV= net(xava);

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
%trainFcn = 'trainlm';  % Levenberg-Marquardt backpropagation.

% Create a Fitting Network
%hiddenLayerSize = 5;
%net = fitnet(hiddenLayerSize,trainFcn);
%PR=[min(Nuclear_D_1__2) max(Nuclear_D_1__2);min(Nuclear_D_6__1) max(Nuclear_D_6__1)];
%net=newff(minmax(x),[5 1],{'tansig' 'tansig'},'trainlm');
% Setup Division of Data for Training, Validation, Testing
%net.divideParam.trainRatio = 70/100;
%net.divideParam.valRatio = 15/100;
%net.divideParam.testRatio = 15/100;

% Train the Network
%[Y,net] = sim(net,x,t);
%Xf=zeros(1,2522);
%Af=zeros(1,2522);
%[Nuclear_D_aval,Xf,Af] = sim(net,x);
%[Y,tr] = sim(x,t);
% Test the Network
%y = sim(net,x);
%SIMULATION:
%[net,tr] = train(net,x,t);




%e = gsubtract(t,y);
%performance = perform(net,t,y);
%K=sim(net,x,t);

% View the Network
%view(net)

% Plots
% Uncomment these lines to enable various plots.
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, ploterrhist(e)
%figure, plotregression(t,y)
%figure, plotfit(net,x,t)

%calculo dos erros de previs?o%
%k=11686; %espa?o temporal de previs?o
%forecast=[output1];
%actual=[Xreal]';

%%MAPEEEE%
%lambdabar1=(1/k)*sum(forecast);
%erro1=actual-forecast; %diferen?a entre real e previsto
%erroabs1=abs(erro1);
%PE1=(erroabs1/lambdabar1)*100;
%MAPE1=sum(PE1)/k;

%CALCULO VARIAN?IA ERRO
%quoc1=abs(actual-forecast)/lambdabar1;
%errosemi=(1/k)*(sum(quoc1));
   
%sigmaini=sum((quoc1-errosemi).^2);
 
%sigma1=((1/k)*(sigmaini));


%grafico

%figure;
%plot(Xreal,'black','LineWidth',1);plot(output1,'red','LineWidth',0.3);
%hold on