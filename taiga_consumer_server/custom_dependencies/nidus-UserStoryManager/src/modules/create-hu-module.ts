import { Aprobandose, Ilustrandose, Lista, Pesandose, Refinandose, Postergado, Nueva, Desarrolandose, Teasteandose, UAT, Cerrada as Cerrada } from "./colors-module";
import { CreateRectangleWithTitle } from "./create-rectangle-with-title";
import { createCustomText } from "./create-text-module";

export function createUserStory (options:{
    UserStoryName: string,
    UserStoryRefNumber: string,
    UserStoryStatus: string,
    width: number,
    height: number,
    positionY: number | null,
    positionX: number | null, 
}){
    // Function parameters
    const {UserStoryName, UserStoryRefNumber, UserStoryStatus, height, width, positionY ,positionX }= options;

    // Aux var to store the color
    var Color = null;

    // This will read the page where we want to storage all the User Stories
    const userStoryPage = figma.root.findOne(node => node.name === "UserStories") as PageNode;
    
    // Create an aux group to store the status border group
    const statusBorder: BaseNode[] = []; ;

    // Create a section
    const huSection = figma.createSection();
    
    // Modify the name
    huSection.name = "HU - "+ UserStoryRefNumber;

    // Make it void
    huSection.fills = [];

    // Modify the size
    huSection.resizeWithoutConstraints(width, height);

    // Create a component
    const huComponent = figma.createComponent();
    
    // Modify the name
    huComponent.name = "HU - "+ UserStoryRefNumber;

    // Modify the size
    huComponent.resizeWithoutConstraints(width, height);

    // Create the Title
    const huTitle = createCustomText({
      colorR: 1, // If those three values are null the color will be white.
      colorG: 1, // If those three values are null the color will be white.
      colorB: 1, // If those three values are null the color will be white.
      fontSize: 300,
      name: "HU - " + UserStoryRefNumber + " - Title",
      textContent: "HU - " + UserStoryRefNumber + " " + UserStoryName,
      textPosX: 0,
      textPosY: 0
    });

    // Modify the size, and the position of the text
    huTitle.resize(width,500);
    huTitle.textAlignHorizontal = "LEFT";
    huTitle.strokes = [
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
  huTitle.strokeWeight = 5;

    // Modify the color based on the status
    switch (UserStoryStatus) {
        case "NUEVA":
            Color = Nueva;
            break;

        case "REFINANDOSE":
            Color = Refinandose;
            break;

        case "ILUSTRANDOSE":
            Color = Ilustrandose;
            break;

        case "APROBANDOSE":
            Color = Aprobandose;
            break;

        case "PESANDOSE":
            Color = Pesandose;
            break;

        case "LISTA":
            Color = Lista;
            break;

        case "DESARROLLANDOSE":
            Color = Desarrolandose;
            break;

        case "TESTEANDOSE":
            Color = Teasteandose;
            break;

        case "UAT":
            Color = UAT;
            break;

        case "CERRADA":
            Color = Cerrada;
            break;

        case "POSTERGADO":
            Color = Postergado;
            break;
    };

    // Create the Status Title
    const huStatusTitle = createCustomText({
      colorR: Color != null ? Color!.r : 0, 
      colorG: Color != null ? Color!.g : 0, 
      colorB: Color != null ? Color!.b : 0, 
      fontSize: 300,
      name: "HU - " + UserStoryRefNumber + " Status",
      textContent: UserStoryStatus,
      textPosX: 0,
      textPosY: 0
    });

    // Adjust the size, and the position
    huStatusTitle.resize(width,500);
    huStatusTitle.textAlignHorizontal = "RIGHT";
    
    // Create the status color border
    const huStatusBorder = figma.createRectangle();

    // Adjust the size, and the position
    huStatusBorder.resize(8000,4500);
    huStatusBorder.y = 500

    // Make it void
    huStatusBorder.fills = [];

    // Get the borders
    huStatusBorder.strokes = [
      { type: 'SOLID',
        color: { 
        r: Color != null ? Color!.r : 0, 
        g: Color != null ? Color!.g : 0, 
        b: Color != null ? Color!.b : 0, 
        },  
        visible: true,
        opacity: 1
      }
  ];      
  huStatusBorder.strokeWeight = 50;

  // Add the status border stuff into a list
  statusBorder.push(huStatusBorder, huStatusTitle);

  // Create a frame
  const mainFrame = figma.createFrame();

  // Customize the frame
  mainFrame.resize(7600, 4100);
  mainFrame.x = 200;
  mainFrame.y = 700;
  mainFrame.name = "HU - " + UserStoryRefNumber + " - Main Frame";
  mainFrame.fills=[];

  // Create the status card frame
  const statusCardFrame = CreateRectangleWithTitle({
    frameSizeH: 1200,
    frameSizeW: 800,
    sizeH: 1000,
    sizeW: 800,
    title: "ESTADO",
    textSize: 96,
    isFrame: true,
    frameName: "HU - " + UserStoryRefNumber + " - Status Card",
  });
  statusCardFrame.name = "HU - " + UserStoryRefNumber + " - Status";

  // Create the Detail frame
  const detailFrame = CreateRectangleWithTitle({
    frameSizeH: 1200,
    frameSizeW: 6650,
    sizeH: 1000,
    sizeW: 6650,
    title: "DETALLES",
    textSize: 96
  });
  detailFrame.name = "HU - " + UserStoryRefNumber + " - Details";
  detailFrame.x = 950;

  // Create the Previous Screen frame
  const previousScreenFrame = CreateRectangleWithTitle({
    frameSizeH: 1400,
    frameSizeW: 800,
    sizeH: 1200,
    sizeW: 800,
    title: "PANTALLA PREVIA",
    textSize: 80
  });
  previousScreenFrame.name = "HU - " + UserStoryRefNumber + " - Previous Screen";
  previousScreenFrame.y = 1250;

  // Create the Design frame
  const designFrame = CreateRectangleWithTitle({
    frameSizeH: 1400,
    frameSizeW: 6650,
    sizeH: 1200,
    sizeW: 6650,
    title: "DISEÑO",
    textSize: 96
  });
  designFrame.name = "HU - " + UserStoryRefNumber + " - Design";
  designFrame.x = 950;
  designFrame.y = 1250;

  // Create the Client frame
  const clientFrame = CreateRectangleWithTitle({
    frameSizeH: 1400,
    frameSizeW: 6650,
    sizeH: 1200,
    sizeW: 6650,
    title: "CLIENTE",
    textSize: 96
  });
  clientFrame.name = "HU - " + UserStoryRefNumber + " - Client";
  clientFrame.x = 950;
  clientFrame.y = 2700;

  // Put all the elements related with the status border inside of a group called 
  const statsGroup = figma.group(statusBorder, userStoryPage);
  statsGroup.name = "HU - " + UserStoryRefNumber + " - Status Border";

  // Add all the secondary frames inside of the mainFrame
  mainFrame.appendChild(clientFrame);
  mainFrame.appendChild(designFrame);
  mainFrame.appendChild(previousScreenFrame);
  mainFrame.appendChild(detailFrame);
  mainFrame.appendChild(statusCardFrame);

  // Add the main frame node
  huComponent.appendChild(mainFrame);

  // Put the stats group inside of the component
  huComponent.appendChild(statsGroup);
  
  // Put the title inside of the component
  huComponent.appendChild(huTitle);
  
  // Put the component inside of the section
  huSection.appendChild(huComponent);
  huSection.x = positionX != null ? positionX : 0;
};
