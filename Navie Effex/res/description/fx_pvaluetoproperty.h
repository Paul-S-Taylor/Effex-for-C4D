#ifndef FX_PVALUETOPROPERTY_H
#define FX_PVALUETOPROPERTY_H

enum
{	
	ID_PVALUETOPROPERTY_BASE = 2000,
	
	PVALUETOPROPERTY_PARTICLES = 1000,
	PVALUETOPROPERTY_WEIGHTEDPOS = 1003,
	PVALUETOPROPERTY_RADIUS,
	PVALUETOPROPERTY_KERNEL = 1005,
		PVALUETOPROPERTY_KERNEL_GAUSS = 0,
		PVALUETOPROPERTY_KERNEL_POLY6,
		PVALUETOPROPERTY_KERNEL_POLY6SMOOTH,
		PVALUETOPROPERTY_KERNEL_VISCOSITY,
		PVALUETOPROPERTY_KERNEL_SPIKEY,
		PVALUETOPROPERTY_KERNEL_SPIKEYSMOOTH,
		PVALUETOPROPERTY_KERNEL_SMOOTH,
		PVALUETOPROPERTY_KERNEL_SHARP,
		PVALUETOPROPERTY_KERNEL_WYVILL,
		PVALUETOPROPERTY_KERNEL_BLINN,
		PVALUETOPROPERTY_KERNEL_SPLINE,
		PVALUETOPROPERTY_KERNEL_POLYNOMIAL,
	PVALUETOPROPERTY_PARTICLES_SELECTOR = 1006,
	PVALUETOPROPERTY_PROPERTY_SELECTOR,

	PVALUETOPROPERTY_DENSITY,
	PVALUETOPROPERTY_ISODENSITY,
	PVALUETOPROPERTY_WEIGHTEDRAD,

	PVALUETOPROPERTY_INPUT_FACTORY = 1011,
		PVALUETOPROPERTY_INPUT_FACTORY_PASSIVE = 0,
		PVALUETOPROPERTY_INPUT_FACTORY_VORTICITY,
		PVALUETOPROPERTY_INPUT_FACTORY_IMPLICIT,
		PVALUETOPROPERTY_INPUT_FACTORY_DIFFUSE,
	PVALUETOPROPERTY_KERNELNODE = 1012,
	PVALUETOPROPERTY_KERNELNODE_SELECTOR,

	PVALUETOPROPERTY_DUMMY_

};

#endif