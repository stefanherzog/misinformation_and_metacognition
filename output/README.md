# Output


Save processed data files here.


# Variable descriptions


## Statements

- `statement` = unique statement identifier (w = wave; T = true; F = false)
- `wave` = wave in which the statement was administered (waves 1 - 12)
- `rFavor` = Republicans: Which party benefits? (1 = Democrats; -1 = Republicans; 0 = neutral)
- `dFavor` = Democrats: Which party benefits? (1 = Democrats; -1 = Republicans; 0 = neutral)
- `pFavor`= Overall: Which party benefits? (1 = Democrats; -1 = Republicans; 0 = neutral)
- `veracity` = statement ground truth (FALSE or TRUE)
- `statements` = verbatim statement as administered in the study
- `url` = URL from which the statement originated
- `satire` = statement originating in satire (0 = no; 1 = yes)


## Task

- `id` = unique participant identifier
- `statement` = unique statement identifier (w = wave; T = true; F = false)
- `wave` = wave in which the statement was administered (waves 1 - 12)
- `rating` = decision and confidence (1 = Definitely True; 2 = Probably True; 3 = Probably False; 4 = Definitely False)
- `truth` = statement ground truth (0 = false; 1 = true)
- `dec` = decision (0 = 'false'; 1 = 'true')
- `dec_correct` = decision scoring (0 = incorrect decision; 1 = correct decision)
- `conf_high` = confidence in decision (0 = low ['Probably']; 1 = high ['Definitely'])
- `recog` = seen or heard before (0 = 'no'; 1 = 'yes')
- `n_waves` = number of waves completed
- `n_statements` = number of statements completed
- `pFavor`= Overall: Which party benefits? (1 = Democrats; -1 = Republicans; 0 = neutral)
- `satire` = statement originating in satire (0 = no; 1 = yes)
- `congruent_party` = statement congruency as a combination of a participant's political party and statement slant (1 = congruent; 2 = incongruent; 3 = neutral; 4 = neither congruent, incongruent, or neutral)
- `congruent_ideology` = statement congruency as a combination of a participant's political ideology and statement slant (1 = congruent; 2 = incongruent; 3 = neutral; 4 = neither congruent, incongruent, or neutral)
- `congruent_truth_party` = statement congruency as a combination of a participant's political party, statement slant, and statement veracity (1 = congruent; 2 = incongruent; 3 = neutral; 4 = neither congruent, incongruent, or neutral)
- `congruent_truth_ideology` = statement congruency as a combination of a participant's political ideology, statement slant, and statement veracity (1 = congruent; 2 = incongruent; 3 = neutral; 4 = neither congruent, incongruent, or neutral)
- `dummy` = dummy variable (always 1)


## Participants

- `id` = unique participant identifier
- `age` = participant's age
- `gender` = participant's gender (female; male)
- `educ` = participant's education (1 = No high school degree; 2 = High school graduate; 3 = Some college, but no degree (yet); 4 = 2-year college degree; 5 = 4-year college degree; 6 = Postgraduate degree)
- `party` = 3-point party ID (Democrat; Republican; Independent; Other; Not sure)
- `ideology_index` = ideology index computed as an average of participants’ political, economic, and social ideology (1 = Very Liberal; 2 = Liberal; 3 = Somewhat Liberal; 4 = Moderate or Middle of the Road; 5 = Somewhat Conservative; 6 = Conservative; 7 = Very Conservative)
- `ideology_index_rounded` = rounded ideology index computed as an average of participants’ political, economic, and social ideology (1 = Very Liberal; 2 = Liberal; 3 = Somewhat Liberal; 4 = Moderate or Middle of the Road; 5 = Somewhat Conservative; 6 = Conservative; 7 = Very Conservative)
- `ideology` = ideology as a grouped rating of participants’ ideology index (liberal = 1-3, moderate = 4, conservative = 5-7)
- `faith_intuition` = participants' faith in intuition for facts (1 = Strongly disagree; 2 = Disagree; 3 = Neither agree nor disagree; 4 = Agree; 5 = Strongly agree)
- `need_evidence` = participants' need for evidence (1 = Strongly disagree; 2 = Disagree; 3 = Neither agree nor disagree; 4 = Agree; 5 = Strongly agree)
- `truth_political` = participants' views that truth is political (1 = Strongly disagree; 2 = Disagree; 3 = Neither agree nor disagree; 4 = Agree; 5 = Strongly agree)
