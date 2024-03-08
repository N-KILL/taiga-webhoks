// Convert JSON element into Map<string, any>
export function JsonToMap(JSON: any): Map<string, any> {
    const map = new Map<string, any>();
    for (const key in JSON) {
        if (JSON.hasOwnProperty(key)) {
            map.set(key, JSON[key]);
        }
    }
    return map;
}