# PAM_VFC09JULY2024
PAM is a vehicular fog computing based healthcare proposal that  leverages computation and processing power resource of smart vehicles with existing distributed computing infrastructure. The main focus is minimizing the average latency which is one of needed factor to consider while designing an efficient distributed computing framework.
## Steps involved in Use of MATLAB code and ORIGIN software during validation of PAM by comparing with other benchmark methods via simulation
### Step 1:
Load and initialize the parameters with required values saved in matlab data file "workspace27Sep2023PDFAllmethodsV5.mat"
### Step 2:
Now the expected response latencies by PAM, mCT, MCT, and FCFS need to be confirmed. These response latencies are retrieved using simulating/experimenting the VFC-enabled distributed computing infrastructure. This simulation is done using relevant matlab files which are shown in the following order:
1) AllinOne27Sep2023OwnAprroach.m   (averages)           % For response latency simulation of "PAM" method  % Note that the term written within small brackets are the variable/parameters names which are used to collect the final response latencies during 
                                                         % simulation...Also note that the collected "response latencies" gave us a clue based on which we finally filled the 'excel sheet' which is in next step uploaded to "origin" software for plotting the graphs as shown in the article "PAM: Predictive analytics and modules-based computation offloading framework using greedy heuristics and 5G NR-V2X" accessible using doi/url : https://doi.org/10.1002/ett.5003
2) Allinone10July2024MaxMax_RespLatency_PAM.m (averages_Max) % For response latency simulation of "MCT" method
3) AllinOne10July2024MinMinversionV6.m  (TotalTRespMinMax1)  % For response latency simulation of "mCT" method
4) AllinOne10July2024FCFSversionV5.m  (averages_FCFS) % For response latency simulation of "FCFS" method.... Note that FCFS simlulation takes a long time because of its "preliminary" and "basic" nature. Therefore to avoid a long delay, already simulated matlab file with matlab data file "Workspace_FCFS10July2024.mat" can be uploaded and run to get the response latencies....
### Step 3:
After obtaining "response latencies" values for PAM, MCT, mCT, and FCFS in variables such as averages, averages_Max,TotalTRespMinMax1 and averages_FCFS, we filled an "excel" sheet named as "Response_T_AllMethods_Vs_PAM10July2024" with probable "response latencies" values. This "excel" sheet is then used in "origin" plot generating software for final "plots" . Note that the "response latencies" values that we entered in the mentioned "excel" sheet are based on values obtained from simulation results and also values quoted by other developers in the relevant publications.
### Step 4:
This step ensures the PDF-based analysis, which uses the following matlab files: 
(1) AllinOne27Sep2023OwnAprroach.m   (For_PDF)
(2) Allinone10July2024MaxMax_RespLatency_PAM.m (MCT1)
(3) AllinOne10July2024MinMinversionV6.m  (mCT1)
(4) AllinOne10July2024FCFSversionV5.m  (FCFS13)
