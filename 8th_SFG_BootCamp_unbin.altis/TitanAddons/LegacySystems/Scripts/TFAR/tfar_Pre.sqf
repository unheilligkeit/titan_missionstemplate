// TFAR-Basic settings (will override userconfig settings)

//Serious Mode
//Spieler automatisch in Channel verschieben wenn TFAR connected und Mission gestartet.
tf_radio_channel_name = "Operation";
//Spieler automatisch Channel PW vergeben
tf_radio_channel_password = "123";	

// Interferenzen durch Gelände.
tf_terrain_interception_coefficient = 1.0;	//7.0; 
					    
TFAR_freq_sr_west = [0,6,["81", "82", "83", "84", "81.1", "83.1", "84.1", "89.3"],0,"_bluefor",-1,0];
publicVariable "TFAR_freq_sr_west";

TFAR_freq_lr_west = [0,6,["80.1","80.2","80.3","80.4","78","78.1","78.2","78.3","78.4"],0,"_bluefor",-1,0];
publicVariable "TFAR_freq_lr_west";

// TITAN Preset frequencies
TF_Sotac_sr_west = [0,6,["78","78.1","78.2","78.3","78.4","80.1","81","88"],0,"_bluefor",-1,0];
publicVariable "TF_Sotac_sr_west";

TF_Pilot_sr_west = [0,6,["78.1","78.2","78.3","78.4","78","80.1","81","88"],0,"_bluefor",-1,0];
publicVariable "TF_Pilot_sr_west";


if (true) exitWith {};
