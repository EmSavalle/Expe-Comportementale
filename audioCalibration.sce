scenario = "PerceptionDeplacement";
active_buttons = 1;
button_codes = 1;
response_matching = simple_matching;
default_background_color = 255,255,255;

begin;


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
trial{
	sound sound24_0;
	time = 0;
	duration = 1000;
	picture{
		text{
			caption = "Appuyer sur [Entrée] dès que vous entendez un son";
			font_color = 0,0,0;
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
				caption = "";
				font_color = 0,0,0;
			}te;
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialEndCalib;

#Trial calibration
trial {
	stimulus_event{
		picture{
			text{
				caption = "Presentation de différentes positions du moustiques";
				font_color = 0,0,0;
			}tt;
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
				caption = "Appuyer sur entrée pour commencer l'éxperience";
				font_color = 0,0,0;
				font_size = 20;
			};
			x = 0 ; y = 0 ;
		};
		response_active = true;
		target_button = 1;
		duration = response;
		time = 12000;
	};
}trialCalibration;

begin_pcl;

sound24_0.set_attenuation(1);

int count = response_manager.total_response_count(1);
double deltaAtt = 0.01;
double att = 1;
loop bool endL = false until endL == true 
begin
	att = att-deltaAtt;
	sound24_0.set_attenuation(att);
	t.set_caption("Appuyer sur [Entrée] dès que vous entendez un son\nAttenuation : "+string(att),true);
	trialCalib.present();
	if(att == 0 || count != response_manager.total_response_count( 1 ))then
		endL = true;
	end;
end;
double attApparition = att;
te.set_caption("Atténuation finale :"+string(att)+"\nAppuyer sur [Entrée]",true);
trialEndCalib.present();
#Inverse
sound24_0.set_attenuation(0);
att = 0;
count = response_manager.total_response_count(1);
loop bool endL = false until endL == true 
begin
	att = att+deltaAtt;
	sound24_0.set_attenuation(att);
	t.set_caption("Appuyer sur [Entrée] dès que vous n'entendez plus le son\nAttenuation : "+string(att),true);
	trialCalib.present();
	if(att == 1 || count != response_manager.total_response_count( 1 ))then
		endL = true;
	end;
end;
double attDisparition = att;
te.set_caption("Atténuation finale :"+string(att),true);
trialEndCalib.present();

te.set_caption("Atténuation finale :"+string((attApparition+attDisparition)/2),true);
trialEndCalib.present();

double attFinale = (attApparition+attDisparition)/2;
deltaAtt = 0.2;
attFinale = attFinale-deltaAtt;
tt.set_caption("Presentation de différentes positions du moustiques\nAtténuation : deltaAtt"+string(deltaAtt),true);
if(!(attFinale <=0))then
		
	loop int s = 1 until s > sounds.count()
	begin
		sounds[s].set_attenuation(attFinale);
		s=s+1;
	end;
end;
trialCalibration.present();
