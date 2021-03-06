CONTAINER fx_coffee_extension
{
	NAME fx_coffee_extension;
	
	GROUP FX_COFFEE_GROUP
	{		
		DEFAULT 1;
		
		SCALE_V;
		GROUP
		{
			SCALE_V;
			GROUP
			{
				COLUMNS 2;
				BUTTON FX_COFFEE_OPEN {}
				BUTTON FX_COFFEE_COMPILE {}
			}
			STRING FX_COFFEE_CODE {SCALE_V; CUSTOMGUI MULTISTRING;}
		}

		SEPARATOR{LINE;}

		IN_EXCLUDE FX_COFFEE_VALUES
		{
			NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 1;
			ACCEPT {  fx_rate; };
		}
	}
}