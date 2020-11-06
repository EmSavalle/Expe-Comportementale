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
array{
sound { wavefile { filename = "Continu/audioMosquitoFrom0_8to4_7.wav";};} soundFrom0_8to4_7;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-8to4_-7.wav";};} soundFrom0_m8to4_m7;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_-12to12_-21.wav";};} soundFrom21_m12to12_m21;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-41to21_-36.wav";};} soundFrom0_m41to21_m36;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_-7to21_-12.wav";};} soundFrom12_m7to21_m12;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_-2to3_-4.wav";};} soundFrom4_m2to3_m4;
sound { wavefile { filename = "Continu/audioMosquitoFrom36_20to21_36.wav";};} soundFrom36_20to21_36;
sound { wavefile { filename = "Continu/audioMosquitoFrom36_-20to21_-36.wav";};} soundFrom36_m20to21_m36;
sound { wavefile { filename = "Continu/audioMosquitoFrom3_4to4_7.wav";};} soundFrom3_4to4_7;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_4to4_7.wav";};} soundFrom7_4to4_7;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_-21to7_-12.wav";};} soundFrom12_m21to7_m12;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_7to7_4.wav";};} soundFrom4_7to7_4;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-41to0_-24.wav";};} soundFrom0_m41to0_m24;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_7to0_8.wav";};} soundFrom4_7to0_8;
sound { wavefile { filename = "Continu/audioMosquitoFrom36_20to41_0.wav";};} soundFrom36_20to41_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_-12to12_-7.wav";};} soundFrom21_m12to12_m7;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-5to0_-8.wav";};} soundFrom0_m5to0_m8;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-14to0_-8.wav";};} soundFrom0_m14to0_m8;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_14to0_24.wav";};} soundFrom0_14to0_24;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_-21to21_-12.wav";};} soundFrom12_m21to21_m12;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_5to0_8.wav";};} soundFrom0_5to0_8;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_12to12_7.wav";};} soundFrom7_12to12_7;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-8to0_-14.wav";};} soundFrom0_m8to0_m14;
sound { wavefile { filename = "Continu/audioMosquitoFrom36_20to21_12.wav";};} soundFrom36_20to21_12;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_-12to0_-14.wav";};} soundFrom7_m12to0_m14;
sound { wavefile { filename = "Continu/audioMosquitoFrom3_-4to4_-7.wav";};} soundFrom3_m4to4_m7;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_-7to7_-4.wav";};} soundFrom12_m7to7_m4;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-14to0_-24.wav";};} soundFrom0_m14to0_m24;
sound { wavefile { filename = "Continu/audioMosquitoFrom3_4to4_2.wav";};} soundFrom3_4to4_2;
sound { wavefile { filename = "Continu/audioMosquitoFrom14_0to8_0.wav";};} soundFrom14_0to8_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_4to12_7.wav";};} soundFrom7_4to12_7;
sound { wavefile { filename = "Continu/audioMosquitoFrom14_0to12_-7.wav";};} soundFrom14_0to12_m7;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_12to12_21.wav";};} soundFrom7_12to12_21;
sound { wavefile { filename = "Continu/audioMosquitoFrom3_4to0_5.wav";};} soundFrom3_4to0_5;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_5to3_4.wav";};} soundFrom0_5to3_4;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_7to3_4.wav";};} soundFrom4_7to3_4;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_-12to24_0.wav";};} soundFrom21_m12to24_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_36to12_21.wav";};} soundFrom21_36to12_21;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_-12to36_-20.wav";};} soundFrom21_m12to36_m20;
sound { wavefile { filename = "Continu/audioMosquitoFrom8_0to7_-4.wav";};} soundFrom8_0to7_m4;
sound { wavefile { filename = "Continu/audioMosquitoFrom24_0to21_12.wav";};} soundFrom24_0to21_12;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_12to36_20.wav";};} soundFrom21_12to36_20;
sound { wavefile { filename = "Continu/audioMosquitoFrom5_0to4_2.wav";};} soundFrom5_0to4_2;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-8to0_-5.wav";};} soundFrom0_m8to0_m5;
sound { wavefile { filename = "Continu/audioMosquitoFrom14_0to24_0.wav";};} soundFrom14_0to24_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_21to0_24.wav";};} soundFrom12_21to0_24;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_41to21_36.wav";};} soundFrom0_41to21_36;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_-4to12_-7.wav";};} soundFrom7_m4to12_m7;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_-7to7_-4.wav";};} soundFrom4_m7to7_m4;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_7to7_12.wav";};} soundFrom4_7to7_12;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_-7to7_-12.wav";};} soundFrom12_m7to7_m12;
sound { wavefile { filename = "Continu/audioMosquitoFrom41_0to36_20.wav";};} soundFrom41_0to36_20;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_7to7_4.wav";};} soundFrom12_7to7_4;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_-7to7_-12.wav";};} soundFrom4_m7to7_m12;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-5to3_-4.wav";};} soundFrom0_m5to3_m4;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-24to0_-41.wav";};} soundFrom0_m24to0_m41;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_2to3_4.wav";};} soundFrom4_2to3_4;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_12to4_7.wav";};} soundFrom7_12to4_7;
sound { wavefile { filename = "Continu/audioMosquitoFrom41_0to36_-20.wav";};} soundFrom41_0to36_m20;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_-2to5_0.wav";};} soundFrom4_m2to5_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_24to0_41.wav";};} soundFrom0_24to0_41;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_-4to4_-7.wav";};} soundFrom7_m4to4_m7;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_-12to12_-21.wav";};} soundFrom7_m12to12_m21;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_-7to3_-4.wav";};} soundFrom4_m7to3_m4;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_-36to0_-41.wav";};} soundFrom21_m36to0_m41;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_-21to21_-36.wav";};} soundFrom12_m21to21_m36;
sound { wavefile { filename = "Continu/audioMosquitoFrom36_-20to21_-12.wav";};} soundFrom36_m20to21_m12;
sound { wavefile { filename = "Continu/audioMosquitoFrom3_-4to0_-5.wav";};} soundFrom3_m4to0_m5;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_-4to8_0.wav";};} soundFrom7_m4to8_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom5_0to8_0.wav";};} soundFrom5_0to8_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_21to7_12.wav";};} soundFrom12_21to7_12;
sound { wavefile { filename = "Continu/audioMosquitoFrom8_0to14_0.wav";};} soundFrom8_0to14_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_7to14_0.wav";};} soundFrom12_7to14_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_8to0_14.wav";};} soundFrom0_8to0_14;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_-12to12_-7.wav";};} soundFrom7_m12to12_m7;
sound { wavefile { filename = "Continu/audioMosquitoFrom24_0to41_0.wav";};} soundFrom24_0to41_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_7to7_12.wav";};} soundFrom12_7to7_12;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_24to12_21.wav";};} soundFrom0_24to12_21;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_8to0_5.wav";};} soundFrom0_8to0_5;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_36to36_20.wav";};} soundFrom21_36to36_20;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_-7to14_0.wav";};} soundFrom12_m7to14_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_2to7_4.wav";};} soundFrom4_2to7_4;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_4to8_0.wav";};} soundFrom7_4to8_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_21to21_36.wav";};} soundFrom12_21to21_36;
sound { wavefile { filename = "Continu/audioMosquitoFrom3_-4to4_-2.wav";};} soundFrom3_m4to4_m2;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_7to21_12.wav";};} soundFrom12_7to21_12;
sound { wavefile { filename = "Continu/audioMosquitoFrom24_0to14_0.wav";};} soundFrom24_0to14_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_14to7_12.wav";};} soundFrom0_14to7_12;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_-12to4_-7.wav";};} soundFrom7_m12to4_m7;
sound { wavefile { filename = "Continu/audioMosquitoFrom14_0to12_7.wav";};} soundFrom14_0to12_7;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_-7to0_-8.wav";};} soundFrom4_m7to0_m8;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_14to0_8.wav";};} soundFrom0_14to0_8;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_36to0_41.wav";};} soundFrom21_36to0_41;
sound { wavefile { filename = "Continu/audioMosquitoFrom8_0to5_0.wav";};} soundFrom8_0to5_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-14to7_-12.wav";};} soundFrom0_m14to7_m12;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_-36to12_-21.wav";};} soundFrom21_m36to12_m21;
sound { wavefile { filename = "Continu/audioMosquitoFrom24_0to21_-12.wav";};} soundFrom24_0to21_m12;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_-2to7_-4.wav";};} soundFrom4_m2to7_m4;
sound { wavefile { filename = "Continu/audioMosquitoFrom4_2to5_0.wav";};} soundFrom4_2to5_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_-4to4_-2.wav";};} soundFrom7_m4to4_m2;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_21to21_12.wav";};} soundFrom12_21to21_12;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_24to0_14.wav";};} soundFrom0_24to0_14;
sound { wavefile { filename = "Continu/audioMosquitoFrom36_-20to41_0.wav";};} soundFrom36_m20to41_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_12to24_0.wav";};} soundFrom21_12to24_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_-36to36_-20.wav";};} soundFrom21_m36to36_m20;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_41to0_24.wav";};} soundFrom0_41to0_24;
sound { wavefile { filename = "Continu/audioMosquitoFrom8_0to7_4.wav";};} soundFrom8_0to7_4;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-24to0_-14.wav";};} soundFrom0_m24to0_m14;
sound { wavefile { filename = "Continu/audioMosquitoFrom5_0to4_-2.wav";};} soundFrom5_0to4_m2;
sound { wavefile { filename = "Continu/audioMosquitoFrom0_-24to12_-21.wav";};} soundFrom0_m24to12_m21;
sound { wavefile { filename = "Continu/audioMosquitoFrom41_0to24_0.wav";};} soundFrom41_0to24_0;
sound { wavefile { filename = "Continu/audioMosquitoFrom12_-21to0_-24.wav";};} soundFrom12_m21to0_m24;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_12to12_21.wav";};} soundFrom21_12to12_21;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_4to4_2.wav";};} soundFrom7_4to4_2;
sound { wavefile { filename = "Continu/audioMosquitoFrom7_12to0_14.wav";};} soundFrom7_12to0_14;
sound { wavefile { filename = "Continu/audioMosquitoFrom21_12to12_7.wav";};} soundFrom21_12to12_7;
}sounds;

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
	font_size = 50;
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
		sound soundFrom0_8to4_7;
		response_active = true;
		duration = response;
		deltat = 0;
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
#------------------- Début du code ---------------------------
begin_pcl;

