// This function is for loading the base font of the plugin, 
// this is required by Figma to work fine
export async function loadFont() {
    await figma.loadFontAsync({ family: "Inter", style: "Regular" });
}
