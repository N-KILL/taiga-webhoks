import { Refinandose, Ilustrandose, Aprobandose, Pesandose, Lista, Postergado, Nueva, Desarrolandose, Teasteandose, UAT, Cerrada } from "./colors-module";

// This function is for update the status of an user story, modify
// the text, and the color of the box, based on the name of the user story
export function updateUserStoryStatus(options:{
    userStoryName: string,
    status: string,
}){
    const { userStoryName, status} = options;

    // Aux to store the color
    var Color = null;

    // Set the color based on the status of the user story
    switch (status) {
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

    const groupName = userStoryName + " - Status Border"
    const rectangleName = "Rectangle"
    const statusName = userStoryName + " Status"

    // Find the component to be modified by his name an store it into a const called modify
    const modify = figma.root.findOne(node => node.type == "COMPONENT" && node.name === userStoryName) as ComponentNode;

    // Inside of the modify children, we re looking for the main
    const designGroup = modify.children.find((children) => children.name === groupName) as GroupNode;

    // If cant read the design group will return a notification and a false value
    if (!designGroup){
        figma.notify("Error: No se encontro el grupo: " + groupName + " dentro de " + userStoryName)
        return false;
    }

    // Read the rectangle component inside of the designGroup
    const rectangle = designGroup.children.find((children) => children.name === rectangleName) as RectangleNode;
    
    // If can read the rectangle will change the color if not send a notification
    // and return false
    if (rectangle){
    // Change the color of the strokes
    rectangle.strokes = [{ 
        type: 'SOLID',
            color: { 
            r: Color != null ? Color!.r : 0, 
            g: Color != null ? Color!.g : 0,  
            b: Color != null ? Color!.b : 0   
            },  
            visible: true,
            opacity: 1, 
        }];
    } else {
        figma.notify("Error: No se encontro el componente: " + rectangleName + " dentro de " + userStoryName)
        return false;
    }

    // Read the status text component inside of the design group
    const statusText = designGroup.children.find((children) => children.name === statusName) as TextNode;

    // If can read the status text will change the color and the content if not send a notification
    // and return false
    if (statusText){
        // Change the color of the text
        statusText.fills = [{ 
            type: 'SOLID',
                color: { 
                r: Color != null ? Color!.r : 0, 
                g: Color != null ? Color!.g : 0,  
                b: Color != null ? Color!.b : 0   
                },  
                visible: true,
                opacity: 1, 
            }];

        // change the content
        statusText.characters = status
    } else {
        figma.notify("Error: No se encontro el componente: " + rectangleName + " dentro de " + userStoryName)
        return false; 
    }


    return true;
}