pic1.set_part(1,b4);

array <int>  positions[116][4] = {{0,8,4,7},{0,-8,4,-7},{21,-12,12,-21},{0,-41,21,-36},{12,-7,21,-12},{4,-2,3,-4},{36,20,21,36},{36,-20,21,-36},{3,4,4,7},{7,4,4,7},{12,-21,7,-12},{4,7,7,4},{0,-41,0,-24},{4,7,0,8},{36,20,41,0},{21,-12,12,-7},{0,-5,0,-8},{0,-14,0,-8},{0,14,0,24},{12,-21,21,-12},{0,5,0,8},{7,12,12,7},{0,-8,0,-14},{36,20,21,12},{7,-12,0,-14},{3,-4,4,-7},{12,-7,7,-4},{0,-14,0,-24},{3,4,4,2},{14,0,8,0},{7,4,12,7},{14,0,12,-7},{7,12,12,21},{3,4,0,5},{0,5,3,4},{4,7,3,4},{21,-12,24,0},{21,36,12,21},{21,-12,36,-20},{8,0,7,-4},{24,0,21,12},{21,12,36,20},{5,0,4,2},{0,-8,0,-5},{14,0,24,0},{12,21,0,24},{0,41,21,36},{7,-4,12,-7},{4,-7,7,-4},{4,7,7,12},{12,-7,7,-12},{41,0,36,20},{12,7,7,4},{4,-7,7,-12},{0,-5,3,-4},{0,-24,0,-41},{4,2,3,4},{7,12,4,7},{41,0,36,-20},{4,-2,5,0},{0,24,0,41},{7,-4,4,-7},{7,-12,12,-21},{4,-7,3,-4},{21,-36,0,-41},{12,-21,21,-36},{36,-20,21,-12},{3,-4,0,-5},{7,-4,8,0},{5,0,8,0},{12,21,7,12},{8,0,14,0},{12,7,14,0},{0,8,0,14},{7,-12,12,-7},{24,0,41,0},{12,7,7,12},{0,24,12,21},{0,8,0,5},{21,36,36,20},{12,-7,14,0},{4,2,7,4},{7,4,8,0},{12,21,21,36},{3,-4,4,-2},{12,7,21,12},{24,0,14,0},{0,14,7,12},{7,-12,4,-7},{14,0,12,7},{4,-7,0,-8},{0,14,0,8},{21,36,0,41},{8,0,5,0},{0,-14,7,-12},{21,-36,12,-21},{24,0,21,-12},{4,-2,7,-4},{4,2,5,0},{7,-4,4,-2},{12,21,21,12},{0,24,0,14},{36,-20,41,0},{21,12,24,0},{21,-36,36,-20},{0,41,0,24},{8,0,7,4},{0,-24,0,-14},{5,0,4,-2},{0,-24,12,-21},{41,0,24,0},{12,-21,0,-24},{21,12,12,21},{7,4,4,2},{7,12,0,14},{21,12,12,7}};
array <int> idsMvm[116] = {6,4,6,4,8,6,4,6,8,4,2,6,2,4,6,2,8,2,8,4,8,6,8,2,6,8,2,8,6,2,8,6,8,4,6,2,4,2,8,6,4,8,4,2,8,4,6,8,4,8,6,4,2,8,4,8,4,2,6,4,8,6,8,2,6,8,2,6,4,8,2,8,6,8,4,8,4,6,2,6,4,8,6,8,4,8,2,6,2,4,6,2,4,2,4,2,6,8,6,2,6,2,4,6,4,2,4,2,6,4,2,6,4,2,4,2};
double posMax = 41;
#Ouverture du fichier log pour les résultats
output_file ofile1 = new output_file;
ofile1.open( logfile.subject()+"ReponseStimuliContinu.txt", true );

