%Improved basic code found at https://www.codepoc.io/blog/prolog/5060/prolog-program-of-medical-diagnosis-system-of-childhood-decease
%Made it more user friendly
domains
    name = symbol
    Patient, Indication,Disease= string %to use readln and to pass multiple words (as a string)
    
predicates
    has(string,Disease) %function to ask if patient has the symptoms of given disease
    symptom(name,Indication) %To ask if patient has the 
    response(char)
    go
clauses
    go :-
        write("What is the patient's name? "),
        readln(Patient),
        has(Patient,Disease),
        write(Patient," probably has ",Disease,". "),nl.
        
    go :-
        write("Sorry, I can't " ),nl,
        write("diagnose the disease."),nl.
        
    symptom(Patient,Indication) :- %function to ask patient if he has the given indication/symptom
        write("Does ",Patient," have a ",Indication," (y/n) ? "),
        response(Reply),
        Reply='y'.
    
    %Reference:https://www.mayoclinic.org/diseases-conditions/measles/symptoms-causes/syc-20374857   
    has(Patient,measles) :-
        symptom(Patient,fever),
        symptom(Patient,"dry cough"),
        symptom(Patient,conjunctivitis),
        symptom(Patient,"runny nose"),
        symptom(Patient,rash).
    
	%Reference:https://www.healthline.com/health/rubella#symptoms
    has(Patient,"german measles(Rubella)") :-
        symptom(Patient,fever),
        symptom(Patient,headache),
        symptom(Patient,"runny nose"),
		symptom(Patient,"red eyes"),
		symptom(Patient,"muscle pain"),
        symptom(Patient,rash).
        
		
    has(Patient,flu) :-
        symptom(Patient,fever),
        symptom(Patient,headache),
        symptom(Patient,"body ache"),
        symptom(Patient,conjunctivitis),
        symptom(Patient,chills),
        symptom(Patient,"sore throat"),
        symptom(Patient,"runny nose"),
        symptom(Patient,cough).    
        
    has(Patient,"common cold") :-
        symptom(Patient,headache),
        symptom(Patient,sneezing),
        symptom(Patient,"sore throat"),
        symptom(Patient,"runny nose"),
        symptom(Patient,chills).
    %   https://www.mayoclinic.org/diseases-conditions/mumps/symptoms-causes/syc-20375361
    has(Patient,mumps) :-
        symptom(Patient,fever),
		symptom(Patient,headache),
		symptom(Patient,"muscle ache"),
		symptom(Patient,"weakness/fatigue"),
		symptom(Patient,"loss of appetite"),
		symptom(Patient,"pain while chewing/swallowing"),
        symptom(Patient,"swollen salivary glands").
    
    has(Patient,chicken_pox) :-
        symptom(Patient,fever),
        symptom(Patient,chills),
        symptom(Patient,"body ache"),
        symptom(Patient,rash).
    
    has(Patient,measles) :-
        symptom(Patient,cough),
        symptom(Patient,sneezing),
        symptom(Patient,"runny nose").
        
    response(Reply) :-
        readchar(Reply),
        write(Reply),nl.