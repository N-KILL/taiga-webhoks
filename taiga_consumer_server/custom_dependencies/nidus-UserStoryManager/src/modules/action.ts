import { ApiAnswer, ApiRequest } from "../models/api_models";

/// This fetchProjectData is the function who made the request into the server
/// and get the data, then map the data into ApiAnswer model (Check the import for more info)
export function fetchProjectData(url: string, data: ApiRequest): Promise<ApiAnswer[]> {
  // Fetch into the url of the params
  return fetch(url, { 
    // Method 'POST', because 'GET' doesn't allow body 
    method: 'POST',
    // Say the body will be type JSON
    headers: {
      'Content-Type': 'application/json'
    },
    // Create a body with the data as ApiRequest to JSON
    body: JSON.stringify(data)
  })
    // Once whe have the response
    .then(response => {
      // If the response is an error code
      if (!response.ok) {
        // Notify an error
        figma.notify('Error al obtener los datos desde el servidor');

        // Print on console the response
        console.error('Error:', response);
      }

      // If everything is ok, will return the response as ApiAnswer List
      return response.json() as Promise<ApiAnswer[]>;
    })
    // If there is an error when executing fetch
    .catch(error => {
        // Notify an error
        figma.notify('Error al obtener los datos desde el servidor');

        // Print on console the error details
        console.error('The function fails, this is the error detail:', error);
        figma.closePlugin();
        return []
    });
}

// This can be used to Test the plugin on local
export const data = [
  {
      "id": 1,
      "action": "create_hu",
      "huDataId": 1,
      "huData": {
          "id": 1,
          "name": "New HU",
          "refNum": 184,
          "status": "NUEVA",
          "readyForDev": false
      },
      "isActive": true,
      "creationDate": "2024-02-05T15:21:01.251404Z",
      "projectId": 1
  },
  {
      "id": 2,
      "action": "create_hu",
      "huDataId": 2,
      "huData": {
          "id": 2,
          "name": "New refinandose",
          "refNum": 185,
          "status": "REFINANDOSE",
          "readyForDev": false
      },
      "isActive": true,
      "creationDate": "2024-02-05T15:58:40.223244Z",
      "projectId": 1
  },
  {
      "id": 3,
      "action": "create_hu",
      "huDataId": 3,
      "huData": {
          "id": 3,
          "name": "new ilustrandose",
          "refNum": 186,
          "status": "ILUSTRANDOSE",
          "readyForDev": false
      },
      "isActive": true,
      "creationDate": "2024-02-05T15:58:46.993350Z",
      "projectId": 1
  },
  {
      "id": 4,
      "action": "create_hu",
      "huDataId": 4,
      "huData": {
          "id": 4,
          "name": "new aprobandose",
          "refNum": 187,
          "status": "APROBANDOSE",
          "readyForDev": false
      },
      "isActive": true,
      "creationDate": "2024-02-05T15:58:52.194738Z",
      "projectId": 1
  },
  {
      "id": 5,
      "action": "create_hu",
      "huDataId": 5,
      "huData": {
          "id": 5,
          "name": "new pesandose",
          "refNum": 188,
          "status": "PESANDOSE",
          "readyForDev": false
      },
      "isActive": true,
      "creationDate": "2024-02-05T15:58:58.154435Z",
      "projectId": 1
  },
  {
      "id": 6,
      "action": "create_hu",
      "huDataId": 6,
      "huData": {
          "id": 6,
          "name": "new lista",
          "refNum": 189,
          "status": "LISTA",
          "readyForDev": false
      },
      "isActive": true,
      "creationDate": "2024-02-05T15:59:02.512417Z",
      "projectId": 1
  },
  {
      "action": "attach_to_sprint",
      "huData": {
          "name": "Generated",
          "refNum": 190,
          "status": "POSTERGADO",
          "readyForDev": false,
          "sprint": {
              "name": "figma",
              "taigaId": 1
          },
          "statusCard": {
              "approved": {
                  "date": "2024-02-06 "
              },
              "development": {
                  "byUser": {
                      "username": "development",
                      "userAvatar": "https://img.freepik.com/foto-gratis/hoja-naturaleza-fondos-patron-ilustracion-planta-telon-fondo-diseno-abstracto-naturaleza-verde-vibrante-papel-tapiz-ilustracion-generativa-ai_188544-12680.jpg?w=1380&t=st=1703263023~exp=1703263623~hmac=3c102b813f6e932205c51ab73a9734de0de2a09d889ec82832ea33c89374ba9b",
                      "taigaId": 1,
                      "gitHubId": 1,
                      "gitLabId": 1
                  },
                  "date": "2024-02-06 "
              },
              "internalTest": {
                  "date": "2024-02-06 "
              },
              "externalTest": {
                  "byUser": {
                      "username": "externalTest",
                      "userAvatar": "https://img.freepik.com/foto-gratis/belleza-naturaleza-refleja-aguas-tranquilas-montanas-ia-generativa_188544-7867.jpg?w=1380&t=st=1703263062~exp=1703263662~hmac=7c6ffc2a21b13cf5b60dbf3142ac98e156c3ef4669ae6d83a35dc6ade3299a62",
                      "taigaId": 1,
                      "gitHubId": 1,
                      "gitLabId": 1
                  },
                  "date": "2024-02-06 "
              },
              "amountOfDays": {
                  "preparation": "1",
                  "development": "1",
                  "approbation": "1",
                  "finalApprobation": "1",
                  "quality": "1+3"
              }
          }
      },
      "isActive": false,
      "creationDate": "2024-02-06T13:22:49.085253Z",
      "projectId": 1
  }
];