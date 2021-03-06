scenario = "PerceptionDeplacement";
active_buttons =20;
button_codes = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20;
response_matching = simple_matching;
default_background_color = 255,255,255;

#-----------------Définition des variables--------------------------------------
begin;
#-----------------Chargement des sons--------------------------------

sound {wavefile { filename = "song.wav";};} sound1;
sound {wavefile { filename = "song.wav";};} sound2;
sound { wavefile { filename = "1000ms/audioMosquito24_0.wav";};} sCalib;
array{
sound { wavefile { filename = "1000ms/audioMosquito0_m5.wav";};} sound0_m5;
sound { wavefile { filename = "1000ms/audioMosquito3_m4.wav";};} sound3_m4;
sound { wavefile { filename = "1000ms/audioMosquito4_m2.wav";};} sound4_m2;
sound { wavefile { filename = "1000ms/audioMosquito5_0.wav";};} sound5_0;
sound { wavefile { filename = "1000ms/audioMosquito4_2.wav";};} sound4_2;
sound { wavefile { filename = "1000ms/audioMosquito3_4.wav";};} sound3_4;
sound { wavefile { filename = "1000ms/audioMosquito0_5.wav";};} sound0_5;
sound { wavefile { filename = "1000ms/audioMosquito0_m8.wav";};} sound0_m8;
sound { wavefile { filename = "1000ms/audioMosquito4_m7.wav";};} sound4_m7;
sound { wavefile { filename = "1000ms/audioMosquito7_m4.wav";};} sound7_m4;
sound { wavefile { filename = "1000ms/audioMosquito8_0.wav";};} sound8_0;
sound { wavefile { filename = "1000ms/audioMosquito7_4.wav";};} sound7_4;
sound { wavefile { filename = "1000ms/audioMosquito4_7.wav";};} sound4_7;
sound { wavefile { filename = "1000ms/audioMosquito0_8.wav";};} sound0_8;
sound { wavefile { filename = "1000ms/audioMosquito0_m14.wav";};} sound0_m14;
sound { wavefile { filename = "1000ms/audioMosquito7_m12.wav";};} sound7_m12;
sound { wavefile { filename = "1000ms/audioMosquito12_m7.wav";};} sound12_m7;
sound { wavefile { filename = "1000ms/audioMosquito14_0.wav";};} sound14_0;
sound { wavefile { filename = "1000ms/audioMosquito12_7.wav";};} sound12_7;
sound { wavefile { filename = "1000ms/audioMosquito7_12.wav";};} sound7_12;
sound { wavefile { filename = "1000ms/audioMosquito0_14.wav";};} sound0_14;
sound { wavefile { filename = "1000ms/audioMosquito0_m24.wav";};} sound0_m24;
sound { wavefile { filename = "1000ms/audioMosquito12_m21.wav";};} sound12_m21;
sound { wavefile { filename = "1000ms/audioMosquito21_m12.wav";};} sound21_m12;
sound { wavefile { filename = "1000ms/audioMosquito24_0.wav";};} sound24_0;
sound { wavefile { filename = "1000ms/audioMosquito21_12.wav";};} sound21_12;
sound { wavefile { filename = "1000ms/audioMosquito12_21.wav";};} sound12_21;
sound { wavefile { filename = "1000ms/audioMosquito0_24.wav";};} sound0_24;
sound { wavefile { filename = "1000ms/audioMosquito0_m41.wav";};} sound0_m41;
sound { wavefile { filename = "1000ms/audioMosquito21_m36.wav";};} sound21_m36;
sound { wavefile { filename = "1000ms/audioMosquito36_m20.wav";};} sound36_m20;
sound { wavefile { filename = "1000ms/audioMosquito41_0.wav";};} sound41_0;
sound { wavefile { filename = "1000ms/audioMosquito36_20.wav";};} sound36_20;
sound { wavefile { filename = "1000ms/audioMosquito21_36.wav";};} sound21_36;
sound { wavefile { filename = "1000ms/audioMosquito0_41.wav";};} sound0_41;
}sounds;
#sound0_5 sound0_41 sound24_0 sound0_m41 sound0_m5 
#------------------Zones de textes---------------------------------
text {
	caption = "Préparez-vous";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecranDebut;

text {
	caption = "";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecranEtape;

text {
	caption = "1er son";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecran1SonMoustique;

text {
	caption = "Deplacement";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecranDeplacement;
text {
	caption = "2ème son";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecran2SonMoustiqueApresDeplacement;

text {
	caption = "Quel mouvement a fait le moustique?";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecranQuestion;

text {
	caption = " Sur une echelle de 1 à 9, êtes vous confiant de vos dernières réponses?\n 1 : Pas confiant du tout - 9 : Certain ";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecranConfianceQuestion;

text {
	caption = "Fin de l'étape";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecranFin;

text {
	caption ="";
	font_color = 0,0,0;
} pos;

text {
	caption = "A quel endroit était le moustique?";
	font_color = 0,0,0;
	font_size = 40;
} textPos;
#-------------- Schéma réponse -----------
bitmap { filename = "Preparation/im4Emotionnelle.png";} prepQuestionEmotionnelle;
bitmap { filename = "Preparation/im4.png";} prepQuestion;
bitmap { filename = "picMovementText4.png";} b4;
bitmap { filename = "picMovementText.png";} b8;
bitmap { filename = "Preparation/Question.png";} qN;
bitmap { filename = "Preparation/QuestionEmotionnelle.png";} qE;
picture {
	bitmap { filename = "Question.png";};
	x = 0; y = 0;
	
	#Texte pour indiquer la position des sons produits
	text { caption = " "; font_size = 20; font_color = 0,0,255; transparent_color = 255,255,255;};
	x = 0; y = 0;
	text { caption = " "; font_size = 20; font_color = 0,0,255; transparent_color = 255,255,255;};
	x = 0; y = 0;
	
	text { caption = "o"; font_size = 20; font_color = 0,0,0; transparent_color = 255,255,255;};
	x = 0; y = 0;
	text pos;
	x = 0; y = -300;
}picPosition;
#-------------- Trials -------------------
#Trial choix type expé
trial{
	stimulus_event{
		picture{
			text{
				caption = "Choisissez le type d'experience :\n 1 : Réaction au mouvement\n 2 : Réaction émotionnelle";
				font_color = 0,0,0;
				font_size = 40;
			};
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialChoix;
#Trial préparation
trial{
	picture{	bitmap { filename = "Preparation/im1.png";};x = 0 ; y = 0;};
	time = 0;	
	duration = response;
	
	
	picture{bitmap { filename = "Preparation/im2.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
	stimulus_event{
		sound sound14_0;
		response_active = true;
		duration = response;
		deltat = 0;
	};
	
	stimulus_event{
		sound sound8_0;
		response_active = true;
		duration = response;
		deltat = 10;
	};
	picture{bitmap { filename = "Preparation/im3.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
	
	picture{	
		bitmap { 
			filename = "Preparation/im4.png";
		};
	x = 0 ; y = 0;
	}picPreparationQuestion;
	deltat = 0;
	duration = response;
	
	picture{	bitmap { filename = "Preparation/im5.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
}trialPreparation;

#Trial calibration
trial {
	stimulus_event{
		picture{
			bitmap { filename = "Preparation/im6.png";};
			x = 0; y = 0;
		};
		
		duration = 1500;
		time = 0;
	};
}trialCalibration;

#Trial avec sons
trial {
	#Ecran démarrage de l'essai
	picture {
		text ecranDebut;
		x = 0; y = 0;
		text ecranEtape;
		x = 0; y = -70;
	};
	time = 0;
	
	#Son pré-mouvement
	stimulus_event{
		sound sound1;
		time = 1000;
		duration = 1000;
	}s1;
	
	picture{
		text ecran1SonMoustique;
		x = 0; y = 0;
	};
	deltat = 0;
	
	picture{
		text ecranDeplacement;
		x = 0; y = 0;
	};
	time = 2000;
	duration = 500;
	
	#Son post-mouvement
	stimulus_event{
		sound sound2;
		time = 2500;
		duration = 1000;
	}s2;
	
	picture{
		text ecran2SonMoustiqueApresDeplacement;
		x = 0; y = 0;
	};
	duration = 1000;
	deltat = 0;
		
}trialDeplacement;


trial{
	#stimulus_event{
	#	picture picPosition;
	#	response_active = true;
	#	target_button = 10;
	#	duration = response;
	#	time = 0;
	#}eventPosition;
	picture picPosition;
	time = 0;	
	
} trialPosition;
#Trials de calibration de niveaux de son
trial{
	sound sCalib;
	time = 0;
	duration = 1000;
	picture{
		text{
			caption = "Appuyez sur [Entrée] dès que vous entendez un son";
			font_color = 0,0,0;
			font_size = 40;
		}t;
		x = 0; y = 0;
	};
	deltat=0;
}
trialCalib;

trial{
	stimulus_event{
		picture{
			text{
				caption = "Nous allons calibrer l'experience en fonction de vos capacitées auditives\nConcentrez vous sur ce que vous entendez et suivez les instructions\nAppuyez sur [Entrée] pour commencer la calibration";
				font_color = 0,0,0;
				font_size = 40;
			}te;
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialDebCalib;
trial{
	stimulus_event{
		picture{
			text{
				caption = "Appuyez sur [Entrée] pour passer à la suite";
				font_color = 0,0,0;
				font_size = 40;
			}tPrep;
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialPrep;
#Trial pause 

trial{
	stimulus_event{
		picture{
			text{
				caption = "Pause\nPrenez un moment pour souffler, boire,... avant de reprendre \nAppuyez sur [Entrée] pour reprendre l'expérience";
				font_color = 0,0,0;
				font_size = 40;
			}tPause;
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialPause;
#Trial question de confiance
trial {
	stimulus_event{
		picture{
			text ecranConfianceQuestion;
			x=0;y=0;
		};
		response_active = true;
		target_button = 2;
		duration = response;
		time = 0;
	}eventConfiance;
}trialConfiance;
#------------------- Début du code ---------------------------
begin_pcl;
set_system_volume(1,1);
int count = response_manager.total_response_count( 11 );
int countClic = response_manager.total_response_count( 10 );
bool preparation = true; 
bool presentation = true; 
bool debugSouris = false;
bool emotionel = false;

trialChoix.present();
int br=response_manager.last_response();	 
if(br == 2 || br == 13)then
	emotionel = true;
else
	emotionel = false;
end;

if(emotionel) then
	picPosition.set_part(1, qE);
	picPreparationQuestion.set_part(1, prepQuestionEmotionnelle);
else
	picPosition.set_part(1, qN);
	picPreparationQuestion.set_part(1, prepQuestion);
end;
#Calibration du niveau de son
if(preparation) then
	output_file ofileCalib = new output_file;
	ofileCalib.open("Calib"+ logfile.subject()+"ApprocheReponseStimuli.txt", true );

	trialDebCalib.present();
	sCalib.set_attenuation(0.5);
	double deltaAtt = 0.025;
	double att = 0.7;
	double attFinale = 0;
	int nombreRepetCalib = 3;
	int rep = 0;
	loop until rep == nombreRepetCalib
	begin
		att = 0.5;
		count = response_manager.total_response_count( 11 );
		#Produit un son de moustique de moins en moins atténué jusqu'a ce que l'utilisateur appuie sur Entree lorsqu'il entend le son
		loop bool endL = false until endL == true 
		begin
			att = att-deltaAtt;
			sCalib.set_attenuation(att);
			t.set_caption("Phase ascendante\nAppuyez sur [Entrée] dès que vous entendez un son",true);
			trialCalib.present();
			if(att <= 0 || count != response_manager.total_response_count( 11 ))then
				endL = true;
			end;
		end;
		double attApparition = att;
		attFinale = attFinale+att;
		ofileCalib.print("AttenuationApparition "+string(att)+"\n");
		trialPrep.present();
		#Produit un son de moustique de plus en plus atténué jusqu'à ce que l'utilisateur appuie sur Entree lorsqu'il entend le son
		sCalib.set_attenuation(0);
		att = 0;
		count = response_manager.total_response_count( 11 );
		loop bool endL = false until endL == true 
		begin
			att = att+deltaAtt;
			sCalib.set_attenuation(att);
			t.set_caption("Phase descendante\nAppuyez sur [Entrée] dès que vous n'entendez plus le son",true);
			trialCalib.present();
			if(att == 1 || count != response_manager.total_response_count( 11 ))then
				endL = true;
			end;
		end;
		double attDisparition = att;
		attFinale = attFinale+att;
		ofileCalib.print("AttenuationDisparition "+string(att)+"\n");
		trialPrep.present();
		rep = rep+1;
	end;
	#Rep


	attFinale = attFinale/((rep)*2);
	#Calcul atténuation finale
	#L'atténuation déterminé est la moyenne des deux attenuations détérminé par l'appuie de la touche [Entrée] par l'utilisateur auquel on soustrait 0.2
	ofileCalib.print("AttenuationFinale "+string(attFinale));
	deltaAtt = 0.3;
	attFinale = attFinale-deltaAtt;
	if((attFinale <=0))then
		attFinale = 0;
	end;
		
	loop int s = 1 until s > sounds.count()
	begin
		sounds[s].set_attenuation(attFinale);
		s=s+1;
	end;

	#te.set_caption(string(att)+"\nAppuyez sur [Entrée]",true);
	#trialDebCalib.present();
else 
	loop int s = 1 until s > sounds.count()
	begin
		sounds[s].set_attenuation(0);
		s=s+1;
	end;
end;
		
array <int>  mouvements[212][2] = {{27,19},{1,8},{17,11},{7,13},{14,21},{20,26},{24,17},{32,26},{11,10},{9,3},{14,7},{31,32},{12,4},{15,23},{24,16},{3,9},{5,12},{27,33},{1,2},{28,27},{26,32},{8,2},{11,17},{5,6},{2,8},{15,22},{16,9},{4,12},{31,23},{9,15},{19,11},{18,17},{9,16},{23,15},{25,33},{18,24},{27,20},{23,31},{25,18},{23,24},{18,26},{24,30},{35,34},{27,35},{20,13},{8,15},{33,26},{3,4},{20,28},{17,24},{9,2},{31,25},{30,22},{12,11},{17,9},{29,23},{2,9},{11,5},{3,10},{30,23},{32,31},{25,31},{6,14},{22,16},{32,33},{7,6},{25,26},{12,6},{2,10},{23,16},{4,11},{14,6},{30,31},{12,20},{17,10},{27,34},{25,19},{17,18},{28,34},{16,17},{27,26},{30,24},{17,23},{26,20},{18,25},{19,20},{22,30},{26,19},{12,13},{10,16},{32,24},{19,27},{24,31},{8,1},{19,25},{3,2},{13,7},{21,28},{4,5},{19,26},{5,13},{16,22},{33,34},{16,24},{13,20},{16,10},{6,7},{5,11},{20,19},{9,10},{33,32},{22,23},{34,28},{19,12},{13,5},{34,27},{21,27},{18,10},{14,20},{5,4},{11,18},{12,18},{33,25},{27,28},{9,1},{28,21},{35,27},{20,21},{17,25},{32,25},{6,5},{24,18},{11,4},{19,18},{26,33},{4,10},{16,8},{26,27},{3,11},{23,29},{24,25},{11,3},{24,23},{28,20},{13,21},{34,35},{28,35},{24,32},{15,9},{22,29},{35,28},{6,13},{9,17},{14,13},{13,6},{20,14},{34,26},{17,16},{19,13},{11,19},{12,5},{13,12},{8,16},{10,3},{13,19},{31,30},{18,11},{26,18},{25,24},{20,12},{30,29},{6,12},{29,22},{25,17},{23,30},{4,3},{27,21},{10,17},{2,1},{11,12},{31,24},{34,33},{15,8},{10,2},{1,9},{21,13},{9,8},{21,14},{16,15},{26,34},{22,15},{29,30},{7,14},{18,19},{10,4},{23,22},{2,3},{33,27},{15,16},{10,18},{26,25},{10,11},{23,17},{21,20},{25,32},{10,9},{20,27},{8,9},{12,19},{13,14},{16,23},{18,12}};
array <int> idsMvm[212] = {3,8,1,9,8,9,2,1,6,1,2,4,3,7,3,9,8,9,4,6,9,1,9,4,9,8,2,7,3,9,3,6,8,3,7,9,2,7,2,4,7,9,6,7,2,8,2,4,7,8,2,1,3,6,3,1,8,1,8,2,6,9,7,1,4,6,4,1,7,2,8,3,4,7,2,8,1,4,9,4,6,1,9,1,8,4,7,2,4,9,3,7,8,2,9,6,1,8,4,8,7,9,4,7,8,1,4,9,6,4,6,4,1,2,3,2,9,3,9,6,8,9,3,4,3,2,3,4,7,2,6,1,2,6,8,9,3,4,7,9,4,3,6,3,7,4,8,7,1,8,2,8,7,6,2,1,3,6,1,7,2,6,7,2,9,6,2,3,6,3,6,9,2,3,8,6,1,8,6,4,2,6,2,3,7,3,6,2,6,7,2,4,8,4,1,6,4,1,4,7,6,4,1,6,8,6,8,4,8,4,8,1};
array <int> positions[35][2] = {{0,-5},{3,-4},{4,-2},{5,0},{4,2},{3,4},{0,5},{0,-8},{4,-7},{7,-4},{8,0},{7,4},{4,7},{0,8},{0,-14},{7,-12},{12,-7},{14,0},{12,7},{7,12},{0,14},{0,-24},{12,-21},{21,-12},{24,0},{21,12},{12,21},{0,24},{0,-41},{21,-36},{36,-20},{41,0},{36,20},{21,36},{0,41}};
double posMax = 41;
int nbMvm = 212;
#Ouverture du fichier log pour les résultats
output_file ofile1 = new output_file;
string nameFile = logfile.subject()+"ReponseStimuli";
if(emotionel)then
	nameFile = nameFile+"Emotionnel";
end;
string nameFileTest = nameFile;
int cptname = 1;
loop until !file_exists(logfile_directory +nameFileTest+".txt") begin
	nameFileTest = nameFile+string(cptname);
	cptname=cptname+1;
end;
ofile1.open(nameFileTest+".txt" , true );

#Paramètres de souris pour la position
mouse mse = response_manager.get_mouse( 1 );
int max_x = display_device.width() / 2;
int min_x = -max_x;
int max_y = display_device.height() / 2;
int min_y = -max_y;
mse.set_min_max( 1, min_x, max_x );
mse.set_min_max( 2, min_y, max_y );
mse.set_restricted( 1, true );
mse.set_restricted( 2, true );


if(presentation) then
	#Presentation du déroulement de l'experience
	trialPreparation.present();

	#Présentation de différents son
	trialCalibration.present();
	array<int> idSoundTest[7] = {5,8,48,41,86,13,45};
	loop int essaiTest = 0 until essaiTest > 5 begin
		essaiTest = essaiTest+1;
		sound sd1 = sounds[mouvements[idSoundTest[essaiTest]][1]];
		sound sd2 = sounds[mouvements[idSoundTest[essaiTest]][2]];
		s1.set_stimulus(sd1);
		s2.set_stimulus(sd2);
		trialDeplacement.present();
		#################
		
	
		#Début trial position
		
		countClic = response_manager.total_response_count( 10 );
		trialPosition.present();	
		#Boucle jusqu'à ce que l'utilisateur clique sur l'image
		loop bool wait = false until wait == true begin
			mse.poll();
			#Positionne une image a la position de la souris
			picPosition.set_part_x(4, mse.x());
			picPosition.set_part_y(4, mse.y());
			array<int> posEchelle[7][2] = {{-600,-430},{-429,-258},{-257,-86},{-86,86},{87,256},{257,432},{432,600}};
			int sel = 0;
			bool ended = false ;
			loop until sel > posEchelle.count()-1 || ended  begin
				sel = sel+1;
				if( posEchelle[sel][1] <= mse.x() && mse.x() <= posEchelle[sel][2]) then
					ended = true;
				end;
			end;
			if(ended == false) then
				sel = -10;
			end;
			sel = sel-4;
			
			if(debugSouris == true)then
				pos.set_caption(string(mse.x())+"/"+string(mse.y())+" : "+string(sel),true);
			end;
			trialPosition.present();	
			if response_manager.total_response_count( 10 ) > countClic then
				countClic = response_manager.total_response_count( 10 );
				wait = true;
			end;
			#display_device.screenshot("screenshot.bmp");
		end;
		
		########
	end;
end;

tPrep.set_caption("L'expérience va pouvoir commencer!\n Appuyez sur [Entrée] pour débuter",true);
trialPrep.present();

#Compteur de clic
countClic = response_manager.total_response_count( 10 );

#Itération sur les différents mouvements/positions
loop int i = 1 until i > mouvements.count()
begin
	if(i%10 == 0 && i != 0 && i < mouvements.count() -5 && i%(mouvements.count()/4) > 5) then
		trialConfiance.present();
		#Récupération des réponses du sujet a la question de confiance
		int button_response=response_manager.last_response();	
		stimulus_data last = stimulus_manager.last_stimulus_data();   
		button_response=response_manager.last_response();
		if(button_response > 10) then
			button_response = button_response - 11;
		end;
		ofile1.print("Certainty "+string(button_response)+"\n");
		ofile1.print("ReactionTimeCertainty "+string(last.reaction_time())+"\n");
	end;
	if(i%(mouvements.count()/4) == 0 && i != 0 && i < mouvements.count() -5) then
		trialPause.present();
	end;
	#ecranEtape.set_caption("Etape "+string(i)+"/"+string(mouvements.count()));
	#ecranEtape.redraw();
	ofile1.print("trial "+string(i)+"\n");
	
	#Définition des sons à jouer et du mouvement correspondant
	sound sd1 = sounds[mouvements[i][1]];
	sound sd2 = sounds[mouvements[i][2]];
	s1.set_stimulus(sd1);
	s2.set_stimulus(sd2);
	
	
	#Presentation du trial
	trialDeplacement.present();
	
	#Récupération des réponses du sujet au déplacement

	#Ecriture du résultat dans le fichier log
	ofile1.print("Position1 "+string(positions[mouvements[i][1]][1])+"_"+string(positions[mouvements[i][1]][2])+"\n");
	ofile1.print("Position2 "+string(positions[mouvements[i][2]][1])+"_"+string(positions[mouvements[i][2]][2])+"\n");
	ofile1.print("Mouvement "+string(idsMvm[i])+"\n");
	
	#Trial position
	
	double startTime = clock.time();
	#Début trial position
	trialPosition.present();	
	#Boucle jusqu'à ce que l'utilisateur clique sur l'image
	loop bool wait = false until wait == true begin
		mse.poll();
		#Positionne une image a la position de la souris
		picPosition.set_part_x(4, mse.x());
		picPosition.set_part_y(4, mse.y());
		array<int> posEchelle[7][2] = {{-600,-430},{-429,-258},{-257,-86},{-86,86},{87,256},{257,432},{432,600}};
		int sel = 0;
		bool ended = false ;
		loop until sel > posEchelle.count()-1 || ended  begin
			sel = sel+1;
			if( posEchelle[sel][1] < mse.x() && mse.x() < posEchelle[sel][2]) then
				ended = true;
			end;
		end;
		if(ended == false) then
			sel = -10;
		end;
		sel = sel-4;
		if(debugSouris == true)then
			pos.set_caption(string(mse.x())+"/"+string(mse.y())+" : "+string(sel),true);
		end;
		trialPosition.present();	
		if response_manager.total_response_count( 10 ) > countClic then
			countClic = response_manager.total_response_count( 10 );
			wait = true;
			ofile1.print("Reponse "+string(sel)+"\n");
		end;
		#display_device.screenshot("screenshot.bmp");
	end;
	double clicTime = clock.time()-startTime;
	i = i + 1;
	int button_response=response_manager.last_response();	
	stimulus_data last = stimulus_manager.last_stimulus_data();
	ofile1.print("ReactionTime "+string(clicTime)+"\n"); 
	ofile1.print("Fin"+"\n");
end;