// This function is for reading the position of f
export function ReadSprintSectionsPos(options: {
    sprintPage: string,
}){

    // Read the function parameters
    const  { sprintPage,} = options;

    // Default values
    var xValue = 0;
    var yValue = 0;

    // Get the page of the sprint
    const sprintNode = figma.root.findOne(node => node.name == sprintPage && node.type == "PAGE") as PageNode;

    // For each child inside of the sprint page
    sprintNode.children.forEach(child => {
        
        // If the type of the child, is section and the value of x is higher
        if (child.type == "SECTION" && child.x >= xValue){
            // Set the value of x into,the position of the child + his width + 1000px for spacing
            xValue = child.x + child.width + 1000;
            yValue = child.y;
        }
    });

    return {
        "x": xValue,
        "y": yValue,
    };
}