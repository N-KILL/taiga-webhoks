import { createCustomText } from "./create-text-module";
import { dayCounterColorSelector } from "./helpers/day-counter-color-selector-module";

// This function create the part of below of the status card, only have titles and values
// formatted at the way the card was created on figma originally
export function CreateDaysCounterGroup ( options: {
    preparationValue: string,
    developmentValue: string,
    approbationValue: string,
    finalApprobationValue: string,
    qualityValue: string
}){
    // Read the parameters of the function
    const {
        approbationValue, 
        developmentValue, 
        finalApprobationValue,
        preparationValue, 
        qualityValue
    } = options;

    // This is used to divide the quality value, which came as "number" + "number".
    // getting a list of 2 values, [0] its the one on the left, and [1] its the one on the right
    const qualityValues = qualityValue.split("+");

    // This will read the page where we want to storage all the User Stories
    const userStoryPage = figma.root.findOne(node => node.name === "UserStories") as PageNode;
    
    // List to storage the nodes
    const groupList: BaseNode[] = []; 

    // Text for the preparation title
    const preparationTextTitle = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 24,
        name: "Preparacion",
        textContent: "En preparación",
        textPosX: 50,
        textPosY: 750
    });

    // Text for the preparation value
    const preparationTextValue = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 50,
        name: "Preparacion-Value",
        textContent: preparationValue,
        textPosX: 50,
        textPosY: 780
    });

    // Text for the development title
    const developmentTextTitle = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 24,
        name: "Desarrollo",
        textContent: "En desarrollo",
        textPosX: 50,
        textPosY: 880
    });

    // Text for the development value
    const developmentTextValue = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 50,
        name: "Desarrollo-Value",
        textContent: developmentValue,
        textPosX: 50,
        textPosY: 910
    });

    
    // Text for the approbation title
    const approbationTextTitle = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 24,
        name: "Aprobacion",
        textContent: "En aprobación",
        textPosX: 550,
        textPosY: 750
    });

    // Text for the approbation value
    const approbationTextValue = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 50,
        name: "Aprobacion-Value",
        textContent: approbationValue,
        textPosX: 550,
        textPosY: 780
    });

    // Text for the final approbation title
    const finalApprobationTextTitle = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 24,
        name: "Aprobacion final",
        textContent: "En aprobación final",
        textPosX: 525,
        textPosY: 880
    });

    // Text for the final approbation value
    const finalApprobationTextValue = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 50,
        name: "AprobacionFinal-Value",
        textContent: finalApprobationValue,
        textPosX: 550,
        textPosY: 910
    });

    // Text for the final quality title
    const qualityTextTitle = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 24,
        name: "Calidad",
        textContent: "Calidad",
        textPosX: 300,
        textPosY: 820
    });

    // Text for the Quality value on the left
    const qualityTextValueLeft = createCustomText({
        colorB: 1,
        colorG: 1,
        colorR: 1,
        fontSize: 50,
        name: "Calidad-Value",
        textContent: qualityValues[0],
        textPosX: 300,
        textPosY: 845
    });

    // Text for the Quality value on the middle (will be the + symbol)
    const qualityTextValuePlusSymbol = createCustomText({
      colorB: 1,
      colorG: 1,
      colorR: 1,
      fontSize: 50,
      name: "Calidad-Value",
      textContent: "+",
      textPosX: 375,
      textPosY: 845
    });

    // Text for the Quality value on the right
    const qualityTextValueRight = createCustomText({
      colorB: 1,
      colorG: 1,
      colorR: 1,
      fontSize: 50,
      name: "Calidad-Value",
      textContent: qualityValues[1],
      textPosX: 425,
      textPosY: 845
    });
    // Here start the code of the modify section, the position, size, color, etc.

    // Aux to store the color
    var color = {
      "r": 1,
      "g": 1,
      "b": 1,
    };

    // Modify the size of the text box, and center the content 
    preparationTextTitle.resize(200,34);
    preparationTextTitle.textAlignHorizontal = 'CENTER';
    preparationTextValue.resize(200,61);
    preparationTextValue.textAlignHorizontal = 'CENTER';

    // Update the color before change it 
    color = dayCounterColorSelector({type: null, value: parseInt(preparationValue)});

    // Change the color based on the color var
    preparationTextValue.fills = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
    ];
    
    // Change the color of the stroke based on the color var
    preparationTextValue.strokes = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
      ];

    // Make the stroke 2px
    preparationTextValue.strokeWeight = 2;

    // Modify the size of the text box, and center the content 
    developmentTextTitle.resize(200,34);
    developmentTextTitle.textAlignHorizontal = 'CENTER';
    developmentTextValue.resize(200,61);
    developmentTextValue.textAlignHorizontal = 'CENTER';
    
    // Update the color before change it 
    color = dayCounterColorSelector({type: null, value: parseInt(developmentValue)});

    // Change the color based on the color var
    developmentTextValue.fills = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
    ];
    
    // Change the color of the stroke based on the color var
    developmentTextValue.strokes = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
      ];

    // Make the stroke 2px
    developmentTextValue.strokeWeight = 2;


    // Modify the size of the text box, and center the content 
    approbationTextTitle.resize(200,34);
    approbationTextTitle.textAlignHorizontal = 'CENTER';
    approbationTextValue.resize(200,61);
    approbationTextValue.textAlignHorizontal = 'CENTER';

    // Update the color before change it 
    color = dayCounterColorSelector({type: null, value: parseInt(approbationValue)});

    // Change the color based on the color var
    approbationTextValue.fills = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
    ];
    
    // Change the color of the stroke based on the color var
    approbationTextValue.strokes = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
      ];

    // Make the stroke 2px
    approbationTextValue.strokeWeight = 2;

    // Modify the size of the text box, and center the content 
    finalApprobationTextTitle.resize(250,34);
    finalApprobationTextTitle.textAlignHorizontal = 'CENTER';
    finalApprobationTextValue.resize(200,61);
    finalApprobationTextValue.textAlignHorizontal = 'CENTER';

    // Update the color before change it 
    color = dayCounterColorSelector({type: null, value: parseInt(finalApprobationValue)});

    // Change the color based on the color var
    finalApprobationTextValue.fills = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
    ];
    
    // Change the color of the stroke based on the color var
    finalApprobationTextValue.strokes = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
      ];

    // Make the stroke 2px
    finalApprobationTextValue.strokeWeight = 2;

    // Modify the size of the text box, and center the content 
    qualityTextTitle.resize(200,34);
    qualityTextTitle.textAlignHorizontal = 'CENTER';

    // Left value
    qualityTextValueLeft.resize(75,61);
    qualityTextValueLeft.textAlignHorizontal = 'CENTER';

    // Symbol
    qualityTextValuePlusSymbol.resize(50,61);
    qualityTextValuePlusSymbol.textAlignHorizontal = 'CENTER';

    // Right value
    qualityTextValueRight.resize(75,61);
    qualityTextValueRight.textAlignHorizontal = 'CENTER';
    
    // Update the color before change it 
    color = dayCounterColorSelector({type: "quality", value: parseInt(qualityValues[0])});

    // Change the color based on the color var
    qualityTextValueLeft.fills = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
    ];
    
    // Change the color of the stroke based on the color var
    qualityTextValueLeft.strokes = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
      ];

    // Make the stroke 2px
    qualityTextValueLeft.strokeWeight = 2;

    // Update the color before change it 
    color = dayCounterColorSelector({type: "quality", value: parseInt(qualityValues[1])});

    // Change the color based on the color var
    qualityTextValueRight.fills = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
    ];
    
    // Change the color of the stroke based on the color var
    qualityTextValueRight.strokes = [
        { type: 'SOLID',
          color: { 
            r: color!.r, 
            g: color!.g,
            b: color!.b,
          },  
          visible: true,
          opacity: 1
        }
      ];

    // Make the stroke 2px
    qualityTextValueRight.strokeWeight = 2;


    // Add all the elements into a list
    groupList.push(
      qualityTextValueLeft,
      qualityTextValueRight,
      qualityTextValuePlusSymbol, 
      qualityTextTitle, 
      finalApprobationTextValue, 
      finalApprobationTextTitle, 
      approbationTextValue, 
      approbationTextTitle,
      developmentTextValue,
      developmentTextTitle,
      preparationTextValue,
      preparationTextTitle
    )

    // Put all the elements inside of a group called "Dias gastados"
    const statsGroup = figma.group(groupList, userStoryPage);
    statsGroup.name = "Dias gastados";

    // Return the list of nodes
    return statsGroup;

}