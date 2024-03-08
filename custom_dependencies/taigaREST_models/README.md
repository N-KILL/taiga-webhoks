# Taiga Rest Models

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

--- 

## <ins> About </ins>

TaigaRest models is a package created to consume the data from Taiga (<https://tree.taiga.io>) webhooks, and put it
inside of Dart models, to use it on a custom project. 

We are using dart_mappable models (<https://pub.dev/packages/dart_mappable>)  


## <ins> TO-DO LIST </ins>
- [ ] Create a mapper or function to read the custom fields, and make it an object (Now is `Map<String,Dynamic>`)
- [ ] End the function to validate signature, the actual its not working


## <ins> How to use (?) </ins>

Install the package adding this into your dependencies
```
taiga_rest_models:
    git:
      url: https://github.com/Eficetti/taigaREST_models.git
```

Once is installed, you have to connect the taiga webhooks to your project on Dart (There is a guide about how to do it: <https://docs.taiga.io/webhooks-configuration.html#_developing_your_own_integration>), once it is connected, you have to decode the data using the 'dart:convert' library (<https://api.dart.dev/stable/3.2.1/dart-convert/dart-convert-library.html>) and then use the fromJson method of the TaigaPayload model.   

### <ins> There is an example of the route where the webhook is hitting: </ins>
In this example we are using a serverpod project (<https://serverpod.dev/>)
```
import 'dart:convert';
import 'dart:io';

import 'package:taiga_rest_models/taiga_rest_models.dart';

class RouteRoot extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {

    // Here is the data we want to convert into an our TaigaPayload Model
    final decodedBody = await utf8.decodeStream(request); 

    // This is just the response we give, don't mind about it
    final body = json.decode(decodedBody);
    
    // Convert the webhook payload into a dart model using the 'fromJson' 
    //method inside of taigaPayload
    final payload = TaigaPayload.fromJson(decodedBody);
    
    // Add your custom code to manage what to do after generate the model
    print(payload);

    return WebHooksView(webhookData: body);
  }
}
```

This will create the model with all the data you receive from Taiga. Is recommended to validate this data before using it, but this feature is pending. If you want to do it by yourself: <https://docs.taiga.io/webhooks.html#_verify_signature>  

## <ins> How to use custom fields (?) </ins>
For using custom fields of taiga (<https://community.taiga.io/t/can-i-add-new-custom-fields-to-my-project/150>) by the moment you have to create a custom model, with a mapper, we recommend using dart_mappable models (<https://pub.dev/packages/dart_mappable>).

### <ins> There is an example about how to do it: </ins>

```
import 'package:dart_mappable/dart_mappable.dart';

part 'my_custom_fields.mapper.dart';

/// Documentation for your `MyCustomFields` class
@MappableClass()
class MyCustomFields with MyCustomFieldsMappable{
    MyCustomFields({
        this.yourField,
    });

    /// Remind that you have different types of field on `Taiga`
    /// Text can be read as [String]
    /// Multi-line can be read as [String]
    /// Rich-text can be read as [String]
    /// Date can be read as [DateTime]
    /// Url can be read as [String]
    /// Dropdown can be read as [String]
    /// Checkbox can be read as [bool]
    /// Number can be read as [num]
    /// Documentation for your field
    @MappableField(key: 'Name of your field on Taiga')
    String? yourField; 

    /// FromJson method, convert a json type object into this
    /// `MyCustomFields` Object
    static const fromJson = MyCustomFieldsMapper.fromJson;
}
```

Note: You need build_runner package (https://pub.dev/packages/build_runner) to do this!
Remind the @MappableField(key: 'Name of your field on Taiga') is how it came from the Taiga webhook, and it will be the exact same name you put in your custom fields configuration on your Taiga project. Once you have done, then you have to generate the mappable models using:  
```
dart run build_runner build --delete-conflicting-outputs  
```

Then when you want to read your custom fields, you have call the fromJson method

```
import 'MyCustomFields.dart'

// Here is the other part of the code where you receive the payload data from Taiga

// And here is where you map your custom fields
MyCustomFields.fromJson(jsonEncode(youPayload.data.customValues))
```
---

## <ins> Working with the data </ins>  
To understand this models you need to know, the payload of Taiga webhook, always came with the same values:
(Docs: https://docs.taiga.io/webhooks.html#_test_payload)  
{  
    "action": "",  
    "type": "",  
    "by": {}  
    "date": ""  
    "data": {},  
    "change": {}  
}  

### <ins> Explaining those values</ins>  

- *Action* (In the models appears as '**actionType**') field contains notification type with values: "create", "delete", "change" or "test".  

- *Type* (In the models appears as '**jobType**') field contains the type of object with values: "milestone", "userstory", "task", "issue", "epic", "wikipage" or "test".  

- *By* (In the models appears as '**performer**') field contains the information of the user that generate the notification.  

- *Date* field contains the date and time of the current notification.  

- *Data* field contains the current object information.  

- *Change* field (only present on change notifications) contains the information about the changes made.  

### <ins> Explaining Data </ins>

Data can came as different types based on the type (Named as **jobType** on the models) of payload, so when you need to use this data you will have to convert into the correct dataType:
Once this is done you can work with the data as the way you want

```
/// Payload will be the data you receive from the Taiga Webhook  
final payload = TaigaPayload.fromJson(decodedBody);

// Convert your data into the correct dataType based on the each jobType 
    if (payload.jobType == 'epic') {
        TaigaEpicData payloadData = payload.data as TaigaEpicData;
    }
    if (payload.jobType == 'task') {
        TaigaTaskData payloadData = payload.data as TaigaTaskData;
    }
    if (payload.jobType == 'issue') {
        TaigaIssueData payloadData = payload.data as TaigaIssueData;
    }
    if (payload.jobType == 'userstory') {
        TaigaUserStoryData payloadData = payload.data as TaigaUserStoryData;
    }
    if (payload.jobType == 'milestone') {
        TaigaSprintData payloadData = payload.data as TaigaSprintData;
    }
    if (payload.jobType == 'wikipage') {
        TaigaWikiPageData payloadData = payload.data as TaigaWikiPageData;
    }

``` 

---

## Examples

### In this case is type `userstory`. 
So if you want to create an object of this payload you have to read it, and save it into a var, in this cas we're going to storage this as a map and then transform into a json with the `dart:convert` package
```
import 'dart:convert';

import 'package:taiga_consumer_server/src/models/my_custom_fields.dart';
import 'package:taiga_rest_models/taiga_rest_models.dart';

void main() {
    // Generate the object
    final payload = TaigaPayload.fromJson(jsonEncode(payloadData));

    // Convert your data into the correct dataType
    if (payload.jobType == 'epic') {
    TaigaEpicData payloadData = payload.data as TaigaEpicData;

    // Then if customValues exist, print them
    if (payloadData.customValues!.isNotEmpty) {
        print("This are my custom fields");
        print(MyCustomFields.fromJson(jsonEncode(payloadData.customValues)));
    }
    }
    if (payload.jobType == 'task') {
    TaigaTaskData payloadData = payload.data as TaigaTaskData;

    // Then if customValues exist, print them
    if (payloadData.customValues!.isNotEmpty) {
        print("This are my custom fields");
        print(MyCustomFields.fromJson(jsonEncode(payloadData.customValues)));
    }
    }
    if (payload.jobType == 'issue') {
    TaigaIssueData payloadData = payload.data as TaigaIssueData;

    // Then if customValues exist, print them
    if (payloadData.customValues!.isNotEmpty) {
        print("This are my custom fields");
        print(MyCustomFields.fromJson(jsonEncode(payloadData.customValues)));
    }
    }
    if (payload.jobType == 'userstory') {
    TaigaUserStoryData payloadData = payload.data as TaigaUserStoryData;

    // Then if customValues exist, print them
    if (payloadData.customValues!.isNotEmpty) {
        print("This are my custom fields");
        print(MyCustomFields.fromJson(jsonEncode(payloadData.customValues)));
    }
    }
    if (payload.jobType == 'milestone') {
    TaigaSprintData payloadData = payload.data as TaigaSprintData;
    }
    if (payload.jobType == 'wikipage') {
    TaigaWikiPageData payloadData = payload.data as TaigaWikiPageData;
    }

    // Print the data

    print("This is my payload Data");
    print(payloadData);
}

final payloadData = {
  "type": "userstory",
  "date": "2016-04-12T12:17:20.486Z",
  "action": "create",
  "data": {
    "custom_attributes_values": {
      "Name of your field on Taiga": "Your field value"
    },
    "due_date": null,
    "due_date_reason": "",
    "watchers": [],
    "permalink": "http://localhost:9001/project/project-0/us/72",
    "tags": ["dolorum", "adipisci", "ipsa"],
    "external_reference": null,
    "project": {
      "id": 1,
      "permalink": "http://localhost:9001/project/project-0",
      "name": "Project Example 0",
      "logo_big_url": null
    },
    "owner": {
      "id": 6,
      "permalink": "http://localhost:9001/profile/user1",
      "username": "user1",
      "full_name": "Purificacion Montero",
      "photo": "//media.taiga.io/avatar.80x80_q85_crop.png",
      "gravatar_id": "464bb6d514c3ecece1b87136ceeda1da"
    },
    "assigned_to": null,
    "assigned_users": [],
    "points": [
      {"role": "UX", "name": "5", "value": 5.0},
      {"role": "Design", "name": "1", "value": 1.0},
      {"role": "Front", "name": "3", "value": 3.0},
      {"role": "Back", "name": "40", "value": 40.0}
    ],
    "status": {
      "id": 1,
      "name": "New",
      "slug": "new",
      "color": "#999999",
      "is_closed": false,
      "is_archived": false
    },
    "milestone": null,
    "id": 139,
    "is_blocked": true,
    "blocked_note": "Blocked test message",
    "ref": 72,
    "is_closed": false,
    "created_date": "2016-04-12T12:17:19+0000",
    "modified_date": "2016-04-12T12:17:19+0000",
    "finish_date": null,
    "subject": "test user story 5",
    "description": "this is a test description",
    "client_requirement": false,
    "team_requirement": true,
    "generated_from_issue": null,
    "tribe_gig": null
  },
  "by": {
    "id": 6,
    "permalink": "http://localhost:9001/profile/user1",
    "username": "user1",
    "full_name": "Purificacion Montero",
    "photo": "//media.taiga.io/avatar.80x80_q85_crop.png",
    "gravatar_id": "464bb6d514c3ecece1b87136ceeda1da"
  }
};
```



## Installation 💻

**❗ In order to start using Taiga Rest Models you must have the [Dart SDK][dart_install_link] installed on your machine.**

Install via `dart pub add`:

```sh
dart pub add taiga_rest_models
```

---

## Continuous Integration 🤖

Taiga Rest Models comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link].

---

## Running Tests 🧪

To run all unit tests:

```sh
dart pub global activate coverage 1.2.0
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
