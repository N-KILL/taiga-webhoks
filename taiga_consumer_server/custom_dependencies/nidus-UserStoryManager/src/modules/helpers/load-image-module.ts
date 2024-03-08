// This function is to convert an image from his url into an ellipse
// Remind any external url where you can find the image, has to be 
// declared in the manifest.json file
export async function CreateAvatarFromUrl(options:{
    url: string
    width: number,
    height: number,
    name: string,
}) {
    const {url, width, height, name} = options
    await figma.createImageAsync(
        url
      ).then(async (image: Image) => {
        // Create node
        const avatar = figma.createEllipse()

        // Set the fill on the node
        avatar.fills = [
          {
            type: 'IMAGE',
            imageHash: image.hash,
            scaleMode: 'FILL'
          }
        ]

        // Set the size of the image with the values of the parameters
        avatar.resize(width, height);

        // Change the name of the avatar into the value of the parameters
        avatar.name = name;

    }).catch((error: any) => {
        console.log(error)
    })
};
  