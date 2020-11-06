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
	caption = "Etape ";
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
	caption = " Sur un echelle de 1 à 9, êtes vous confiant de votre réponse?\n 1 : Pas confiant du tout - 9 : Certain ";
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
	caption ="v";
	font_color = 0,0,0;
} pos;

text {
	caption = "A quel endroit était le moustique?";
	font_color = 0,0,0;
	font_size = 40;
} textPos;
#-------------- Schéma réponse -----------

bitmap { filename = "picMovementText4.png";} b4;
bitmap { filename = "picMovementText.png";} b8;
picture {
	bitmap { filename = "picArea.png";};
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
	text textPos;
	x = 0 ; y = 400;
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
	
	
	picture{	bitmap { filename = "Preparation/im4.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
	picture{bitmap { filename = "Preparation/im5.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
	picture{bitmap { filename = "Preparation/im6.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
	picture{bitmap { filename = "Preparation/im7.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;

}trialPreparation;

#Trial calibration
trial {
	stimulus_event{
		picture{
			text{
				caption = "Présentation de différentes positions du moustiques";
				font_color = 0,0,0;
				font_size = 40; 
			};
			x = 0; y = 0;
		};
		
		duration = 1500;
		time = 0;
	};
	stimulus_event{
		sound sound0_41;
		time = 1500;
		duration = 1000;
	};
	stimulus_event{
		sound sound0_5;
		time = 3000;
		duration = 1000;
	};
	stimulus_event{
		sound sound14_0;
		time = 4500;
		duration = 1000;
	};
	stimulus_event{
		sound sound12_m21;
		time = 6000;
		duration = 1000;
	};
	stimulus_event{
		sound sound0_m8;
		time = 7500;
		duration = 1000;
	};
	stimulus_event{
		sound sound0_m41;
		time = 9000;
		duration = 1000;
	};
	stimulus_event{
		sound sound36_20;
		time = 10500;
		duration = 1000;
	};
	stimulus_event{
		picture{
			text{
				caption = "Appuyer sur [Entrée] pour commencer l'éxperience";
				font_color = 0,0,0;
				font_size = 20;
			};
			x = 0 ; y = 0 ;
		};
		response_active = true;
		target_button = 11;
		duration = response;
		time = 12000;
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
	
	#Question sur le déplacement
	stimulus_event{
		picture{
			bitmap { filename = "picMovementText.png";};
			x = -20; y = 0;
		}pic1;
		response_active = true;
		target_button = 2;
		duration = response;
		time = 3500;
	}eventQuestion;	
}trialDeplacement;

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
			caption = "Appuyer sur [Entrée] dès que vous entendez un son";
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
				caption = "Nous allons calibrer l'experience en fonctions de vos capacitées auditives\nConcentrez vous sur ce que vous entendez et suivez les instructions\nAppuyer sur [Entrée] pour commencer la calibration";
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
#------------------- Début du code ---------------------------
begin_pcl;
int count = response_manager.total_response_count(11);
	
bool preparation = false; 
bool presentation = true; 
#Calibration du niveau de son
if(preparation) then
	output_file ofileCalib = new output_file;
	ofileCalib.open("Calib"+ logfile.subject()+"ReponseStimuli.txt", true );

	trialDebCalib.present();
	sCalib.set_attenuation(0.7);
	double deltaAtt = 0.025;
	double att = 0.7;
	double attFinale = 0;
	int nombreRepetCalib = 2;
	int rep = 0;
	loop until rep > nombreRepetCalib
	begin
		att = 0.7;
		count = response_manager.total_response_count(11);
		#Produit un son de moustique de moins en moins atténué jusqu'a ce que l'utilisateur appuie sur Entree lorsqu'il entend le son
		loop bool endL = false until endL == true 
		begin
			att = att-deltaAtt;
			sCalib.set_attenuation(att);
			t.set_caption("Appuyer sur [Entrée] dès que vous entendez un son",true);
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
		count = response_manager.total_response_count(11);
		loop bool endL = false until endL == true 
		begin
			att = att+deltaAtt;
			sCalib.set_attenuation(att);
			t.set_caption("Appuyer sur [Entrée] dès que vous n'entendez plus le son",true);
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


	attFinale = attFinale/((rep+1)*2);
	#Calcul atténuation finale
	#L'atténuation déterminé est la moyenne des deux attenuations détérminé par l'appuie de la touche [Entrée] par l'utilisateur auquel on soustrait 0.2
	ofileCalib.print("AttenuationFinale "+string(attFinale));
	deltaAtt = 0.2;
	attFinale = attFinale-deltaAtt;
	if((attFinale <=0))then
		attFinale = 0;
	end;
		
	loop int s = 1 until s > sounds.count()
	begin
		sounds[s].set_attenuation(attFinale);
		s=s+1;
	end;

	te.set_caption(string(att)+"\nAppuyez sur [Entrée]",true);
	trialDebCalib.present();
end;
if(presentation) then
	#Presentation du déroulement de l'experience
	trialPreparation.present();

	#Présentation de différents son
	trialCalibration.present();
end;
bool diagonales = false;
if(diagonales == false) then
	pic1.set_part(1,b4);
end;

array <int>  mouvements[116][2] = {{19,20},{28,27},{27,28},{35,34},{6,7},{19,26},{25,18},{26,33},{15,8},{26,25},{22,15},{19,18},{23,16},{11,12},{2,9},{7,6},{24,17},{12,19},{11,10},{10,3},{8,9},{33,32},{5,12},{9,2},{17,16},{33,26},{18,17},{14,7},{13,20},{8,1},{24,31},{9,8},{18,25},{13,14},{31,24},{3,10},{29,30},{15,22},{18,11},{16,23},{13,6},{16,15},{17,18},{20,13},{3,4},{7,14},{31,30},{32,25},{12,13},{4,11},{24,25},{2,1},{8,15},{16,17},{34,33},{22,23},{1,8},{34,35},{26,19},{12,11},{26,27},{17,10},{30,29},{27,34},{25,26},{27,26},{20,27},{23,24},{9,16},{10,9},{9,10},{4,3},{12,5},{6,13},{34,27},{21,20},{27,20},{32,33},{29,22},{20,21},{11,4},{15,16},{35,28},{32,31},{30,31},{16,9},{18,19},{30,23},{11,18},{19,12},{25,32},{20,19},{10,11},{23,30},{6,5},{22,29},{5,4},{4,5},{21,14},{10,17},{28,21},{14,21},{33,34},{28,35},{25,24},{5,6},{3,2},{17,24},{23,22},{21,28},{1,2},{24,23},{2,3},{14,13},{31,32},{13,12}};
array <int> idsMvm[116] = {4,6,4,6,4,8,2,8,2,6,2,6,2,4,8,6,2,8,6,2,4,6,8,2,6,2,6,2,8,2,8,6,8,4,2,8,4,8,2,8,2,6,4,2,4,8,6,2,4,8,4,6,8,4,6,4,8,4,2,6,4,2,6,8,4,6,8,4,8,6,4,6,2,8,2,6,2,4,2,4,2,4,2,6,4,2,4,2,8,2,8,6,4,8,6,8,6,4,2,8,2,8,4,8,6,4,6,8,6,8,4,6,4,6,4,6};
array <int> positions[35][2] = {{0,-5},{3,-4},{4,-2},{5,0},{4,2},{3,4},{0,5},{0,-8},{4,-7},{7,-4},{8,0},{7,4},{4,7},{0,8},{0,-14},{7,-12},{12,-7},{14,0},{12,7},{7,12},{0,14},{0,-24},{12,-21},{21,-12},{24,0},{21,12},{12,21},{0,24},{0,-41},{21,-36},{36,-20},{41,0},{36,20},{21,36},{0,41}};
double posMax = 41;
#Ouverture du fichier log pour les résultats
output_file ofile1 = new output_file;
ofile1.open( logfile.subject()+"ReponseStimuli.txt", true );

#Variables de comparaison réponse donnée / réponse attendue
array<int> missCPT[8] = {0,0,0,0,0,0,0,0};

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

#Compteur de clic
count = response_manager.total_response_count( 10 );

#Itération sur les différents mouvements/positions
loop int i = 1 until i > mouvements.count()
begin

	ecranEtape.set_caption("Etape "+string(i)+"/"+string(mouvements.count()));
	ecranEtape.redraw();
	ofile1.print("trial "+string(i)+"\n");
	
	#Définition des sons à jouer et du mouvement correspondant
	sound sd1 = sounds[mouvements[i][1]];
	sound sd2 = sounds[mouvements[i][2]];
	s1.set_stimulus(sd1);
	s2.set_stimulus(sd2);
	
	#Définition du mouvement à selectionner
	eventQuestion.set_target_button(idsMvm[i]);
	
	#Presentation du trial
	trialDeplacement.present();
	
	#Récupération des réponses du sujet au déplacement
   int button_response=response_manager.last_response();	
   stimulus_data last = stimulus_manager.last_stimulus_data();

	#Ecriture du résultat dans le fichier log
	ofile1.print(string(button_response)+"/"+string(idsMvm[i])+" input/expected"+"\n");
	ofile1.print("Position1 "+string(positions[mouvements[i][1]][1])+"_"+string(positions[mouvements[i][1]][2])+"\n");
	ofile1.print("Position2 "+string(positions[mouvements[i][2]][1])+"_"+string(positions[mouvements[i][2]][2])+"\n");
	ofile1.print("ReactionTime "+string(last.reaction_time())+"\n"); 
	#Question de confiance au sujet
	trialConfiance.present();

	#Récupération des réponses du sujet a la question de confiance
   button_response=response_manager.last_response();	
   last = stimulus_manager.last_stimulus_data();   
	button_response=response_manager.last_response();
	ofile1.print("Certainty "+string(button_response)+"\n");
	ofile1.print("ReactionTimeCertainty "+string(last.reaction_time())+"\n"); 
	
	#Trial position
	
	double rapportSizePosition = posMax/25;#L'image de séléction est calibré sur une hauteur max de 25, on applique le rapport pour l'adapter a des hauteurs différentes
	
	count = response_manager.total_response_count( 10 );
	picPosition.set_part_x(3, mse.x());
	picPosition.set_part_y(3, mse.y());

	#Positionnement position du son (log/debug)
	double y1 =positions[mouvements[i][1]][1];
	double x1 =-positions[mouvements[i][1]][2];
	double y2 =positions[mouvements[i][2]][1];
	double x2 =-positions[mouvements[i][2]][2];
	int posx1 = int(x1/rapportSizePosition*530/20);
	int posy1 = int(y1/rapportSizePosition*530/20-310);
	int posx2 = int(x2/rapportSizePosition*530/20);
	int posy2 = int(y2/rapportSizePosition*530/20-310);
	picPosition.set_part_x(2,posx1);
	picPosition.set_part_y(2,posy1);
	picPosition.set_part_x(3, posx2);
	picPosition.set_part_y(3, posy2);
	
	#Début trial position
	trialPosition.present();	
	
	#Boucle jusqu'à ce que l'utilisateur clique sur l'image
	loop bool wait = false until wait == true begin
		mse.poll();
		
		#Positionne une image a la position de la souris
		picPosition.set_part_x(4, mse.x());
		picPosition.set_part_y(4, mse.y());
		
		#Traduit la position du clic en position dans l'espace du moustique
		int xr = int(mse.x()*20/530*rapportSizePosition);
		int yr = int((mse.y()+310)*20/530*rapportSizePosition);
		
		#Calcule des distances au clic
		int distanceAuth = int(sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))*rapportSizePosition);#Distance maximale authorisée : Jusqu'à la distance entre les deux positions du moustique dans l'essai
		 
		if(distanceAuth < 2)then
			distanceAuth = 2;
		end;
		if(distanceAuth > 10)then
			distanceAuth = 10;
		end;
		int dist1 = int(sqrt((x1-xr)*(x1-xr)+(y1-yr)*(y1-yr)));
		int dist2 = int(sqrt((x2-xr)*(x2-xr)+(y2-yr)*(y2-yr)));
		
		#Determine si la séléction est au bon endroit
		string dist = "";
		int distance = -1;
		if(dist1 < distanceAuth || dist2 < distanceAuth) then
			dist = "v";
			#pos.set_caption("v",true);
			if(dist1 < dist2) then
				distance = dist1
			else
				distance = dist2
			end;
		else
			dist = "x";
			pos.set_caption(" ",true);
			if(dist1 < dist2) then
				distance = dist1
			else
				distance = dist2
			end;
		end;
		#pos.set_caption(string(x1)+"/"+string(y1)+" "+string(x2)+"/"+string(y2)+"\nPosition correcte : "+dist+"\nDistance authorisée : "+string(distanceAuth), true);
		trialPosition.present();	
		if response_manager.total_response_count( 10 ) > count then
			count = response_manager.total_response_count( 1 );
			wait = true;
			int pxSelec = -int(double(mse.x()*20/530)*rapportSizePosition);
			int pySelec = int(double((mse.y()+310)*20/530)*rapportSizePosition);
			
			ofile1.print("Selection "+  string(-x1)+"/"+string(y1)+" "+string(-x2)+"/"+string(y2)+" "+string(pxSelec)+"/"+string(pySelec)+"\n");
			ofile1.print("Distance "+string(distance)+"\n");
			ofile1.print("PositionCorrecte "+dist+"\n");
		end;
		#display_device.screenshot("screenshot.bmp");
	end;
	i = i + 1;
	ofile1.print("Fin"+"\n");
end;