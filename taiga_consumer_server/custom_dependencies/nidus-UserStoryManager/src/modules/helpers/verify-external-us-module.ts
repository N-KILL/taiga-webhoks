
// This function if for modify the opacity of the external elements inside of an User Story,
// For example: 
// The UserStory N°10, need to show other menu, before show the one who corresponds to the US
// So this menu, will be from an external US, so don't have to be coded. To prevent this, we
// decided to change the opacity os the external elements 
export function ModifyOpacityOfExternalUserStory(){
    // Read all the elements type component on the figma project
    const components = figma.root.findAll(node => node.type == "COMPONENT") as ComponentNode[];

    // For each component
    components.forEach(component => {

        // Divide the name of the component
        const componentName = component.name.split(" ");

        // Get the number of the HU (HU, names are: HU - <Num>)
        const componentNumber = componentName[2];
        
        // Get inside of the Design frame
        const mainFrame = component.findChild(node => node.name == "HU - " + componentNumber + " - Main Frame") as FrameNode;
        const designFrame = mainFrame.findChild(node => node.name == "HU - " + componentNumber + " - Design") as FrameNode;

        if (designFrame.children != null){
            // For each child of this component
            designFrame.children.forEach(child => {
                
                // If the child name start with HU
                if (child.name.substring(0,2) == "HU") {
                    
                    // Convert the child into a frame
                    const huFrame = child as FrameNode;
                    
                    // Divide the name of the child
                    const name = huFrame.name.split(" ");
                    
                    // Get the number of the child (HU, names are: HU - <Num>)
                    const number = name[2];
                    
                    // If the number of the frame is different
                    if (number != componentNumber){
                        
                        // If the opacity is different to 30%, have to use substring, 30% its like 0,30000000001
                        if (huFrame.opacity.toString().substring(0,3) != "0.3"){

                            // Change the opacity of the frame into 0.3
                            huFrame.opacity = 0.3
                            
                            // Send a notification
                            figma.notify("Se cambio la opacidad del frame: HU - " + number + " ,dentro de la HU N° "+ component.name);
                        }
                    }
                }
            }); 
        }
   });
}