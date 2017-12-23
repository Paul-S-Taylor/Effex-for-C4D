CONTAINER fx_constraint_strain
{
	NAME fx_constraint_strain;
	INCLUDE fx_constraint;
	
	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK CONSTRAINT_STRAIN_CHANNEL { ACCEPT{ fx_channel_vector; fx_channel_velocity; fx_liquid; fx_fluid; fx_group;} }
			BUTTON CONSTRAINT_STRAIN_CHANNEL_SELECTOR {}
		}

		GROUP CONSTRAINT_PARAMS_SID
		{			
			LONG CONSTRAINT_STRAIN_MODE
			{
				CYCLE
				{
					CONSTRAINT_STRAIN_MODE_MEAN;
					CONSTRAINT_STRAIN_MODE_SHEAR;
					CONSTRAINT_STRAIN_MODE_NORMALX;
					CONSTRAINT_STRAIN_MODE_NORMALY;
					CONSTRAINT_STRAIN_MODE_NORMALZ;
					CONSTRAINT_STRAIN_MODE_SHEARXY;
					CONSTRAINT_STRAIN_MODE_SHEARXZ;
					CONSTRAINT_STRAIN_MODE_SHEARYZ;
				}
			}
			BOOL CONSTRAINT_STRAIN_ABSOLUTE {}
			REAL CONSTRAINT_STRAIN_LENGTH { MIN 0.001; STEP 0.01; }
		}
	}
}