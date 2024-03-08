import { Green, Yellow, Red, White} from "../colors-module";

// This function is an aux to the days counter module, and return a color based on the value and type
// if type its null returns based on a scale of 0 to 7, if the type is quality the scale will be 0 to 3

export function dayCounterColorSelector (options:{
    value: number,
    type: string | null,
}){
    // This are the parameters of the function
    const { value, type } = options;

    // If the type is quality 
    if (type === "quality"){
        
        // Force enter in the switch
        switch (true) {
            // If the value is 0
            case value == 0:

                // return a white color
                return White;

            // If the value is 0
            case value == 1:

                // return a green color
                return Green;

            // If the value is 2    
            case value === 2:

                // return a yellow color
                return Yellow;

            // If the value is 3    
            case value === 3:

                // return a red color
                return Red;
          }
          
    } 
    
    // If type is not quality, will run this
    else {
        switch (true) {
            // If the value is equal to 0
            case value == 0:

                // return a white color
                return White;

            // If the value is higher or equal to 1, and lower or equal to 3
            case value >= 1 && value <= 3:

                // return a green color
                return Green;

            // If the value is higher or equal to 4, and lower or equal to 6
            case value >= 4 && value <= 6:
                // return a yellow color
                return Yellow;
                
            // If the value is higher or equal to 7
            case value >= 7:

                // return a red color
                return Red;
        }
    }

    // This value will never returns because, always enter in the else if the type is not quality,
    // but its needed to prevent the "undefined" return type of the function
    return White;
}