%module windrose
%include cpointer.i
%include carrays.i
%array_class(int, intArray);

%{
#include "windrose.h"
extern int const NUM_SECTORS = 16;
extern int const NUM_SPEEDBINS = 7;
extern int wr[4][NUM_SECTORS][NUM_SPEEDBINS];

typedef struct MesoData {
	float wSpd;
	float wDirn;
};


extern int calcSpeedBin(float windSpd);
extern int calcDirectBin(float windDir);
extern void readMesoData(const char* filename);
extern void displayArray();

%}

extern int calcSpeedBin(float windSpd);
extern int calcDirectBin(float windDir);
extern void readMesoData(const char* filename);
extern void displayArray();
