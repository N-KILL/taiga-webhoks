// This colors-module is used to storage all the color configuration, 
// if you want to create a new color, use this file. Also if you want
// to modify a color, yo have to do it here.

// Important, the way FIGMA manage the colors its using his value 
// divided into the max. (Which is 255). So if you have a color on HEX,
// you have to read de the RGB Values, and divide each one by 255, that 
// is the value you have to put in the colors vars R,G,B. Example:

// Random RED Color RGB Values:

// R200, G80, B80. 
// To convert this values into usable ones, you have to do the next.
// red color will be: 200/255, so '0,784',
// green color will be: 80/255, so '0,313',
// blue color will be: 80/255, so '0,313',

//#region Colors 

// Yellow Color RGB Values
const White = {
  'r':1,
  'g':1,
  'b':1,
};
  

// Yellow Color RGB Values
const Yellow = {
  'r':1,
  'g':1,
  'b':0,
};
  
// Green Color RGB Values
const Green = {
  'r':0,
  'g':1,
  'b':0,
};
  
// Red Color RGB Values
const Red = {
  'r':1,
  'g':0,
  'b':0,
};

// Brown Color RGB Values
const Brown ={
  'r':0.313,
  'g':0.286,
  'b':0.286,
};
  
// Grey Color RGB Values
const Grey ={
  'r':0.384,
  'g':0.439,
  'b':0.470,
};
//#endregion

//#region Taiga US status colors

// Custom status value from taiga, for 'NUEVA'
const Nueva ={
  'r':0.439,
  'g':0.447,
  'b':0.560,
};

// Custom status value from taiga, for 'REFINANDOSE'
const Refinandose ={
  'r':0.894,
  'g':0.250,
  'b':0.341,
};

// Custom status value from taiga, for 'ILUSTRANDOSE'
const Ilustrandose ={
  'r':0.894,
  'g':0.486,
  'b':0.250,
};

// Custom status value from taiga, for 'PESANDOSE'
const Pesandose ={
  'r':0.811,
  'g':0.827,
  'b':0.313,
};

// Custom status value from taiga, for 'APROBANDOSE'
const Aprobandose ={
  'r':0.894,
  'g':0.807,
  'b':0.250,
};

// Custom status value from taiga, for 'LISTA'
const Lista ={
  'r':0.658,
  'g':0.894,
  'b':0.250,
};

// Custom status value from taiga, for 'DESARROLLANDOSE'
const Desarrollandose ={
  'r':0.317,
  'g':0.811,
  'b':0.827,
};

// Custom status value from taiga, for 'TESTEANDOSE'
const Teasteandose ={
  'r':0.674,
  'g':0.317,
  'b':0.827,
};

// Custom status value from taiga, for 'APROBADA UAT'
const UAT ={
  'r':0.470,
  'g':0.827,
  'b':0.317,
};

// Custom status value from taiga, for 'CERRADA'
const Cerrada ={
  'r':0.317,
  'g':0.827,
  'b':0.333,
};

// Custom status value from taiga, for 'POSTERGADO'
const Postergado ={
  'r':0.066,
  'g':0.200,
  'b':0.733,
};

//#endregion

export { Nueva, Refinandose, Ilustrandose, Aprobandose, Pesandose, Lista, Desarrollandose as Desarrolandose, Teasteandose, UAT, Cerrada, Postergado, Brown, Green, Grey, Red, Yellow, White};
  