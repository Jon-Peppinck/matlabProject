% Quantitative Analysis of the Interdisciplinarity of Applied Mathematics  
% MATLAB - Jon Peppinck
% _________________________________________________

% This program will allow the user to select which scientific discipline
% they are interested in and plot the interdisciplinary strength (S) and
% the cross indicator (C) in comparison to the average of all the data and
% also the average of the three major disciplines. This will give the user
% an indication of how much their selected discipline depends on others.

% The data is based on a corpus of journal articles that have been analysed
% in the peer-reviewed journal article "Quantitative Analysis of the 
% Interdisciplinarity of Applied Mathematics" (Xie Z, Duan X, Ouyang Z, 
% Zhang P (2015). PLoS ONE 10(9): e0137424). 
% Available from: https://doi.org/10.1371/journal.pone.0137424

% Key information has been recorded in the file 'discipline.txt'

% The three major disciplines the user has to choose from are:
% 1. Physical Sciences, 2. Social Sciences, and 3. Biological Sciences.
% Their major discipline choice will be stored as it is of interest for later.
% An error message will occur if the user exits the window

choices = {'Physical Sciences', 'Social Sciences', 'Biological Sciences'};
discipline = menu('What category does your discipline of interest classify as?', choices);
if discipline ~= 0
    major_discipline_choice = choices{discipline};
elseif discipline == 0
    error('Major discipline not selected. Please start again.\n');
end

% There are many choices within Physical Sciences, so the field has been
% categorised further into two main strands:
% 1. Math, Physics, Engineering, CS, 2. Chemistry, Earth, Environmental
% The chosen strand is stored as it is of interest for later.
% An error message will occur if the user exits the window 

if discipline == 1
    physical_sci_choices = {'Mathematics, Physics, Engineering, or Computer Science', 'Chemistry, Earth or Environemental Science'};
    physical_sci_discipline = menu('What subcategory does your discipline of interest classify as?', physical_sci_choices);  
    if physical_sci_discipline ~= 0
        major_discipline_strand_choice = physical_sci_choices{physical_sci_discipline};
    elseif physical_sci_discipline == 0
        error('Major discipline strand not selected. Please start again.\n');
    end

% A specific discipline is chosen from the first main strand in the physical science
% 1. Math, Physics, Engineering, CS
% The chosen discipline is stored as it is of interest for later.
% An error message will occur if the user exits the window      
    
    if physical_sci_discipline == 1
        ps_choice1 = {'Physical Science', 'Applied Physical Science', 'Mathematics', 'Applied Mathematics', 'Physics', 'Statistics', 'Astronomy', 'Computer Science', 'Engineering'};
        ps_choice1_discipline = menu('Please select your discipline of interest.', ps_choice1);
        if ps_choice1_discipline ~= 0
            discipline_selected = ps_choice1{ps_choice1_discipline};
        elseif ps_choice1_discipline == 0
            error('Discipline of interest not selected. Please start again.\n');
        end

% The data has been written in the file 'discipline.txt'. This text file
% contains values for all of the different disciplines. Of interest is:

% K: Degree of Discipline in Network (Factor)
% M: Number of interdisciplinary papers in discipline
% N: Total number of papers in Discipline

% The function KMNSC_values has been created to avoid the tedious task of
% repetitive data entry. This function also calculates:
% S: Relative Disciplinary Strength (M/N)
% C: Cross Indicator (S*K)

% The K, M, N, S, C values for the selected discipline choice will be
% utilised later.

        if ps_choice1_discipline == 1
            KMNSC_values(34);
                     
        elseif ps_choice1_discipline == 2
            KMNSC_values(6);

        elseif ps_choice1_discipline == 3
            KMNSC_values(36);

         elseif ps_choice1_discipline == 4
            KMNSC_values(1);
 
        elseif ps_choice1_discipline == 5
            KMNSC_values(27);

        elseif ps_choice1_discipline == 6
            KMNSC_values(2);

        elseif ps_choice1_discipline == 7
            KMNSC_values(39);

        elseif ps_choice1_discipline == 8
            KMNSC_values(3);

        elseif ps_choice1_discipline == 9
            KMNSC_values(4);
    
        end

% A specific discipline is chosen from the second strand in the physical science
% 2. Chemistry, Earth, Environmental
% The chosen discipline is stored as it is of interest for later.
% An error message will occur if the user exits the window         
        
    elseif physical_sci_discipline == 2
        ps_choice2 = {'Chemistry', 'Earth, Atmospheric and Planetary Sciences', 'Geology', 'Geophysics', 'Environmental Science'};
        ps_choice2_discipline = menu('Please select your discipline of interest.', ps_choice2);
        if ps_choice2_discipline ~= 0
            discipline_selected = ps_choice2{ps_choice2_discipline};
        elseif ps_choice2_discipline == 0
            error('Discipline of interest not selected. Please start again.\n');
        end
        
% The K, M, N, S, C values for the selected discipline choice will be
% utilised later.
       
        if ps_choice2_discipline == 1
            KMNSC_values(15);

        elseif ps_choice2_discipline == 2
            KMNSC_values(14);
            
        elseif ps_choice2_discipline == 3
            KMNSC_values(11);

        elseif ps_choice2_discipline == 4
            KMNSC_values(29);

        elseif ps_choice2_discipline == 5
            KMNSC_values(9);       
            
        end
    end

% The major strand of Social Sciences can fit its specific disciplines of
% choice into one menu.
% The chosen discipline and major strand is stored as it is of interest for later.
% An error message will occur if the user exits the window 
    
