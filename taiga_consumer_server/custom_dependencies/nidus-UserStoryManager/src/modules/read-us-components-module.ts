// This will read all the Section Nodes where his name start with "HU" 
// And read his position on the figma, storing the max Horizontal position (X value).
// And return the list of Section Nodes + the max x value
export function ReadFigmaUserStorySection(){

    // Get the user stories page
    const userStoriesPage = figma.root.findOne(node => node.type == "PAGE" && node.name == "UserStories") as PageNode;

    var UserStoryMaxX = 0;
    var UserStoryMaxWithWidth = 0;
    
    // This is a list to store all the UserStory names
    const userStoryList = [] as String[];

    // Read all the Section Nodes of the project, and store it into a pages const var
    const components = userStoriesPage.findAll(node => node.type == "SECTION") as ComponentNode[];
    
    // forEach loop, to manage the Nodes
    components.forEach(component => {

        // We re going to read the first 2 characters, and compare into "HU"
        if (component.name.substring(0,2) === "HU"){
            
            // Now we gonna compare the hightest X position and store in a var
            // that will be returned at the last of the function
            if (component.x >= UserStoryMaxX){

                // Change the value of UserStoryMaxX and UserStoryMaxWithWidth
                UserStoryMaxX = component.x;

                // We store, the X position + the width of this component
                UserStoryMaxWithWidth = component.x + component.width;

            };
            
            // We add the name of the HU component, to the list to be returned
            userStoryList.push(component.name);
        };
    });

    // If exist any component with the HU name, will be saved on the userStoryList
    // So if the list have any item, will return the data
    if (userStoryList.length > 0){
        return {
            "Highest HU":UserStoryMaxWithWidth,
            "List of components": userStoryList,
        };
    };
}