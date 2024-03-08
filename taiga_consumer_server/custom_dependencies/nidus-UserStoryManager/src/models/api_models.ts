//? This file contains the models which are used around the plugin, are two principals
//? ApiAnswer, which is used to Map the Answer of the API, into an object to be read after
//? the call into the API.
//?
//? ApiRequest, which is used to Map the Request body to the API.

//? Those models are exclusive for the project I've created and make the plugin work, making any
//? change into those models, will need a refactor of all the plugin. I recommend only add more stuff
//? And allow null into the stuff you're not going to use  

/// This ApiAnswer Interface is a model to map the ApiAnswer into something useful. 
/// Its the same model we have on dart but used on TypeScript.
export  interface ApiAnswer {
action: string;
huData: HuData;
isActive: boolean;
creationDate: string;
}

/// This model is used to format the ApiRequest, this a serverpod
/// valid format, and only can be used to one endpoint with the parameter
/// ProjectName, in case the endpoint receive a modification, this will
/// need also a modification to work
export interface ApiRequest {
    method: String;
    projectName: String;
}
   
/// This HuData Interface is one of the model used on the dart Server
/// and this is used to map the answer into a model.
interface HuData {
    name: string;
    refNum: number;
    status: string;
    readyForDev: boolean;
    sprint: Sprint | undefined;
    statusCard: StatusCard | undefined;
}

/// This StatusCard Interface is one of the model used on the dart Server
/// and this is used to map the answer into a model.  
export interface StatusCard {
    approved: {
        byUser: {
            fullName: string;
            userAvatar: string;
        };
        date: string;
    };
    development: {
        byUser: {
            fullName: string;
            userAvatar: string;
        };
        date: string;
    };
    internalTest: {
        byUser: {
            fullName: string;
            userAvatar: string;
        };
        date: string;
    };
    externalTest: {
        byUser: {
            fullName: string;
            userAvatar: string;
        };
        date: string;
    };
    amountOfDays: {
        preparation: string;
        development: string;
        approbation: string;
        finalApprobation: string;
        quality: string;
    };
};

/// This Sprint Interface is one of the model used on the dart Server
/// and this is used to map the answer into a model.  
interface Sprint {
    name: string;
};
