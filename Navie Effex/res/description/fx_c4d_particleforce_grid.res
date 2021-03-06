CONTAINER fx_c4d_particleforce_grid
{
	NAME fx_c4d_particleforce_grid;
	//INCLUDE Oparticlebase;

	GROUP ID_OBJECT
	{
		DEFAULT 1;
		GROUP
		{
			COLUMNS 2;
			LINK GRID_PARTICLEFORCE_DYNAMICS {ACCEPT{fx_fluid; fx_liquid; fx_channel_velocity;}}
			BUTTON GRID_PARTICLEFORCE_DYNAMICS_SELECTOR {}
		}

		SEPARATOR {LINE;}

		BOOL GRID_PARTICLEFORCE_INSIDELIQUID {}
		LONG GRID_PARTICLEFORCE_TIMESTEP_MODE
		{
			CYCLE
			{
				GRID_PARTICLEFORCE_TIMESTEP_MODE_SIM;
				GRID_PARTICLEFORCE_TIMESTEP_MODE_C4D;
				GRID_PARTICLEFORCE_TIMESTEP_MODE_CUSTOM;
			}
		}
		REAL GRID_PARTICLEFORCE_TIMESTEP { STEP 0.001; MIN 0.001;}

		SEPARATOR {LINE;}

		REAL GRID_PARTICLEFORCE_STRENGTH { STEP 0.01; }
		REAL GRID_PARTICLEFORCE_BLENDORIG {MIN 0; MAX 100; CUSTOMGUI REALSLIDER; UNIT PERCENT; }
		REAL GRID_PARTICLEFORCE_DRAG	{MIN 0; MAX 100; CUSTOMGUI REALSLIDER; UNIT PERCENT; }

		SEPARATOR {LINE;}

		REAL GRID_PARTICLEFORCE_BUOYANCY { STEP 0.01; }
	}	
}