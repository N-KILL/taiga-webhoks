import { createCustomText } from "./create-text-module";
import { CreateAvatarFromUrl } from "./helpers/load-image-module";

export async function CreateDateGroup(options: {
    avatarNodeName: string,
    date: string,
    user: string,
    userAvatar: string,
    type: string,
    textPosition: number
    textColorR: number,
    textColorG: number,
    textColorB: number,
}){
    // TODO: crer un archivo .config module en el cual guarde todas las variables fijas, ver si soporta .env

    // This will read the page where we want to storage all the User Stories
    const userStoryPage = figma.root.findOne(node => node.name === "UserStories") as PageNode;

    const {avatarNodeName, date, user, type, textPosition, userAvatar, textColorB, textColorG, textColorR} = options
    
    var typeName = null;

    // Here we gonna convert the value of the name into the one we need
    switch (type){

        // If the name is approved
        case "approved":
            typeName = "Aprobación";
            break;

        // If the name is approved
        case "development":
            typeName = "Desarrollo";
            break;

        // If the name is internalTest
        case "internalTest":
            typeName = "Testing int";
            break;

        // If the name is externalTest
        case "externalTest":
            typeName = "Aprobación final";
            break;
            
    } 

    // List to storage the nodes
    const groupList: BaseNode[] = [];   

    // This create an avatar, cant be read on a var, so we gonna read this by the node if it can be created
    await CreateAvatarFromUrl(
        {
            url: userAvatar,
            height: 100,
            width: 100,
            name: avatarNodeName + " avatar",
        });

    // Inside of the page of the User Stories, we re going to find the avatar, because the function will drop it there
    const avatar = userStoryPage.findChild(node => node.name == avatarNodeName + " avatar" && node.type == "ELLIPSE");
    
    // If can read the avatar set the position, and add into the GroupList
    if (avatar){
        avatar.x = 150;
        avatar.y = textPosition + 25;
        groupList.push(avatar);
    }

    // This is the date when the action was made
    const madeDate = createCustomText({
        colorB: textColorB,
        colorG: textColorG,
        colorR: textColorR,
        fontSize: 45,
        name: "Made Date",
        textContent: date,
        textPosX: 280,
        textPosY: textPosition,
    });
    madeDate.strokes =[
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


    // Action type its the text, with the action, can be approved, development, testing, approved final
    const actionType = createCustomText({
        colorB: textColorB,
        colorG: textColorG,
        colorR: textColorR,
        fontSize: 32,
        name: typeName,
        textContent: typeName+":",
        textPosX: 280,
        textPosY: textPosition + 55
    });

    // UserBy its the text, with the user who made the action
    const userBy = createCustomText({
        colorB: textColorB,
        colorG: textColorG,
        colorR: textColorR,
        fontSize: 32,
        name: typeName + "By",
        textContent: user,
        textPosX: 280,
        textPosY: textPosition + 94
    });

    // Then we gonna add the elements into the group list, to be added on the group later
    // If the avatar exist, return the group with the avatar, if there is an error reading the avatar
    // just return the group without the avatar
    groupList.push(madeDate, actionType, userBy);

    // Add this into a group called "<type>"-  this can be: Approved, development, Testing, Approved ext
    const statsGroup = figma.group(groupList, userStoryPage);
    if (typeName) {
        statsGroup.name = typeName;
    }

    return statsGroup;
}