
active_buttons = 1;
button_codes = 1;

begin;
sound {wavefile { filename = "song.wav";};} sound1;
array{
sound { wavefile { filename = "1000ms/audioMosquito0_m5.wav";};} sound0_m5;
sound { wavefile { filename = "1000ms/audioMosquito3_m4.wav";};} sound3_m4;
sound { wavefile { filename = "1000ms/audioMosquito4_m2.wav";};} sound4_m2;
sound { wavefile { filename = "1000ms/audioMosquito5_0.wav";};} sound5_0;
sound { wavefile { filename = "1000ms/audioMosquito4_2.wav";};} sound4_2;
sound { wavefile { filename = "1000ms/audioMosquito3_4.wav";};} sound3_4;
sound { wavefile { filename = "1000ms/audioMosquito0_5.wav";};} sound0_5;

sound { wavefile { filename = "1000ms/audioMosquito0_m41.wav";};} sound0_m41;
sound { wavefile { filename = "1000ms/audioMosquito21_m36.wav";};} sound21_m36;
sound { wavefile { filename = "1000ms/audioMosquito36_m20.wav";};} sound36_m20;
sound { wavefile { filename = "1000ms/audioMosquito41_0.wav";};} sound41_0;
sound { wavefile { filename = "1000ms/audioMosquito36_20.wav";};} sound36_20;
sound { wavefile { filename = "1000ms/audioMosquito21_36.wav";};} sound21_36;
sound { wavefile { filename = "1000ms/audioMosquito0_41.wav";};} sound0_41;

sound { wavefile { filename = "1000ms/audioMosquito0_14.wav";};} sound0_14;
sound { wavefile { filename = "1000ms/audioMosquito0_24.wav";};} sound0_24;
sound { wavefile { filename = "1000ms/audioMosquito0_m14.wav";};} sound0_m14;
sound { wavefile { filename = "1000ms/audioMosquito0_m24.wav";};} sound0_m24;


sound { wavefile { filename = "ExMouvement/audioMosquitoFrom0_-5to3_-4.wav";};} soundFrom0_m5to3_m4;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom0_24to0_41.wav";};} soundFrom0_24to0_41;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom0_41to41_0.wav";};} soundFrom0_41to41_0;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom3_4to0_5.wav";};} soundFrom3_4to0_5;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom3_-4to4_-2.wav";};} soundFrom3_m4to4_m2;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom4_2to3_4.wav";};} soundFrom4_2to3_4;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom4_-2to5_0.wav";};} soundFrom4_m2to5_0;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom5_0to4_2.wav";};} soundFrom5_0to4_2;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom21_36to0_41.wav";};} soundFrom21_36to0_41;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom24_0to41_0.wav";};} soundFrom24_0to41_0;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom41_0to0_24.wav";};} soundFrom41_0to0_24;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom41_0to21_36.wav";};} soundFrom41_0to21_36;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom0_-24to0_-14.wav";};} soundFrom0_m24to0_m14;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom0_-41to0_-24.wav";};} soundFrom0_m41to0_m24;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom0_14to0_24.wav";};} soundFrom0_14to0_24;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom24_0to14_0.wav";};} soundFrom24_0to14_0;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom21_-36to36_-20.wav";};} soundFrom21_m36to36_m20;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom36_-20to41_0.wav";};} soundFrom36_m20to41_0;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom41_0to36_20.wav";};} soundFrom41_0to36_20;
sound { wavefile { filename = "ExMouvement/audioMosquitoFrom36_20to21_36.wav";};} soundFrom36_20_to21_36;
}sounds;



trial{
	stimulus_event{
		sound sound1;
		time = 0;
		duration = 3000;
	}s1;

	stimulus_event{
		sound sound1;
		time = 3000;
		duration = 1000;
	}s2;
	
	stimulus_event{
		sound sound1;
		time = 4000;
		duration = 1000;
	}s3;
	stimulus_event{
		text{
			caption = "Appuyer sur entrer pour passer au sons suivants";
		};
		response_active = true;
		target_button = 1;
		duration = response;
		time = 3000;
	};
}trcourt;
trial{
	stimulus_event{
		sound sound1;
		time = 0;
		duration = 7000;
	}l1;

	stimulus_event{
		sound sound1;
		time = 7000;
		duration = 1000;
	}l2;
	
	stimulus_event{
		sound sound1;
		time = 8000;
		duration = 1000;
	}l3;
	stimulus_event{
		text{
			caption = "Appuyer sur entrer pour passer au sons suivants"
		};
		response_active = true;
		target_button = 1;
		duration = response;
		time = 9000;
	};
}trlong;

begin_pcl;
array <int> s[48] = {1, 2, 19,
2, 3, 23,
3,4, 25,
4,5, 26,
5,6,24,
6,7,22,
8,9,19,
9,10,35,
10,11,36,
11,12,37,
12,13,38,
13,14,27,
18, 17,31,
8, 18, 32,
16, 14, 28,
15, 16, 33};
array <int> ind[16] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
s=s.shuffle();
loop int j = 1 until j > s.count()
begin
	int i = ind[j];
	sound so1 = sounds[(i-1)*3+1];
	sound so2 = sounds[(i-1)*3+2];
	sound so3 = sounds[(i-1)*3+3];
	if(s[(i-1)*3+3]>=35)then
		#Long son
		l1.set_stimulus(so3);
		l2.set_stimulus(so1);
		l3.set_stimulus(so2);
		trlong.present();
	else
		#Court son
		s1.set_stimulus(so3);
		s2.set_stimulus(so1);
		s3.set_stimulus(so2);
		trcourt.present();
	end;
	j=j+1;
end;