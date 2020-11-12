#header
scenario = "Scenario 1";
default_background_color = 255,255,255;

begin;

#SDL Part
picture {
	text text1;
	x = 0; y = 0;
} pic1;
picture {
	text text2;
	x = 0; y = 0;
} pic2;
array{
	trial {
		trial_duration = 1000;
		
		stimulus_event{
			picture pic1;
			time = 0;
			code = "TestStimul";
			target_button = "A";
		}event1;
		
	} trial1;
	trial {
		trial_duration = 1000;
		
		stimulus_event{
			picture pic2;
			time = 0;
			code = "TestStimul2";
			target_button = "Z";
		}event2;
		
	} trial2;
}alltrials;
begin_pcl;

#PCL part

alltrials[1].present();


alltrials[2].present();