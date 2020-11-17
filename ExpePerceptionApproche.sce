scenario = "PerceptionDeplacement";
active_buttons = 11;
button_codes = 1,2,3,4,5,6,7,8,9,10,11;
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
	caption = " Sur un echelle de 1 à 9, êtes vous confiant de vos dernières réponse?\n 1 : Pas confiant du tout - 9 : Certain ";
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
bitmap { filename = "Question.png";} qN;
bitmap { filename = "QuestionEmotionnelle.png";} qE;
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
				caption = "Nous allons calibrer l'experience en fonctions de vos capacitées auditives\nConcentrez vous sur ce que vous entendez et suivez les instructions\nAppuyez sur [Entrée] pour commencer la calibration";
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
int count = response_manager.total_response_count( 11 );
int countClic = response_manager.total_response_count( 10 );
bool preparation = true; 
bool presentation = true; 
bool debugSouris = false;
bool emotionel = true;
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
	sCalib.set_attenuation(0.7);
	double deltaAtt = 0.025;
	double att = 0.7;
	double attFinale = 0;
	int nombreRepetCalib = 3;
	int rep = 0;
	loop until rep == nombreRepetCalib
	begin
		att = 0.7;
		count = response_manager.total_response_count( 11 );
		#Produit un son de moustique de moins en moins atténué jusqu'a ce que l'utilisateur appuie sur Entree lorsqu'il entend le son
		loop bool endL = false until endL == true 
		begin
			att = att-deltaAtt;
			sCalib.set_attenuation(att);
			t.set_caption("Phase ascendante\nAppuyez sur [Entrée] dès que vous entendez un son",true);
			trialCalib.present();
			if(att == 0 || count != response_manager.total_response_count( 11 ))then
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
end;
		
array <int>  mouvements[212][2] = {{5,11},{13,7},{27,26},{12,18},{18,11},{27,28},{21,28},{20,21},{25,18},{28,34},{19,27},{4,3},{26,34},{15,22},{7,13},{18,19},{12,5},{30,22},{23,16},{28,27},{15,23},{35,28},{10,18},{26,32},{24,32},{35,27},{31,32},{12,11},{11,18},{25,26},{1,8},{5,13},{32,33},{10,2},{17,10},{2,9},{16,15},{34,26},{33,34},{11,5},{5,12},{10,11},{11,17},{8,15},{18,17},{15,8},{9,16},{8,16},{19,18},{15,16},{17,16},{22,29},{12,6},{23,31},{16,23},{20,19},{8,2},{33,25},{30,29},{13,5},{6,14},{10,4},{11,4},{25,31},{24,17},{14,6},{34,33},{16,17},{20,13},{24,30},{11,3},{18,26},{11,10},{25,19},{4,11},{1,2},{20,28},{27,19},{28,35},{30,31},{23,30},{34,28},{23,15},{11,19},{24,31},{23,29},{16,24},{20,12},{23,24},{21,27},{9,3},{6,7},{22,15},{12,19},{23,17},{13,21},{27,21},{9,2},{2,8},{15,9},{22,23},{27,33},{3,2},{2,10},{16,10},{27,20},{12,4},{7,14},{25,33},{8,1},{17,11},{27,34},{2,1},{3,4},{17,23},{31,25},{2,3},{29,22},{13,20},{26,19},{9,1},{14,21},{24,23},{21,13},{33,27},{10,3},{35,34},{3,10},{13,14},{27,35},{26,33},{16,8},{1,9},{19,20},{22,30},{19,13},{4,10},{29,23},{9,10},{7,6},{18,12},{28,20},{8,9},{24,18},{5,6},{32,24},{6,13},{9,8},{3,11},{20,14},{21,20},{17,18},{18,25},{12,13},{17,9},{34,27},{30,24},{10,9},{20,27},{32,26},{18,24},{14,13},{26,27},{4,12},{13,6},{11,12},{33,26},{19,11},{28,21},{26,20},{13,12},{3,9},{31,24},{22,16},{29,30},{9,15},{12,20},{25,17},{10,17},{14,20},{32,31},{24,25},{9,17},{10,16},{17,25},{23,22},{32,25},{34,35},{19,12},{17,24},{21,14},{25,24},{19,26},{33,32},{24,16},{16,9},{26,18},{30,23},{4,5},{25,32},{5,4},{14,7},{6,12},{31,23},{13,19},{18,10},{20,26},{31,30},{19,25},{26,25},{16,22},{6,5}};
array <int> idsMvm[212] = {9,1,6,9,2,4,8,4,2,9,7,6,7,8,9,4,2,3,2,6,7,2,7,9,7,3,4,6,8,4,8,7,4,3,2,8,6,3,4,1,8,4,9,8,6,2,8,7,6,4,6,8,1,7,8,6,1,3,6,3,7,1,2,9,2,3,6,4,2,9,3,7,6,1,8,4,7,3,8,4,8,1,3,7,8,9,7,3,4,9,1,4,2,8,1,7,1,2,9,1,4,9,6,7,1,2,3,8,7,2,1,8,6,4,9,1,4,2,8,2,3,8,6,3,1,2,6,8,4,7,8,3,7,4,7,1,9,1,4,6,1,3,4,1,4,3,8,6,7,1,6,4,8,4,3,2,1,6,8,1,9,6,4,7,2,4,2,3,2,1,6,9,2,1,4,9,7,3,8,9,6,4,7,9,7,6,2,4,2,8,2,6,8,6,3,2,3,2,4,8,6,2,9,3,9,3,9,6,9,6,9,6};
array <int> positions[35][2] = {{0,-5},{3,-4},{4,-2},{5,0},{4,2},{3,4},{0,5},{0,-8},{4,-7},{7,-4},{8,0},{7,4},{4,7},{0,8},{0,-14},{7,-12},{12,-7},{14,0},{12,7},{7,12},{0,14},{0,-24},{12,-21},{21,-12},{24,0},{21,12},{12,21},{0,24},{0,-41},{21,-36},{36,-20},{41,0},{36,20},{21,36},{0,41}};
double posMax = 41;
#Ouverture du fichier log pour les résultats
output_file ofile1 = new output_file;
string nameFile = logfile.subject()+"ReponseStimuli";
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
	if(i%10 == 0)then
		trialConfiance.present();
		#Récupération des réponses du sujet a la question de confiance
		int button_response=response_manager.last_response();	
		stimulus_data last = stimulus_manager.last_stimulus_data();   
		button_response=response_manager.last_response();
		ofile1.print("Certainty "+string(button_response)+"\n");
		ofile1.print("ReactionTimeCertainty "+string(last.reaction_time())+"\n"); 
	end;
	ecranEtape.set_caption("Etape "+string(i)+"/"+string(mouvements.count()));
	ecranEtape.redraw();
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