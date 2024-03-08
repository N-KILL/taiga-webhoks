import { ApiRequest } from "./models/api_models";

// Create the body for the request to the API
export const bodyData: ApiRequest = {
  method: "figmaResponse",
  projectName: figma.root.name
};

// This is the url of the API from where we re getting the data.
//? Note: If you modify this, remind to add the new url path in manifest.json
export const apiUrl = 'https://taiga-webhoks-production.up.railway.app/figma';