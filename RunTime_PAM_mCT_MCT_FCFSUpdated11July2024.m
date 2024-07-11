Tks_in = 300; % We are considering the "runtime" of all these methods for Tks_in
% methods...

% We considered the run time of each algorithm baed on the  obtained
% complexity for each method , that is:
% Note that script is calcualting the run time of the methods....and it
% should not be confused with the time response latencies of the tasks or
% any other metric
N = 40;                   % Number of possible VFNs....
Tau = 100;
TKs_MonteCarlo = N;

fx10 = linspace(1,N+(N.*log(Tks_in)),N);    % Complexity of PAM    %% use of `linspace' function  ...PAM complexity: O(N+(N.*log(M))))
                              % https://www.mathworks.com/help/matlab/ref/linspace.html   
% % Graph the logarithmic function f(x) = 2 log3 (x + 1).
% fx11 = 50-(5.^(6-RunTAllMethods1(2,:)));   %RR
fx10 = log(fx10);            

fx11 = linspace(1,N.*Tks_in,N);    % Complexit of mCT   ...   mCT complexity: O(N.*M)....

%fx11 = 6-(3.^(6+fx11));  

fx11 = log(fx11); 


%fx11 = log(fx11)./log(-2);       % log to the base 4   

fx12 = linspace(1,N.*Tks_in,N);    % Complexit of MCT    .... MCT complexity: O(N.*M)....

%fx12 = 6-(3.^(6+fx12));

fx12 = log(fx12); 


%fx12 = log(fx12)./log(-2);      % log to the base 4    

fx13 = linspace(1,N,N);         % Complexit of FCFS   ... FCFS complexity: O(N)...

%fx13 = log(fx13); 

 t = tiledlayout(2,2);
 ax1 = axes(t);
 plot(ax1,1:TKs_MonteCarlo,fx10,'LineStyle','-','Color','r','LineWidth',3);  % We have to mathematically prove that run time of the PAM is equivlant to this expression....
% xlim([0 330]);
 xlabel('Number of Tasks');
 ylabel('Complexity Level');
 set(ax1,'XColor','black','YColor','black','FontWeight', 'bold');
 ax1.FontSize = 18;
 title('Predictive Analytics and Modules (PAM)');
hold on
%plot(ax1,1:TKs_MonteCarlo,RunTAllMethods1(2,:),'LineStyle','-','Marker','*','Color','blue');
% plot(ax1,1:TKs_MonteCarlo,RunTAllMethods1(2,:),'LineStyle','--','Color','blue','LineWidth',2);
nexttile 
ax2 = gca;
plot(ax2,1:TKs_MonteCarlo,fx11,'LineStyle','--','Color','blue','LineWidth',3);
% xlim([0 330]);
 xlabel('Number of Tasks');
 ylabel('Complexity Level');
 set(ax2,'XColor','black','YColor','black','FontWeight', 'bold');
 ax2.FontSize = 18;
 title('minimum Completion Time(mCT)');
hold on
%plot(ax1,1:TKs_MonteCarlo,RunTAllMethods1(3,:),'LineStyle','-','Marker','*','Color','green');
% plot(ax1,1:TKs_MonteCarlo,RunTAllMethods1(3,:),'LineStyle',':','Color','green','LineWidth',2);
nexttile
ax3 = gca;
 plot(ax3,1:TKs_MonteCarlo,fx12,'LineStyle',':','Color','green','LineWidth',3);
% xlim([0 330]);
 xlabel('Number of Tasks');
 ylabel('Complexity Level');
 set(ax3,'XColor','black','YColor','black','FontWeight', 'bold');
 ax3.FontSize = 18;
 title('Maximum Completion Time(MCT)');
hold on

nexttile
ax4 = gca;
 plot(ax4,1:TKs_MonteCarlo,fx13,'LineStyle',':','Color','black','LineWidth',3);
% xlim([0 330]);
 xlabel('Number of Tasks');
 ylabel('Complexity Level');
 set(ax4,'XColor','black','YColor','black','FontWeight', 'bold');
 title('First Come First Serve (FCFS)');
 ax4.FontSize = 18; 
hold off