#Variables de comparaison réponse donnée / réponse attendue
int hitCpt = 0;
int missCpt = 0;
int othersCpt = 0;
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
int count = response_manager.total_response_count( 10 );

#Itération sur les différents mouvements/positions
loop int i = 1 until i > positions.count()
begin

	ecranEtape.set_caption("Etape "+string(i)+"/"+string(positions.count()));
	ecranEtape.redraw();
	ofile1.print("trial "+string(i)+"\n");
	#Définition des sons à jouer et du mouvement correspondant
	sound sd1 = sounds[i];
	s1.set_stimulus(sd1);
	
	#Définition du mouvement à selectionner
	eventQuestion.set_target_button(idsMvm[i]);
	
	#Presentation du trial
	trialDeplacement.present();
	
	#Récupération des réponses du sujet au déplacement
   int button_response=response_manager.last_response();	
   stimulus_data last = stimulus_manager.last_stimulus_data();

	#Verification du choix de l'utilisateur
	if last.type() == stimulus_hit then
		hitCpt = hitCpt + 1;
	elseif last.type() == stimulus_incorrect then
		missCpt = missCpt + 1;		
	else 
		othersCpt = othersCpt + 1;
	end;
	#Ecriture du résultat dans le fichier log
	ofile1.print(string(button_response)+"/"+string(idsMvm[i])+" input/expected"+"\n");
	ofile1.print("Position1 "+string(positions[i][1])+"_"+string(positions[i][2])+"\n");
	ofile1.print("Position2 "+string(positions[i][3])+"_"+string(positions[i][4])+"\n");
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
	
	double rapportSizePosition = posMax/25;
	#mse.poll();
	count = response_manager.total_response_count( 10 );
	picPosition.set_part_x(3, mse.x());
	picPosition.set_part_y(3, mse.y());

	#Positionnement position du son (debug)
	double y1 =positions[i][1];
	double x1 =-positions[i][2];
	double y2 =positions[i][3];
	double x2 =-positions[i][4];
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
ofile1.print("Nombre de reussite :");
ofile1.print(hitCpt);
ofile1.print("Nombre d'echec :");
ofile1.print(missCpt);
