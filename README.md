# Quantitative Analysis of the Interdisciplinarity of Applied Mathematics  

# MATLAB - Jon Peppinck

Please view the word document for the complete report.

Start: The main program is written in 'Final_Project.m'. The focus of this project has been discussed 

in both the program planning and Matlab comment annotations. Please ensure 'Final_Project.m', 

'KMNSC_values.m', and 'discipline.txt', are all in the same working directory.

Major Category: Input will be required from the user. The user will be presented a menu and will be 

required to choose between 'Physical Sciences', 'Social Sciences', or 'Biological Sciences'.  Their 

major discipline choice will be stored as it is of interest for later. An error message will occur if the 

user exits the window.

Major Strand: Since there is 42 disciplines to choose from in total, the disciplines have been further 

categorised into their major strands.  Depending on the users major category choice, a secondary 

menu will be created based on the following scenarios;

Physical sciences has been categorised into two main strands: 

1. Math, Physics, Engineering, and Computer Science.

2. Chemistry, Earth, and Environmental Science

The social science had the least amount of disciplines and was able to fit into one window.

Biological sciences has been categorised into two main strands:

1. Predominantly Biology

2. Biology Relating to Chemistry, Physics, Health, or Neuroscience 

The chosen strand is stored as it is of interest for later. An error message will occur if the user exits 

the window.

Discipline: There is 42 disciplines that the use could possibly be interested in (Please see figure 4). 

These disciplines have been categorised as outlined above. The chosen discipline is stored as it is of

interest for later. An error message will occur if the user exits the window
 
Fn:  KMNSC_values: The function KMNSC_values has been saved in a separate script 

'KMNSC_values.m'. KMNSC_values opens data from 'discipline.txt' (Appendix A).  If there is any 

reason why 'discipline.txt' does not open, an error message will be displayed.  KMNSC_values then 

creates three vectors for the K, M, and N values. It then closes 'discipline.txt' as all of the information

required has been retrieved. If there is a problem closing the file an error message will be displayed.

Additionally, if the data from 'discipline.txt' has a different number of entries for either K, M, or N, 

this would influence the data, this the user will be prompted to check/adjust the input. The function 

also takes into consideration if the file has an invalid entry. Specifically, If M > N, this would result in

an error since the number of interdisciplinary papers in the discipline cannot exceed that of the 

total number of papers in the discipline. The average interdisciplinary strength (S) and the average 

cross indicator (C) will be calculated for: The average overall for all disciplines, and the average for 

physical sciences, social sciences, and biological sciences. The S and C value will also be calculated

for the discipline the user has selected.

Bar Charts: The user will be presented with two bar charts related to the discipline they have 

selected. The first will display the comparison of all of the S values, and the second displays a

comparison of all of the C values. The window size and legend has been adjusted to suit the 

output.

Text Summary: The user will be presented with all of the relevant data for their selections. Once

the program has been executed, it will output all of their selections and the corresponding S and C

values.

End: The user can view the relative interdisciplinary strength (S), the cross indicator (C), for the 

discipline they have selected. The user can then compare this to the bar charts and text summary

to draw conclusions relating to the research question of "How interdisciplinary is your discipline?"

