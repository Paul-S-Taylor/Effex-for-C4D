CONTAINER fx_properties_particles
{
	NAME fx_properties_particles;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK	PROPERTIES_PARTICLES_GROUP { ACCEPT {fx_particlegroup; fx_group; 1001381; Obase; Oparticle;1027133;fx_mesh;fx_mesh_multi;} }
			BUTTON	PROPERTIES_PARTICLES_GROUP_SELECTOR {}
			LINK	PROPERTIES_PARTICLES_DURATION { ACCEPT {fx_duration; fx_group;} }	
			BUTTON	PROPERTIES_PARTICLES_DURATION_SELECTOR {}
			IN_EXCLUDE PROPERTIES_PARTICLES_CHANNELVALUES
			{
				NUM_FLAGS 0; INIT_STATE 0; SEND_SELCHNGMSG 0;
				ACCEPT {  fx_channelvalue; };
			}
			BUTTON	PROPERTIES_PARTICLES_CHANNELVALUES_SELECTOR {}
		}
		
		SEPARATOR{LINE;}

		LONG	PROPERTIES_PARTICLES_PARTICLES
		{
			CYCLE
			{
				PROPERTIES_PARTICLES_PARTICLES_PASSIVE;
				PROPERTIES_PARTICLES_PARTICLES_VORTICITY;
				PROPERTIES_PARTICLES_PARTICLES_LIQUID;
				PROPERTIES_PARTICLES_PARTICLES_DIFFUSE;
			}
		}
		REAL PROPERTIES_PARTICLES_RADIUS {MIN 0.01; STEP 0.1;}
		BOOL PROPERTIES_PARTICLES_EMIT_PROPERTIES {}
		BOOL PROPERTIES_PARTICLES_RATEMODE {HIDDEN;}

		SEPARATOR {LINE;}
		
		REAL	PROPERTIES_PARTICLES_MASSINFLUENCE {MIN 0; UNIT PERCENT;}
		REAL	PROPERTIES_PARTICLES_SIZEINFLUENCE {MIN 0; UNIT PERCENT;}
			
		LONG	PROPERTIES_PARTICLES_RADFALLOFF
		{
			CYCLE
			{
				PROPERTIES_PARTICLES_RADFALLOFF_NONE;
				PROPERTIES_PARTICLES_RADFALLOFF_LINEAR;
				PROPERTIES_PARTICLES_RADFALLOFF_CUSTOM;
			}
		}
		GRADIENT PROPERTIES_PARTICLES_RADFALLOFF_GRAD {ALPHA; ANIM ON;}		
	}
	GROUP ID_FORCE_BASE_CONSTRAINTS
	{
		LONG PROPERTIES_PARTICLES_CONSTRAINTMODE
		{
			CYCLE
			{
				PROPERTIES_PARTICLES_CONSTRAINTMODE_BOTH;
				PROPERTIES_PARTICLES_CONSTRAINTMODE_PARTICLES;
			}
		}
	}
}