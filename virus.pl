diagnose :-
runAssessment,
scoring.

runAssessment :-
checkGender,
checkAge,
checkVulnerable,
checkSymptom(fever),
checkSymptom(cough),
checkSymptom(tiredness),
checkSymptom(aches),
checkSymptom(throat),
checkSymptom(diarrhoea),
checkSymptom(conjunctivitis),
checkSymptom(headache),
checkSymptom(smell),
checkSymptom(nose),
checkSymptom(breathing),
checkSymptom(chest),
checkSymptom(speech),
checkExposure(public),
checkExposure(washed),
checkExposure(symptoms),
checkExposure(positive).


checkGender :-
	write('Are you biologically male (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(gender(male));
	assert(gender(female))).

checkAge :-
	write('Are you over 70 years old (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(age(over));
	assert(age(under))).


checkVulnerable :-
	write('Do you have any pre-existent health conditions (e.g. hypertension, diabetes, cardiovascular disease, chronic respiratory disease and cancer) (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(vulnerable(vulnerable));
	assert(vulnerable(healthy))).

checkSymptom(fever) :-
	write('Do you have a fever (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(fever));
	assert(symptom(nofever))).

checkSymptom(cough) :-
	write('Do you have a persistent dry cough (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(cough));
	assert(symptom(nocough))).

checkSymptom(tiredness) :-
	write('Do you feel tiredness (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(tiredness));
	assert(symptom(notiredness))).

checkSymptom(aches) :-
	write('Do you have any aches and/or pains (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(aches));
	assert(symptom(noaches))).

checkSymptom(throat) :-
	write('Do you have a sore throat (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(throat));
	assert(symptom(nothroat))).

checkSymptom(diarrhoea) :-
	write('Have you had any diarrhoea (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(diarrhoea));
	assert(symptom(nodiarrhoea))).

checkSymptom(conjunctivitis) :-
	write('Do you have conjunctivitis (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(conjunctivitis));
	assert(symptom(noconjunctivitis))).

checkSymptom(headache) :-
	write('Do you have a headache (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(headache));
	assert(symptom(noheadache))).

checkSymptom(smell) :-
	write('Have you had either total or partial loss of sense of smell and/or taste (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(smell));
	assert(symptom(nosmell))).

checkSymptom(nose) :-
	write('Do you have a running nose (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(nose));
	assert(symptom(nonose))).

checkSymptom(breathing) :-
	write('Do you have any difficulty breathing or shortness of breath (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(breathing));
	assert(symptom(nobreathing))).

checkSymptom(chest) :-
	write('Do you have any chest pain or pressure (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(chest));
	assert(symptom(nochest))).

checkSymptom(speech) :-
	write('Do you have any loss of speech and/or movement (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(symptom(speech));
	assert(symptom(nospeech))).


checkExposure(public) :-
	write('In the last 14 days, have you been in any public areas where you could have touched contaminated surfaces (y or n) ?'),
	read(Reply),
	nl,
	( Reply == y
	->
	assert(exposure(public));
	assert(exposure(nopublic))).

checkExposure(washed) :-
	write('Have you been regularly washing your hands after coming into contact with potentially contaminated surfaces (y or n) ?'),
	read(Reply),
	nl,
	( Reply == y
	->
	assert(exposure(washed));
	assert(exposure(nowashed))).


checkExposure(symptoms) :-
	write('In the last 14 days, have you been in contact with anyone who had symptoms of the virus (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(exposure(symptoms));
	assert(exposure(nosymptoms))).

checkExposure(positive) :-
	write('In the last 14 days, have you been in contact with anyone who has tested positive for the virus (y or n) ?'),
    read(Reply),
	nl,
	( Reply == y
	->
	assert(exposure(positive));
	assert(exposure(nopositive))).


scoring :-
	(gender( male) -> Score1 is 1; Score1 is 0),
	(age( over) -> Score2 is 5; Score2 is 0),
	(vulnerable(vulnerable) -> Score3 is 5; Score3 is 0),
	(symptom(fever) -> Score4 is 2; Score4 is 0),
	(symptom(cough) -> Score5 is 2; Score5 is 0),
	(symptom(tiredness) -> Score6 is 2; Score6 is 0),
	(symptom(aches) -> Score7 is 1; Score7 is 0),
	(symptom(throat) -> Score8 is 1; Score8 is 0),
	(symptom(diarrhoea) -> Score9 is 1; Score9 is 0),
	(symptom(conjunctivitis) -> Score10 is 1; Score10 is 0),
	(symptom(headache) -> Score11 is 1; Score11 is 0),
	(symptom(smell) -> Score12 is 1; Score12 is 0),
	(symptom(nose) -> Score13 is 1; Score13 is 0),
	(symptom(breathing) -> Score14 is 1; Score14 is 0),
	(symptom(chest) -> Score15 is 1; Score15 is 0),
	(symptom(speech) -> Score16 is 1; Score16 is 0),
	(exposure(public) -> Score17 is 2; Score17 is 0),
	(exposure(washed) -> Score18 is 0; Score18 is 1),
	(exposure(symptoms) -> Score19 is 2; Score19 is 0),
	(exposure(positive) -> Score20 is 5; Score20 is 0),
	Likelihood is Score4 + Score5 + Score6
				  + Score7 + Score8 + Score9
				  + Score10 + Score11 + Score12
				  + Score13 + Score14 + Score15
				  + Score16 + Score17 + Score18
				  + Score19 + Score20,
	Risk is Score1 + Score2 + Score3,
	write(Likelihood),
	nl,
	write(Risk),
	nl,
	(Likelihood >= 6 -> write('It is highly likely that you have contracted the virus') ;
	 Likelihood >= 3, Likelihood < 6 -> write('It is likely that you have contracted the virus') ;
	 Likelihood >= 1, Likelihood < 3 -> write('It is less likely that you have contracted the virus') ;
	 Likelihood == 0 -> write('It is unlikely that you have contracted the virus') ; write('It is not possible to tell if you have contracted the virus')),
	nl,
	write('Advice: '),
	nl,
	(Score14 == 1 -> write('You have severe symptoms, please seek medical attention immediately.') ;
	 Score15 == 1 -> write('You have severe symptoms, please seek medical attention immediately.') ;
	 Score16 == 1 -> write('You have severe symptoms, please seek medical attention immediately.') ;
	 Likelihood == 0, Risk == 0 -> write('Stay safe and continue practicing careful measures.') ;
	 Likelihood == 0, Risk == 0 -> write('Stay safe and continue practicing careful measures.') ;
	 Likelihood >= 1, Likelihood < 3, Risk == 0 -> write('Stay safe and continue to monitor yourself.') ;
	 Likelihood >= 3, Likelihood < 6, Risk == 0 -> write('Work from home and try to remain indoors and procure a test.') ;
	 Likelihood >= 6, Risk == 0 -> write('Self isolate immediately and procure a test.') ;
	 Likelihood >= 1, Likelihood < 3, Risk == 1 -> write('Stay safe and continue to monitor your symptoms.') ;
	 Likelihood >= 1, Likelihood < 3, Risk > 1 -> write('Stay safe and continue to monitor your symptoms.') ;
	 Likelihood >= 1, Likelihood < 3, Risk > 1 -> write('Stay safe and continue to monitor your symptoms.') ;
	 Likelihood >= 3, Likelihood < 6, Risk > 1 -> write('Seek medical advice immediately.') ;
	 Likelihood >= 6, Risk > 1 -> write('Seek medical advice immediately.'); write('No advice available.')).