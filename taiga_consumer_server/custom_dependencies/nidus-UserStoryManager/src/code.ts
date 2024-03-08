import { createUserStory } from "./modules/create-hu-module";
import { ReadFigmaUserStorySection } from "./modules/read-us-components-module";
import { updateUserStoryStatus } from "./modules/update-hu-status-module";
import { CreateStatusCard } from "./modules/create-status-card-module";
import { JsonToMap } from "./modules/helpers/map-parse-module";
import { ModifyOpacityOfExternalUserStory } from "./modules/helpers/verify-external-us-module";
import { fetchProjectData } from "./modules/action";
import { ReadSprintSectionsPos } from "./modules/read-sprint-sections-module";
import { apiUrl, bodyData } from "./config";
import { loadFont } from "./modules/helpers/load-font";

// This is the full base of the nidus plugin, have all the interaction made with the
// data received from the database
async function main (){

  // Load the default figma font to prevent errors
  await loadFont();

  // Locate the current page where the plugin is executing 
  const currentPage = figma.currentPage;

  // If the current page isn't called UserStories, return an error
  if (currentPage.name != "UserStories"){
    figma.notify("Ejecute el plugin en la pagina de UserStories");
    figma.closePlugin();
  }

  // Send a notification
  figma.notify("Nidus Plugin");

  // Aux var to choose where the new hu component, will be created
  var createPosition = 0;

  // Read if already exist components, to select the position of the new ones, or modify
  var alreadyExistHU = ReadFigmaUserStorySection();

  // This will modify the opacity of all elements inside of an user story where the name doesn't 
  // match the user story name
  ModifyOpacityOfExternalUserStory();

  // Switch the position value to the new one below
  if (alreadyExistHU){
    createPosition = alreadyExistHU["Highest HU"] + 1000;
  };

  try {
    // Fetch the data of the api, and then execute the different actions
    await fetchProjectData(apiUrl, bodyData)
    .then(fetchAPI => { fetchAPI.forEach(async element => {
  
      // Aux used to compare the existent element on the figma page
      // The name of any element generated with the plugin, usually will 
      // have this name, so is used to find some element, and create
      const componentName = "HU - " + element.huData.refNum
  
      // Based on the action of the payload
      switch (element.action) {
        
        // When the action is "create_hu"
        case "create_hu":
  
          console.log('Running create_hu')
  
          
          // If the UserStory is not already part of the figma project
          if (alreadyExistHU?.["List of components"].find((listElement) => listElement === componentName) === undefined) {
            
            // Create the UserStory component
            createUserStory({
              UserStoryName: element.huData.name,
              UserStoryRefNumber: element.huData.refNum.toString(),
              UserStoryStatus: element.huData.status,
              height: 5000,
              width: 8000,
              positionY: null,
              positionX: createPosition,
            });
            
            // Switch the position value into the new one, 
            // will be the same value + the width value 1500 of the component + 500 to create some space
            createPosition = createPosition + 9000;
  
            // Send a figma notification 
            figma.notify("Se creo la historia de usuario N°: " + element.huData.refNum);
          
            break;
          }
  
          
          break;
        
        // When the action is "update_hu_status"
        case "update_hu_status":
  
          console.log('Running update_hu_status')
  
          // Update the list to prevent errors
          alreadyExistHU = ReadFigmaUserStorySection();
  
          // If the component exist
          if (alreadyExistHU?.["List of components"].find((listElement) => listElement === componentName) != undefined){
            const response = updateUserStoryStatus({
              userStoryName:componentName,
              status: element.huData.status,
            });
  
            // Send a figma notification 
            if (response == true) figma.notify("Se actualizo el estado de la historia N°" + element.huData.refNum);
            
            break;
          } else {
            // Create the UserStory component
            createUserStory({
              UserStoryName: element.huData.name,
              UserStoryRefNumber: element.huData.refNum.toString(),
              UserStoryStatus: element.huData.status,
              height: 5000,
              width: 8000,
              positionY: null,
              positionX: createPosition,
            });
            
            // Switch the position value into the new one, 
            // will be the same value + the width value 1500 of the component + 500 to create some space
            createPosition = createPosition + 9000;
  
            // Send a figma notification 
            figma.notify("No se pudo encontrar la historia N°" + element.huData.refNum + " para actualizarla, por lo que se creo") ;
            break;
          }
        
        // When the action is "attach_to_sprint"
        case "attach_to_sprint":
  
          console.log('Running attach_to_sprint')
          
          // This is the name of the Sprint page
          var figmaPage = "Sprint-" + element.huData.sprint!.name
  
          // Storage into a var, the page where has to be copied. If its null, we need to create the page
          var whereToCopy = figma.root.findOne(node => node.type == "PAGE" && node.name == figmaPage) as PageNode;
  
          // If cant find the page of the sprint, create one
          if (!whereToCopy){
            // Create the page
            whereToCopy = figma.createPage();
  
            // Change the name of the page
            whereToCopy.name = figmaPage;
  
            // send the notification
            figma.notify("Se creo la pagina " + figmaPage);
          }
  
          // Search the component with match with the name and type
          var componentToCopy = currentPage.findOne(node => node.name === componentName && node.type == "COMPONENT") as ComponentNode;
  
          // This is an aux, find the Section with the same name, and copy his size
          var copySectionSize = currentPage.findOne(node => node.name === componentName && node.type == "SECTION") as SectionNode;
  
          if (!componentToCopy){
            // Send a notification
            figma.notify("No se encontro el componente " + componentName + "... Creando");
  
            // Create the UserStory component
            createUserStory({
              UserStoryName: element.huData.name,
              UserStoryRefNumber: element.huData.refNum.toString(),
              UserStoryStatus: element.huData.status,
              height: 5000,
              width: 8000,
              positionY: null,
              positionX: createPosition,
            });
  
            // Switch the position value into the new one, 
            // will be the same value + the width value 1500 of the component + 500 to create some space
            createPosition = createPosition + 9000;
  
            // Send a figma notification 
            figma.notify("Se creo la historia de usuario N°: " + element.huData.refNum);
  
            // Now can find the component
            componentToCopy = figma.root.findOne(node => node.name === componentName && node.type == "COMPONENT") as ComponentNode;
            
            // And update the copySectionSize 
            copySectionSize = currentPage.findOne(node => node.name === componentName && node.type == "SECTION") as SectionNode;
          }
  
          // Try to find an element which are inside of the page and they are different to the section node, 
          // if cant find anyone, this will be undefined
          const sprintNodes = whereToCopy.findOne(node => node.name === componentName && node.type != "SECTION");
  
          // If the sprint page, doesn't have a child section node with that name
          if (sprintNodes == undefined) {
            const position = ReadSprintSectionsPos({
              sprintPage: figmaPage,
            });
  
            // Create an instance of the component with the same position
            const childComponent = componentToCopy.createInstance();
            childComponent.x = componentToCopy.x;
            childComponent.y = componentToCopy.y;
            
            // Create a new section node with the same name (We don't clone the old one, because have an component inside)
            const sectionNode = figma.createSection();
  
            // Change the name
            sectionNode.name = componentName;
            
            // Add the instance
            sectionNode.appendChild(childComponent);
            
            // Get the same size than the original
            sectionNode.resizeWithoutConstraints(copySectionSize.width, copySectionSize.height);
            
            // Get the new position
            sectionNode.x = position.x;
            sectionNode.y = position.y;
            
            // Remove the background color
            sectionNode.fills = [];
            
            // Append the section node to the sprint page
            whereToCopy.appendChild(sectionNode);
            
            // Send a notification
            figma.notify("Se agrego una instancia de: " + componentName + " en la pagina " + whereToCopy.name);
          }
          
          break;
          
        // Case for update the status card of the User Story
        case "update_hu_status_card":
            
          console.log('Running update_hu_status_card')
  
          // Find the user stories page
          const userStoriesPage = figma.root.findOne(node => node.type == "PAGE" && node.name == "UserStories") as PageNode;
          
          // Turn the fetched data into a map
          // This map will contain the stuff of status_card, if you want to know, how this exactly works
          // check the documentation of "Update User Story Status Card"
          const mappedData = JsonToMap(element.huData.statusCard);
          
          // Update the list of HU to prevent errors
          alreadyExistHU = ReadFigmaUserStorySection();
          
          // Try to find the HU, and if exist, try to find the status card
          if (alreadyExistHU?.["List of components"].find((listElement) => listElement === componentName) != undefined){
            
            const HU = userStoriesPage.findOne(node => node.type == "COMPONENT" && node.name == componentName) as ComponentNode;
            const mainFrame = HU.findChild(node => node.type == "FRAME" && node.name == componentName + " - Main Frame") as FrameNode;
            const statusCard = mainFrame.findChild(node => node.type == "FRAME" && node.name == componentName + " - Status") as FrameNode;
            const statusCardFrame = statusCard.findChild(node => node.type == "FRAME" && node.name == componentName + " - Status Card") as FrameNode;
            
            // If the status card already exist, replace it 
            if (statusCardFrame){
              // Create a new status card
              const group = await CreateStatusCard({
                cardGroupName: componentName,
                dataMap: mappedData,
              });
  
              // Set the position of the status card
              group.x = statusCardFrame.x;
              group.y = statusCardFrame.y;
              
              // Add the status card into the HU
              statusCard.appendChild(group);
              
              // Delete the old one
              statusCardFrame.remove();
  
              // Send a figma notification
              figma.notify("Se actualizo la tarjeta de estado de la HU N°" + element.huData.refNum);
  
              break;
            } 
  
            figma.notify("Error: No se encontro la tarjeta de estado de la HU N°" + element.huData.refNum);
  
            
            break;
  
          } else {
            // Create the UserStory component
            createUserStory({
              UserStoryName: element.huData.name,
              UserStoryRefNumber: element.huData.refNum.toString(),
              UserStoryStatus: element.huData.status,
              height: 5000,
              width: 8000,
              positionY: null,
              positionX: createPosition,
            });
  
            // Switch the position value into the new one, 
            // will be the same value + the width value 1500 of the component + 500 to create some space
            createPosition = createPosition + 9000;
  
            // Find the UserStory component, and then, go to the Status Card frame
            const HU = userStoriesPage.findOne(node => node.type == "COMPONENT" && node.name == componentName) as ComponentNode;
            const mainFrame = HU.findChild(node => node.type == "FRAME" && node.name == componentName + " - Main Frame") as FrameNode;
            const statusCard = mainFrame.findChild(node => node.type == "FRAME" && node.name == componentName + " - Status") as FrameNode;
            const statusCardFrame = statusCard.findChild(node => node.type == "FRAME" && node.name == componentName + " - Status Card") as FrameNode;
            
            // Once we can read the status card frame
            if (statusCardFrame){
              // Create a new status card
              const group = await CreateStatusCard({
                cardGroupName: componentName,
                dataMap: mappedData,
              });
  
              // Set the position of the status card
              group.x = statusCardFrame.x;
              group.y = statusCardFrame.y;
              
              // Add the status card into the HU
              statusCard.appendChild(group);
              
              // Delete the old one
              statusCardFrame.remove();
  
              // Send a figma notification
              figma.notify("No se pudo encontrar la historia N°" + element.huData.refNum + " para actualizarla su tarjeta de estado, por lo que se creo");
              break;
            } else {
              figma.notify("No se pudo encontrar la historia N°" + element.huData.refNum + " para actualizarla su tarjeta de estado, y ocurrio un error a la hora de crearla");
              break;
            }
          }
          
        // Case for update the ready for dev status of the User Story
        case "update_ready_for_dev_status":
  
          console.log('Running update_ready_for_dev_status')
  
          // Find all the sections on the project with the name of the component
          const huSections = figma.root.findAll(node => node.type == "SECTION" && node.name == componentName) as SectionNode[];
          
          
          // For each section find, we gonna change his status into true or false
          huSections.forEach(section => {
  
            // If the status is True
            if (element.huData.readyForDev == true && section.devStatus?.type != 'READY_FOR_DEV'){
              section.devStatus = { type: 'READY_FOR_DEV' };
              figma.notify("Se cambio el estado de: " + componentName + " a Ready for Dev");
            };
            // If the status is False
            if (element.huData.readyForDev == false && section.devStatus?.type != null) {
              section.devStatus = null;
              figma.notify("Se cambio el estado de: " + componentName + " a not ready")
            };
          });
  
          break;
      }
    })
    });
  } catch (error) {
    // If an error happened, create a log with the details
    console.log('error: '+ error);

    // Once the execution of the plugin ends, send a notification
    figma.notify('An error occurred while running the plugin, please watch the console for details');

  }

} 

// Run the plugin
main();

// 30 seconds on milliseconds
const closeTime = 0.5 * 60 * 1000; 

// This is used to kill the plugin
function closePlugin() {
  figma.notify('Closing Nidus Plugin')
  figma.closePlugin();
}

// Kill the plugin after 1m
setTimeout(closePlugin, closeTime);