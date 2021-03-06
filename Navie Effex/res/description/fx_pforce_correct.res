CONTAINER fx_pforce_correct
{
	NAME fx_pforce_correct;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LINK PFORCE_CORRECTOR_PARTICLES { ACCEPT { fx_particlegroup; fx_group; } }
			BUTTON PFORCE_CORRECTOR_PARTICLES_SELECTOR {}
			LINK PFORCE_CORRECTOR_DYNAMICS { ACCEPT { fx_liquid; fx_fluid; fx_group;}}
			BUTTON PFORCE_CORRECTOR_DYNAMICS_SELECTOR {}
			LINK PFORCE_CORRECTOR_DURATION { ACCEPT { fx_duration; fx_group; }}
			BUTTON PFORCE_CORRECTOR_DURATION_SELECTOR {}
		}

		LONG PFORCE_CORRECTOR_ITERATIONS { MIN 1; }
		LONG PFORCE_CORRECTOR_INPUT_FACTORY
		{
			CYCLE
			{
				PFORCE_CORRECTOR_INPUT_FACTORY_PASSIVE;
				PFORCE_CORRECTOR_INPUT_FACTORY_VORTICITY;
				PFORCE_CORRECTOR_INPUT_FACTORY_IMPLICIT;
				PFORCE_CORRECTOR_INPUT_FACTORY_DIFFUSE;
			}
		}
		REAL PFORCE_CORRECTOR_SPACING { MIN 0.001; STEP 0.1; MAX 8.0; }
		REAL PFORCE_CORRECTOR_SPRINGFORCE { MIN 0; MAX 100; MAXSLIDER 20; CUSTOMGUI REALSLIDER;}
		BOOL PFORCE_CORRECTOR_FORCERESAMPLING {}
		BOOL PFORCE_CORRECTOR_BOUNDARYPARTICLE {}
	}
}
			