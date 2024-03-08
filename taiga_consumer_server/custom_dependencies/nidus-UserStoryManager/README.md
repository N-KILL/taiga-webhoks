# NIDUS PLUGIN
## How this works? 
This plugin fetch and API with the name of the project:  
GET my-api/projects/`<project-name>`

And work with the payload, doing task automatically, the payload has to came as a list, of actions
```
[
  {
    "action": "create_hu",
    "hu_data":{
      "name": "Nombre de una HU",
      "ref_num": 1,
      "status": "NEW"
      "ready_for_dev": false,   //Default values
      "sprint": null,           //Default values
      }
  },
]
```

## Payload and tasks  

----------------------------------------
### **CREATE USER STORY**
----------------------------------------

#### API Data
This is how the code expect to receive the data from the API

```
"action": "create_hu",
"hu_data":{
  "name": "Nombre de una HU",
  "ref_num": 1,
  "status": "NEW"
  "ready_for_dev": false,   //Default values
  "sprint": null,           //Default values
}
```

#### Structure on Figma
This is how the `PLUGIN` will create the `User Story` inside of the figma project

To see the types of nodes of figma, check this link: https://www.figma.com/plugin-docs/api/nodes/

- `SECTION NODE`(HU - `ref_num`):
  - `COMPONENT NODE` (HU - `ref_num`):
    - `GROUP NODE` (HU - Design):
      - `FRAME NODE` (Design frame):
        1. `RECTANGLE NODE` (HU - `ref_num` Rectangle Status)
        2. `TEXT NODE` (HU - `ref_num` Status)
        3. `TEXT NODE` (HU - `ref_num` Title)

----------------------------------------
### **UPDATE USER STORY STATUS**
----------------------------------------

Figma will modify the user story based on the ref number, and his type. 
Using the function `figma.room.findOne` like this:
```
figma.root.findOne(node => node.type == "COMPONENT" && node.name === HU - `ref_num`);
```

Then enter on the children nodes looking for the `RECTANGLE NODE` called `HU - <ref_num> Rectangle Status` and the
`TEXT NODE` called `HU - <ref_num> Status`, to modify his content and color.
Example: 
*ORIGINAL*
1. `RECTANGLE NODE`: Color = `ILUSTRANDOSE`
2. `TEXT NODE`: COLOR = `ILUSTRANDOSE`, TEXT = `ILUSTRANDOSE`

*MODIFIED*
1. `RECTANGLE NODE`: Color = `LISTA`
2. `TEXT NODE`: COLOR = `LISTA`, TEXT = `LISTA`

#### API Data
This is how the code expect to receive the data from the API

```
"action": "update_hu_status",
"hu_data":{
  "name": "Nombre de una HU",
  "ref_num": 5,
  "status": "LISTA",
  "ready_for_dev": false,   //Default values
  "sprint": null,           //Default values
}
```

#### Figma changes
- `SECTION NODE`(HU - `ref_num`):
  - `COMPONENT NODE` (HU - `ref_num`):
    - `GROUP NODE` (HU - Design):
      - `FRAME NODE` (Design frame):
        1. `RECTANGLE NODE` (HU - `ref_num` Rectangle Status) - THE COLOR WILL RECEIVE A MODIFICATION
        2. `TEXT NODE` (HU - `ref_num` Status)                - THE COLOR AND THE TEXT WILL RECEIVE A MODIFICATION
        3. `TEXT NODE` (HU - `ref_num` Title)

----------------------------------------
### **Attach User Story to an Sprint**
----------------------------------------

This first will verify if the `Figma page` with the name of the `Sprint - <Sprint-num>` exist, using:
```
const figmaPage = "Sprint-" + sprint
figma.root.findOne(node => node.type == "PAGE" && node.name == figmaPage)
```
if do not exist, this `will create the Sprint PAGE automatically`, like the create User Story.

Then verify if the User Story we gonna copy, exist, if not `will create the User Story automatically`, like the create User Story.

Then verify is already exist a `SECTION NODE` with the same name. (To prevent keep running). If not, will create an `INSTANCE NODE` of the
`COMPONENT NODE` of the User Story, then create a new section with the same name, and attach the instance. This will, manage automatically
the position of the nodes.


#### API Data
```
"action": "attach_to_sprint",
"hu_data":{
  "name": "Nombre de una HU",
  "ref_num": 5,
  "status": "APROBANDOSE",
  "ready_for_dev": false,   //Default values
  "sprint": 2, 
}
```
#### Figma changes
- `COMPONENT PAGES`:
  - `SECTION NODE` (HU - `ref_num`):
    - `COMPONENT NODE` (HU - `ref_num`):
      - `<Content>`

