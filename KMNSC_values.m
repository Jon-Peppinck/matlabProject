% Quantitative Analysis of the Interdisciplinarity of Applied Mathematics  
% MATLAB - Jon Peppinck
% _________________________________________________


function [K,M,N,S,C] = KMNSC_values(line_index)
%KMNSC_values returns K, M, M, S, and C values for each discipline
%   KMNSC_values reads in information from 'discipline.txt'
%   It organises information by assigning each column (K, M, and N) to a variable
%   KMNSC_values uses this data to perform calculations to find S and C
%   This functions primary use will be used in conjunction with the main
%   script 'Final_Project.m'. It is important that 'Final_Project.m',
%   'KMNSC_values.m', and 'discipline.txt' are all in the current working
%   directory, as they depend on each other. KMNSC_values will return all
%   of the relevent values for any partciular line corresponding the the
%   discipline of interest. It also calculates the average values across
%   the major disciplines, and this is used in the plot. 

fid = fopen('discipline.txt', 'r');
if fid == -1
    error('Failed to open discipline.txt.');
end

% Create three vectors for K, M, and N from 'discipline.txt'

data = textscan(fid, '%f %f %f');

K_all = data{1};
M_all = data{2};
N_all = data{3};

% Close the file and display error if there is a problem closing it

if fclose(fid) == -1
    error('Failed to close discipline.txt.');
end

% If the data from 'discipline.txt' does not have the same amount if
% entried for K, M, and N, the outcome will not be accurately presented.
% Therefore it will be checked, and if they are not of the same dimension
% or M>N, and error will be raised

if length(K_all) ~= length(M_all) || length(M_all) ~= length(N_all)
    error('Please check ''discipline.txt'' contains equal number of entries for K, M, and N');
end

if length(M_all) > length(N_all)
    error('Please check ''discipline.txt'' has correct values for M and N.\nSince N is the total number of journal articles, N>=M');
end


% Average S value for all disciplines from Physical Sciences, Social
% Sciences, and Biological Sciences.

S_all = M_all./N_all;
sum_S = sum(S_all);
length_S = length(S_all);
avg_S = sum_S/length_S;

% Average C value for all disciplines from Physical Sciences, Social
% Sciences, and Biological Sciences.

C_all = S_all.*K_all;
length_C = length(C_all);
sum_C = sum(C_all);
avg_C = sum_C/length_C;

% K, M, N, S, C values for a particular disciplines line index

K = K_all(line_index);
M = M_all(line_index);
N = N_all(line_index);
S = M/N;
C = S*K;

% Finds average S and C values for Physical Sciences

S_tot_phys = S_all(34)+S_all(6)+S_all(36)+S_all(1)+S_all(27)+S_all(2)+S_all(39)+S_all(3)+S_all(4)+S_all(15)+S_all(14)+S_all(11)+S_all(29)+S_all(9);
S_avg_phys = S_tot_phys/14;

C_tot_phys = C_all(34)+C_all(6)+C_all(36)+C_all(1)+C_all(27)+C_all(2)+C_all(39)+C_all(3)+C_all(4)+C_all(15)+C_all(14)+C_all(11)+C_all(29)+C_all(9);
C_avg_phys = C_tot_phys/14;

% Finds average S and C values for Social Sciences

S_tot_soc = S_all(7)+S_all(12)+S_all(5)+S_all(21)+S_all(8)+S_all(10)+S_all(19)+S_all(28);
S_avg_soc = S_tot_soc/8;

C_tot_soc = C_all(7)+C_all(12)+C_all(5)+C_all(21)+C_all(8)+C_all(10)+C_all(19)+C_all(28);
C_avg_soc = C_tot_soc/8;

% Finds average S and C values for Biological Sciences

S_tot_bio = S_all(22)+S_all(20)+S_all(30)+S_all(17)+S_all(32)+S_all(33)+S_all(38)+S_all(16)+S_all(18)+S_all(23)+S_all(37)+S_all(35)+S_all(26)+S_all(24)+S_all(13)+S_all(25)+S_all(42)+S_all(31)+S_all(40)+S_all(41);
S_avg_bio = S_tot_bio/20;

C_tot_bio = C_all(22)+C_all(20)+C_all(30)+C_all(17)+C_all(32)+C_all(33)+C_all(38)+C_all(16)+C_all(18)+C_all(23)+C_all(37)+C_all(35)+C_all(26)+C_all(24)+C_all(13)+C_all(25)+C_all(42)+C_all(31)+C_all(40)+C_all(41);
C_avg_bio = C_tot_bio/20;

% Creates two plots to visualise the interdisciplinary strength of the
% selected discipline (S), and the cross factor (C) that takes into account
% the degree of discipline in the discipline network (i.e. various N's etc)

% The first plot shows the selected discipline's S value compared to the
% average of all the S values and the average for each of the three major
% categories.

subplot(1,2,1)
to_plot = [S, avg_S, S_avg_phys, S_avg_soc, S_avg_bio];
bar(diag(to_plot));
xlabel('Discipline v Overall Average v Category Averages');
ylabel('Relative Interdisciplinary Strength (S)');
title('Relative Interdisciplinary Strength (S)');
legend({'1: Discipline', '2: Overall Average', '3: Physical Sciences', '4: Social Sciences', '5: Biological Sciences'}, 'Location', 'northwest', 'FontSize', 6);
x0=200;
y0=100;
width=825;
height=600;
set(gcf,'units','points','position',[x0,y0,width,height]);
xticks([1 2 3 4 5]);
xticklabels({'1','2', '3', '4', '5'});

% The second plot shows the selected discipline's C value compared to the
% average of all the C values and the average for each of the three major
% categories.

subplot(1,2,2)
to_plot_C = [C, avg_C, C_avg_phys, C_avg_soc, C_avg_bio];
bar(diag(to_plot_C));
xlabel('Discipline v Overall Average v Category Averages');
ylabel('Cross Indicator (C)');
title('Cross Indicator (C)');
legend({'1: Discipline', '2: Overall Average', '3: Physical Sciences', '4: Social Sciences', '5: Biological Sciences'}, 'Location', 'northwest', 'FontSize', 6);
xticks([1 2 3 4 5]);
xticklabels({'1','2', '3', '4', '5'});

% Prints out a summary of all of the relevent information relating to the
% users selections.

fprintf(' The Relative Interdisciplinary Strength (S) = %.2f.', S)
fprintf(' The overall average S value is %.2f. The average S value for:\n Physical Sciences is %.2f, Social Sciences is %.2f, and Biological Sciences is %.2f.\n\n',avg_S, S_avg_phys, S_avg_soc, S_avg_bio); 
fprintf(' The Cross Indicator (C) = %.2f.', C)
fprintf(' The overall average C value is %.2f. The average C value for:\n Physical Sciences is %.2f, Social Sciences is %.2f, and Biological Sciences is %.2f.\n\n',avg_C, C_avg_phys, C_avg_soc, C_avg_bio); 

end

