% Name : - Yusif Ibrahimov

:- use_module(library(jpl)).
start :-sleep(0.3),	
		write('-----------------------------------------------------------------'),nl,
		sleep(0.3),
		write('*****************************************************************'),nl,
		sleep(0.1),
		write("###############||| Medical EXPERT SYSTEM |||#####################"),nl,
		sleep(0.3),
		write('*****************************************************************'),nl,
		sleep(0.3),
		write('-----------------------------------------------------------------'),nl,nl,nl,
		
		
        /*write("Please Enter your name : "),
        read(Patient),*/
		
		
		interface2.
		
		
       /* hypothesis(Patient,Disease),
        write(Patient),write(', your child '), write(' probably have '),write(Disease),write('.'),undo,
		nl,nl,nl,
		sleep(0.5),
		write('*****************************************************************'),nl,
		sleep(0.3),
		write("################||| See you soon |||#####################"),nl,
		sleep(0.3),
		write('*****************************************************************'),nl.*/
        
        
    symptom(Patient,fever) :-  verify(Patient," have a fever (y/n) ?").
 
    symptom(Patient,sores_blisters) :-  verify(Patient," have sores or blisters on the face and on the body such as the stomach chest or back (y/n) ?").
  
    symptom(Patient,infant_droll) :- verify(Patient,"Is your child an infant and is the infant
drooling or wanting to chew on things (y/n) ?").

    symptom(Patient,swollen_gums) :- verify(Patient," Does your child have red and swollen gums that may bleed when he or she brushes or flosses  (y/n) ?").
    
    symptom(Patient,honey_colored_crusting) :- verify(Patient," Does your child have honey colored crusting on the mouth that began as an itchy red sore or cluster of blisters (y/n) ?").
    
    symptom(Patient,red_purple_sore) :- verify(Patient,"  Does your child have a red or purple sore
or cluster of sores on a lip or the outer edge of the lips (y/n) ?").
	
    symptom(Patient,open_painful_sores) :- verify(Patient," Does your child have small open and painful sores that are white yellowish with a red border on the inner lips (y/n) ?").
 
    symptom(Patient,painful_bumps) :-verify(Patient," Does your child have small painful bumps on the tongue (y/n) ?").
   
    symptom(Patient,small_painless_fluid) :- verify(Patient,"  Does your child have a small painless fluid filled sac that may be bluish in color on the inner lips gums palate (y/n) ?").
  
    symptom(Patient,creamy_white_pathces) :-  verify(Patient," Does your child have creamy white patches on the tongue inner cheek or gums and are they painful when scraped (y/n) ?").
   
    symptom(Patient,swollen_tongue) :- verify(Patient,"Does your child have a sore or swollen
tongue or lips (y/n) ?").

  
    symptom(Patient,sore_throat) :- verify(Patient," Does your child have a sore throat and
painful blisters on the tongue or mouth or a rash on the
palms of hands
 (y/n) ?").

    symptom(Patient,red_sore_throat) :- verify(Patient,"  Does your child have a red and sore throat
with white patches on the throat or tonsils (y/n) ?").

    symptom(Patient,painful_sores) :- verify(Patient," Does your child have painful sores
swelling or redness on the inside of the cheeks and on
the gums
 (y/n) ?").

    
	
	/*symptom(_,"Sorry, I don't seem to be able to diagnose the disease.").*/

    hypothesis(Patient,chickenpox) :-
        symptom(Patient,fever),
        
        symptom(Patient,sores_blisters),
        write('Your child may
have CHICKENPOX, a contagious infection caused by
the varicella-zoster virus.'),
        nl,
        write('"URGENT Call your
childs doctor right away.'),
        nl.
    
        
     hypothesis(Patient,teething) :-
        not(symptom(Patient,fever)),
        not(symptom(Patient,sores_blisters)),
        symptom(Patient,infant_droll),
        write('Problem is teething, Use teething rings or let your baby chew on a wet washcloth. Rub your babys gums with a clean finger.Wipe off drool to prevent rashes on the babys face.Use childrens acetaminophen to relieve discomfort, but call your
doctor if the baby develops a fever.'),
        nl.
    
    hypothesis(Patient,gum_disease) :-
        symptom(Patient,swollen_gums),
        write('Your child may have GUM DISEASE,such as GINGIVITIS or PERIODONTITIS, usually caused by poor DENTAL HYGIENE'),
        nl,
        write('Take your child to the dentist. Good dental hygiene such as regular brushing, flossing, dental checkups and eating a healthy diet can prevent gum diseases.'),
        nl.
    hypothesis(Patient,impedigo) :-
        symptom(Patient,honey_colored_crusting),
        write('Your child may have IMPETIGO, a contagious skin infection.'),
        nl,
        write('Wash the area 3 or 4 times a day and apply an over-the-counter antibiotic ointment. If the sores spread or dont get better, call your childs doctor.'),
        nl.
    hypothesis(Patient,cold_sore) :-
        symptom(Patient,red_purple_sore),
        write('Your child probably has a COLD SORE caused by a virus called HERPES.'),
        nl,
        write('Cold sores will usually go away on their own. Apply an over-thecounter cold sore ointment for comfort. If the sores are painful, give your child an analgesic such as acetaminophen. Avoid pinching, picking or squeezing the blisters.'),
        nl.
    hypothesis(Patient,canker_sores) :-
        symptom(Patient,open_painful_sores),
        write('These may be CANKER SORES. They may be caused by viral infections'),
        nl,
        write('Canker sores usually heal on their own. To relieve discomfort, have your child rinse his or her mouth with salt water or diluted hydrogen peroxide, or apply an over-the-counter oral gel. You may also want to give your child an analgesic such as acetaminophen or ibuprofen to relieve pain. See your childs doctor if there is no improvement'),
        nl.
    hypothesis(Patient,papillae) :-
        symptom(Patient,open_painful_sores),
        write('These bumps are probably PAPILLAE (where the taste buds are) that have become INFLAMED due to an injury from a burn caused by hot food or drink or a self-inflicted bite'),
        nl,
        write('The inflammation and bump will usually go away on its own. Avoid feedingthe child hot, spicy and acidic foods. Give your child an analgesic such as acetaminophen or ibuprofen torelieve pain.'),
        nl.
    hypothesis(Patient,mucoceles) :-
        symptom(Patient,small_painless_fluid),
        write('These may be MUCOCELES, harmless cysts that may be caused by sucking mouth tissue between the teeth.'),
        nl,
        write('These cysts will usually go away on their own. To avoid infection, do not try to open the cyst. See your childs doctor if the cysts dont go away.'),
        nl.
    hypothesis(Patient,oral_thrush) :-
        symptom(Patient,creamy_white_pathces),
        write('This may be ORAL THRUSH caused by a fungus growing out of control.'),
        nl,
        write('This condition usually goes away on its own. Feed your child unsweetened yogurt with live cultures to restore the natural balance of bacteria in the body. Have your child gargle with salt water or use an analgesic such as acetaminophen to relieve pain. If the symptoms get worse or dont get better, see your childs doctor. He or she may prescribe an antifungal medicine.'),
        nl.
    hypothesis(Patient,chickenpox) :-
        symptom(Patient,swollen_tongue);
        symptom(Patient,sores_blisters),
        write('Your child may
have CHICKENPOX, a contagious infection caused by
the varicella-zoster virus.'),
        nl,
        write('"URGENT Call your
childs doctor right away.'),
        nl.
    hypothesis(Patient,hand_foot_and_mouth_disease) :-
        symptom(Patient,sore_throat),
        write('Your child may
have HAND-FOOT-AND-MOUTH DISEASE or
HERPANGINA, viral infections caused by the
COXSACKIE VIRUS'),
        nl,
        write('These illnesses must
run their course Avoid giving the child food and drinks
that irritate blisters such as spicy, salty or acidic foods.
Have your child drink plenty of cold fluids such as milk
and ice water. Feed your child non-irritating foods such
as ice cream. Have your child gargle with salt water to
relieve discomfort and give your child an analgesic
such as acetaminophen to relieve pain and reduce
fever. Call your childs doctor if symptoms get worse or
dont get any better'),
        nl.
    
    hypothesis(Patient,step_throat) :-
        symptom(Patient,red_sore_throat),
        write('Your child may
have STREP THROAT, a bacterial infection.'),
        nl,
        write('See your childs
doctor. He or she may want to do some tests and
prescribe antibiotics. Allow your child to get plenty of
rest and drink plenty of fluids. Give your child an
analgesic such as acetaminophen or ibuprofen to
relieve pain and reduce fever. Gargling with salt water
may relieve some discomfort.'),
        nl.
    hypothesis(Patient,gingivostomatitis) :-
        symptom(Patient,painful_sores),
        write('Your child may
have GINGIVOSTOMATITIS, a condition caused by a
viral infection of the HERPES or COXSACKIE
VIRUSES.'),
        nl,
        write('This condition usually
gets better on its own. Allow your child to drink plenty
of fluids and offer cold, soothing foods such as ice
cream or frozen yogurt. Give your child acetaminophen
to relieve pain and reduce fever. Gargling with salt
water may also relieve discomfort.'),
        nl.

        
    
        
	hypothesis(_,"disease. For more
information, please talk to your doctor. If you hink the
problem is serious, call your doctor right away").
	
    response(Reply) :-
        read(Reply),
        write(Reply),nl.
		
ask(Patient,Question) :-
	write(Patient),write(', do you'),write(Question),
	/*read(N),
	( (N == yes ; N == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail),*/
	
	interface(',',Patient,Question),
	write('Loading.'),nl,
	sleep(1),
	write('Loading..'),nl,
	sleep(1),
	write('Loading...'),nl,
	sleep(1),
    nl.
	
:- dynamic yes/1,no/1.		
	
verify(P,S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(P,S))).
	 
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.


pt(Patient):- 

		hypothesis(Patient,Disease),
		interface3(Patient,', your child probably have ',Disease,'.'),
        write(Patient),write(', your child probably have '),write(Disease),write('.'),undo,end.

end :-
		nl,nl,nl,
		sleep(0.7),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write("################||| THANK YOU FOR USE ME |||#####################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl.

interface(X,Y,Z) :-
	atom_concat(Y,X, FAtom),
	atom_concat(FAtom,Z,FinalAtom),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- MEDICAL EXPERT SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,FinalAtom], N),
	jpl_call(F, dispose, [], _), 
	write(N),nl,
	( (N == yes ; N == y)
      ->
       assert(yes(Z)) ;
       assert(no(Z)), fail).
	   		
interface2 :-
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- MEDICAL EXPERT SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,'Please, enter your name :'], N),
	jpl_call(F, dispose, [], _), 
	/*write(N),nl,*/
	(	N == @(null)
		->	write('you cancelled'),interface3('you cancelled. ','Thank you ','for use ','me.'),end,fail
		;	write("Please, enter your name : "),write(N),nl,pt(N)
	).
	
	
interface3(P,W1,D,W2) :-
	atom_concat(P,W1, A),
	atom_concat(A,D,B),
	atom_concat(B,W2,W3),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- MEDICAL EXPERT SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showMessageDialog, [F,W3], N),
	jpl_call(F, dispose, [], _), 
	/*write(N),nl,*/
	(	N == @(void)
		->	write('')
		;	write("")
	).
	
help :- write("To start the expert system please type 'start.' and press Enter key").