- `SPRINT PAGE`:
  - `SECTION NODE` (HU - `ref_num`):
    - `INSTANCE NODE` (HU - `ref_num`):
      - `<Content>`

----------------------------------------
### **Create/Update status card**
----------------------------------------
This will create or update an status card inside of the `COMPONENT NODE` of the user story with the same ref number. This will be made
by the `CreateStatusCard` function.

#### API Data
```
{
  "action": "update_hu_status_card",
  "hu_data":{
    "name": "Nombre de una HU",
    "ref_num": 3,
    "status": "LISTA",
    "ready_for_dev": false,
    "sprint": null,
    "status_card":{
      "approved":{
        "by_user":{
          "name": "HU 3 Approved by",
          "user_avatar": "https://img.freepik.com/foto-gratis/pintura-lago-montana-montana-al-fondo_188544-9126.jpg?size=626&ext=jpg&ga=GA1.1.1687694167.1703203200&semt=sph"
          // Add more user data
        },
        "date": "12/12/2025",
      },
      "development":{
        "by_user":{
          "name": "HU 3 DEV",
          "user_avatar":"https://img.freepik.com/foto-gratis/fondo-pantalla-abstracto-humo-color-diseno-fondo-estetico_53876-128271.jpg?w=1380&t=st=1703690624~exp=1703691224~hmac=7273cf8507cbc24decee4a1666c01f46c097ceb24bf71b0a4908e67baf4e184e"
          // Add more user data
        },
        "date": "1/1/2026",
      },
      "internal_test":{
        "by_user":{
          "name": "HU 3 Tester",
          "user_avatar": "https://img.freepik.com/foto-gratis/amanecer-escenico-altas-montanas-alpes-ia-generativa_191095-494.jpg?w=1380&t=st=1703690638~exp=1703691238~hmac=2ca49906a138eb6ecb73359794198d9b2fba5b950fc8c62b19482b79f12c6380"
          // Add more user data
        },
        "date": "1/1/2026",
      },
      "external_test":{
        "by_user":{
          "name": "HU 3 EXT Tester",
          "user_avatar": "https://img.freepik.com/foto-gratis/hermosa-toma-aerea-montanas-fronalpstock-suiza-hermoso-cielo-rosa-azul_181624-9315.jpg?w=1380&t=st=1703690671~exp=1703691271~hmac=29fdabbed158760c439f85ec6684141226d6e8b50c738ab49187fa412df72a5b"
          // Add more user data
        },
        "date": "1/1/2026",
      },
      "amount_of_days":{
        "preparation": "3",
        "development": "4",
        "approbation": "2",
        "final_approbation": "2",
        "quality": "2+1",
      }
    }
  }
}
```
#### Figma changes
- `COMPONENT PAGES`:
  - `SECTION NODE` (HU - `ref_num`):
    - `COMPONENT NODE` (HU - `ref_num`):
      - `FRAME NODE` (HU - `ref_num` - Status Card)
      - `GROUP NODE` (HU - `ref_num` - Design)


----------------------------------------
### **UPDATE ready for dev status of the USER STORY**
----------------------------------------
For each user story, this plugin has created a `SECTION NODE` which has the ability to show a READY FOR DEV status,
so this function, look for all the `SECTION NODES` with the name of `HU - <ref_num>` on the project, and change the
status, based on the api data.


#### API Data
```
{
  "action": "update_ready_for_dev_status",
  "hu_data":{
    "name": "Nombre de una HU",
    "ref_num": 3,
    "status": "REFINANDOSE",
    "ready_for_dev": true,
    "sprint": null,
  }
}
```
#### Figma changes
- `COMPONENT PAGES`:
  - `SECTION NODE` (HU - `ref_num`) > !Status


----------------------------------------


Below are the steps to get your plugin running. You can also find instructions at:

  https://www.figma.com/plugin-docs/plugin-quickstart-guide/

This plugin template uses Typescript and NPM, two standard tools in creating JavaScript applications.

First, download Node.js which comes with NPM. This will allow you to install TypeScript and other
libraries. You can find the download link here:

  https://nodejs.org/en/download/

Next, install TypeScript using the command:

  npm install -g typescript

Finally, in the directory of your plugin, get the latest type definitions for the plugin API by running:

  npm install --save-dev @figma/plugin-typings

If you are familiar with JavaScript, TypeScript will look very familiar. In fact, valid JavaScript code
is already valid Typescript code.

TypeScript adds type annotations to variables. This allows code editors such as Visual Studio Code
to provide information about the Figma API while you are writing code, as well as help catch bugs
you previously didn't notice.

For more information, visit https://www.typescriptlang.org/

Using TypeScript requires a compiler to convert TypeScript (code.ts) into JavaScript (code.js)
for the browser to run.