elseif discipline == 2
    social_sci_choices = {'Social Science', 'Sustainability Science', 'Economic Science', 'Political Science', 'Psychological and Cognitive Science', 'Anthropology', 'Psychology', 'Agricultural Science'};
    social_sci_discipline = menu('What subcategory does your discipline of interest classify as?', social_sci_choices);
    if social_sci_discipline ~= 0
        major_discipline_strand_choice = choices{discipline};
        discipline_selected = social_sci_choices{social_sci_discipline};
    elseif social_sci_discipline == 0
        error('Discipline of interest not selected. Please start again.\n');
    end

% The K, M, N, S, C values for the selected discipline choice will be
% utilised later.

    if social_sci_discipline == 1
        KMNSC_values(7);

    elseif social_sci_discipline == 2
        KMNSC_values(12);
    
    elseif social_sci_discipline == 3
        KMNSC_values(5);

    elseif social_sci_discipline == 4
        KMNSC_values(21);

    elseif social_sci_discipline == 5
        KMNSC_values(8);

    elseif social_sci_discipline == 6
        KMNSC_values(10);

    elseif social_sci_discipline == 7
        KMNSC_values(19);

    elseif social_sci_discipline == 8
        KMNSC_values(28);
    
    end

% There are many choices within Biological Sciences, so the field has been
% categorised further into two main strands:
% 1. Predominately Biology 2. Biology Relating to Chemistry, Physics,
% Health, or Neuroscience.
% The chosen strand and discipline is stored as it is of interest for later.
% An error message will occur if the user exits the window     
    
elseif discipline == 3
    bio_sci_choices = {'Predominantly Biology', 'Biology Relating to Chemistry, Physics, Health, or Neuroscience'};
    bio_sci_discipline = menu('What subcategory does your discipline of interest classify as?', bio_sci_choices);
    if bio_sci_discipline ~= 0
        major_discipline_strand_choice = bio_sci_choices{bio_sci_discipline};
    elseif bio_sci_discipline == 0
        error('Major discipline strand not selected. Please start again.\n');
    end

% A specific discipline is chosen from the first main strand in biological science
% 1. Predominantly Biology
% The chosen discipline is stored as it is of interest for later.
% An error message will occur if the user exits the window     
    
    if bio_sci_discipline == 1
        bio_choice1 = {'Biological Science', 'Applied Biological Science', 'Genetics', 'Evolution', 'Cell Biology', 'Microbiology', 'Plant Biology', 'Ecology', 'Systems Biology', 'Population Biology', 'Developmental Biology', 'Physiology'};
        bio_choice1_discipline = menu('Please select your discipline of interest.', bio_choice1);
        if bio_choice1_discipline ~= 0
            discipline_selected = bio_choice1{bio_choice1_discipline};
        elseif bio_choice1_discipline == 0
            error('Discipline of interest not selected. Please start again.\n');
        end
        
% The K, M, N, S, C values for the selected discipline choice will be
% utilised later.

            if bio_choice1_discipline == 1
                KMNSC_values(22);

            elseif bio_choice1_discipline == 2
                KMNSC_values(20);

            elseif bio_choice1_discipline == 3
                KMNSC_values(30);

            elseif bio_choice1_discipline == 4
                KMNSC_values(17);
                
            elseif bio_choice1_discipline == 5
                KMNSC_values(32);

            elseif bio_choice1_discipline == 6
                KMNSC_values(33);

            elseif bio_choice1_discipline == 7
                KMNSC_values(38);

            elseif bio_choice1_discipline == 8
                KMNSC_values(16);
                
            elseif bio_choice1_discipline == 9
                KMNSC_values(18);

            elseif bio_choice1_discipline == 10
                KMNSC_values(23);

            elseif bio_choice1_discipline == 11
                KMNSC_values(37);
                
            elseif bio_choice1_discipline == 12
                KMNSC_values(35);

            end

    elseif bio_sci_discipline == 2
        bio_choice2 = {'Biochemistry', 'Biophysics', 'Biophysics and Computational Biology', 'Neuroscience', 'Neurobiology', 'Medical Science', 'Pharmacology', 'Immunology'};
        bio_choice2_discipline = menu('Please select your discipline of interest.', bio_choice2);
        if bio_choice2_discipline ~= 0
            discipline_selected = bio_choice2{bio_choice2_discipline};
        elseif bio_choice2_discipline == 0
            error('Discipline of interest not selected. Please start again.\n');
        end
        
% The K, M, N, S, C values for the selected discipline choice will be
% utilised later.

            if bio_choice2_discipline == 1
                KMNSC_values(26);
                
            elseif bio_choice2_discipline == 2
                KMNSC_values(24);       
     
            elseif bio_choice2_discipline == 3
                KMNSC_values(13);  

            elseif bio_choice2_discipline == 4
                KMNSC_values(25);

            elseif bio_choice2_discipline == 5
                KMNSC_values(42);  

            elseif bio_choice2_discipline == 6
                KMNSC_values(31);

            elseif bio_choice2_discipline == 7
                KMNSC_values(40);

            elseif bio_choice2_discipline == 8
                KMNSC_values(41); 

            end
    end

end

% Prints summary message for selected choices

fprintf(' The Relative Interdisciplinary Strength (S) for %s  in %s\n is shown in - Figure 1, Subplot 1 - 1: Discipline.', discipline_selected, major_discipline_strand_choice);
fprintf(' This is Compared to the Average S value of the;\n %s - 2: Overall Average, 3: Physical Sciences, 4: Social Sciences, and 5: Biological Sciences.\n\n', major_discipline_choice);
fprintf(' The Cross Indicator (C) for %s in %s\n is shown in - Figure 1, Subplot 2 - 1: Discipline.', discipline_selected, major_discipline_strand_choice);
fprintf(' This is Compared to the Average C value of the;\n %s - 2: Overall Average, 3: Physical Sciences, 4: Social Sciences, and 5: Biological Sciences.\n', major_discipline_choice);