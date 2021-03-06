#ifndef FX_SOUND_H
#define FX_SOUND_H

enum
{
	FXSOUND_FILE = 1000,
	FXSOUND_GRAPH,
	FXSOUND_INFO,
	FXSOUND_FREQGRAPH,
		
	FXSOUND_FILTER = 1004,
		FXSOUND_FILTER_UNIFORM = 0,
		FXSOUND_FILTER_HANN,
		FXSOUND_FILTER_HAMMING,
		FXSOUND_FILTER_BLACKMAN,
		FXSOUND_FILTER_BLACKMANHARRIS,
		FXSOUND_FILTER_BLACKMANNUTTAL,
		FXSOUND_FILTER_FLATTOP,
		FXSOUND_FILTER_BARTLETT,
		FXSOUND_FILTER_BARTLETTHANN,
		FXSOUND_FILTER_COSINE,
		FXSOUND_FILTER_LANCZOS,
		FXSOUND_FILTER_PLANCKTAPER,
	FXSOUND_FILTER_GRAPH = 1005,
	FXSOUND_GAIN,
	FXSOUND_FALLOFF,
	FXSOUND_FREQMIN,
	FXSOUND_FREQMAX,
	FXSOUND_PLAYMODE = 1010,
		FXSOUND_PLAYMODE_OFF = 0,
		FXSOUND_PLAYMODE_CONTINOUS,
		FXSOUND_PLAYMODE_PERFRAME,
	FXSOUND_PREVIEWSIZE = 1011,
	FXSOUND_FFTSAMPLES = 1012,
		FXSOUND_FFTSAMPLES_32 = 5,
		FXSOUND_FFTSAMPLES_64,
		FXSOUND_FFTSAMPLES_128,
		FXSOUND_FFTSAMPLES_256,
		FXSOUND_FFTSAMPLES_512,
		FXSOUND_FFTSAMPLES_1024,
		FXSOUND_FFTSAMPLES_2048,
		FXSOUND_FFTSAMPLES_4096,
	FXSOUND_START = 1013,

	FXSOUND_DUMMY_
		
};

#endif