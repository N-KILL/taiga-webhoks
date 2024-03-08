import { Brown } from "./colors-module";

// This function will return a frame with a brown custom sized rectangle with a title on the middle of it
export function CreateRectangleWithTitle (options:{
  title: string,
  sizeW: number,
  sizeH: number,
  frameSizeW: number,
  frameSizeH: number,
  textSize: number,
  isFrame?: boolean,
  frameName?: string
  }){
    // Read the function parameters
    const { sizeH, sizeW, title, frameSizeH, frameSizeW, textSize, isFrame = false, frameName = null} = options;

    // Create the frame with the custom size and void color
    const frame = figma.createFrame();
    frame.resize(frameSizeW, frameSizeH);
    frame.fills = [];
    
    // Aux to store the rectangle
    var rectangle = null;

    // If its a frame
    if(isFrame){
      // Create a frame node
      rectangle = figma.createFrame();
    } else {
      // Create a rectangle node
      rectangle = figma.createRectangle();
    }

    // Create the rectangle with the custom size
    rectangle.resize(sizeW, sizeH);

    // Make the rectangle brown
    rectangle.fills = [
        { type: 'SOLID',
          color: { 
          r: Brown.r, 
          g: Brown.g,
          b: Brown.b,
          },  
          visible: true,
          opacity: 1
        }
    ];

    // Set the position of the rectangle frame or node
    rectangle.y = 200;

    // Put the name into the rectangle frame or node
    if (frameName != null){
      rectangle.name = frameName;
    }

    // Create the title of the frame
    const frameTitle = figma.createText();
    frameTitle.characters = title;
    frameTitle.resize(frameSizeW, 200);
    frameTitle.textAlignHorizontal = "CENTER";
    frameTitle.strokeWeight = 3;
    frameTitle.fontSize = textSize;
    frameTitle.fills = [
        { type: 'SOLID',
          color: { 
          r: 1, 
          g: 1,
          b: 1,
          },  
          visible: true,
          opacity: 1
        }
    ];

    // Add the element to the frame
    frame.appendChild(frameTitle);
    frame.appendChild(rectangle);

    // return the frame
    return frame;
}