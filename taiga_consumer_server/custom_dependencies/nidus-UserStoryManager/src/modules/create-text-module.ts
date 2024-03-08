// This function is for create a text with custom attributes
export function createCustomText(options:{
    textContent: string,
    colorR: number | null,
    colorG: number | null,
    colorB: number | null,
    fontSize: number | null,
    textPosX: number | null,
    textPosY: number | null,
    name: string | null,
  }){
    const {
      // This is the content of the text box. What is inside of the text
      textContent,

      // This is used for the RGB values of the text color, this is for the RED one
      colorR, 

      // This is used for the RGB values of the text color, this is for the GREEN one
      colorG, 

      // This is used for the RGB values of the text color, this is for the BLUE one
      colorB, 

      // This value is used to set the font size
      fontSize,

      // This value is used to set the X cords, position of the text
      textPosX,

      // This value is used to set the Y cords, position of the text
      textPosY,
      
      // This values is used to set the name of the text on figma
      name
    } = options;
  
    // Create the text instance and storage into the text const var
    const text = figma.createText();
    
    // If the function was called with a name value on it, this will 
    // modify the text name, otherwise, will ignore it
    if (name) {
      text.name = name
    }
  
    // define the content of the text
    text.characters = (textContent);
  
    // If the function was called with a font size value on it, this 
    // will modify the text name, otherwise, will ignore it
    if (fontSize) {
      text.fontSize = fontSize;
    }
  
    // define text font color (Default value black)
    text.fills = [{ 
        type: "SOLID", 
        color: { 
            r: colorR != null ? colorR : 0, 
            g: colorG != null ? colorG : 0, 
            b: colorB != null ? colorB : 0 
          },
      }];
  
    // Set the position of the text (Default value 0)
    text.x = textPosX != null ? textPosX : 0;
    text.y = textPosY != null ? textPosY : 0;
  
    // Return the text object
    return text; 
}
