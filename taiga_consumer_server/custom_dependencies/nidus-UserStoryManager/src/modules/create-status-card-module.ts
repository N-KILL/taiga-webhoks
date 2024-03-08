import { Brown } from "./colors-module";
import { CreateDaysCounterGroup } from "./create-days-counter-module";
import { CreateDateGroup } from "./create-section-date-module";

export function CreateStatusCard (options:{
    cardGroupName: string,
    dataMap: Map<string, any>,
}){
  // Read the function parameters
  const {cardGroupName, dataMap} = options; 

  // Create the frame where all the stuff will be stored
  const cardFrame = figma.createFrame();

  // Modify the color of the frame to be brown
  cardFrame.backgrounds = [
      { type: 'SOLID',
        color: { 
          r: Brown.r, 
          g: Brown.g, 
          b: Brown.g,
        },  
        visible: true,
        opacity: 1
      }
    ];

  // Modify the name of the frame
  cardFrame.name = cardGroupName + " - Status Card" ;
  
  // Resize the frame into 1000px x 1000px 
  cardFrame.resize(800,1000);

  // This is an aux to define the position of the elements on the card
  var textPosition = 0; 
  
  // This is an aux to define the position of the groups
  var groupPositionY = 50; 

  // For each element in the map of the card data
  dataMap.forEach(async (element, key) => {
    // This is a filter to avoid using ended id key values. 
    // Because when you get the data from the Dart server
    // This came with ExternalTextId and the object related to the id
    // So here we re removing that
    if(key.slice(-2).toString() != 'Id' && key.toString() != 'id'){
      // Reading the key amountOfDays 
      if (key === "amountOfDays"){
        const preparationValue = element.preparation;
        const developmentValue = element.development;
        const approbationValue = element.approbation;
        const finalApprobationValue = element.finalApprobation;
        const qualityValue = element.quality;


        // Create a group with the data
        const statsGroup = CreateDaysCounterGroup(
          {
            preparationValue: preparationValue,
            developmentValue: developmentValue,
            approbationValue: approbationValue,
            finalApprobationValue: finalApprobationValue,
            qualityValue: qualityValue
          }
          );

        // Add the stats Group into the frame
        cardFrame.appendChild(statsGroup);

      } 
      else {

        // Read the date
        const date = element.date ?? "00/00/0000";
        
        // Read the user
        const user = element.byUser?.fullName ?? "Not defined";
        
        // Read the user avatar url
        const userAvatar = element.byUser?.userAvatar ?? "https://static-00.iconduck.com/assets.00/user-avatar-icon-512x512-vufpcmdn.png";
        
        // Create distance between the groups positions
        textPosition = textPosition + 156
        
        // Create a group with the data
        const statsGroup = await CreateDateGroup(
          {
            avatarNodeName: cardGroupName + " " + key,
            userAvatar: userAvatar,
            date: date,
            user: user,
            type: key,
            textPosition: textPosition,
            textColorR: 1,
            textColorG: 1,
            textColorB: 1,
          }
          );
          
          // Move the group into the selected position
          statsGroup.y = groupPositionY
          
          // Modify the position aux, to manage new groups
          groupPositionY = groupPositionY + 160;
          
          // Add the stats Group into the frame
          cardFrame.appendChild(statsGroup);
      }
    }
  });

  // Create a line called linea
  const divisorLine = figma.createLine();
  divisorLine.name = "linea divisoria";
  
  // Modify the line position
  divisorLine.x = 0; 
  divisorLine.y = 725; 
  
  // Modify the line to be 1px
  divisorLine.strokeWeight = 2;
  
  // Stretch le line
  divisorLine.constraints = { horizontal: 'STRETCH', vertical: 'STRETCH' };
  
  // Set the size of the line into 1000px of width
  divisorLine.resize(800, 0); 
  
  // Add the line int into  frame
  cardFrame.appendChild(divisorLine);
  
  // Return this group
  return cardFrame;
}