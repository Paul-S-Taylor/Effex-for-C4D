CONTAINER fx_force_coffee
{
	NAME fx_force_coffee;
	INCLUDE fx_force_base;
	INCLUDE fx_coffee_extension;
	INCLUDE fx_base_constraints;
	INCLUDE fx_base_display_inspector;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK   FORCE_COFFEE_SETTINGS { ACCEPT {fx_emission_setting; fx_group;}}
			BUTTON FORCE_COFFEE_SETTINGS_SELECTOR {}
			LINK FORCE_COFFEE_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON FORCE_COFFEE_DURATION_SELECTOR {}	
		}
		
		SEPARATOR{LINE;}

		REAL   FORCE_COFFEE_INTENSITY { UNIT PERCENT; MIN -100000; MAX 100000; MINSLIDER -100; MAXSLIDER 100; CUSTOMGUI REALSLIDER;}
	}
}
			