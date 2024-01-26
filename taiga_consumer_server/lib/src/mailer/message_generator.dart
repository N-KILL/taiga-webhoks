import 'package:taiga_consumer_server/src/endpoints/taiga_job_updates_endpoint.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_job_updates.dart';
import 'package:taiga_consumer_server/src/generated/protocol/taiga/taiga_project.dart';

/// This class [MessageGenerator]
///
/// Is used to generate the message of the emails
/// having functions which generate messages based on different parameters.
class MessageGenerator {
  /// <h3> [taigaCreateUpdateMessageNotification] </h3>
  ///
  /// Create an `html` format message to send inside of an `email`, this message
  /// if for notify job updates. You can filter this updates by the [project]
  /// parameter, and the time of the update based on the
  /// [TaigaJobUpdateEndpoint.readFilteringByEpoch] `endpoint`
  ///
  /// <hr>
  ///
  /// ! `Important` This is meant to be used with the data, we receive from the
  /// [TaigaJobUpdateEndpoint.readFilteringByEpoch] or any other which have the
  /// insert parameter to bring the data of the job related into the update
  /// instance.
  ///
  /// If you're trying to use this, maybe it breaks, because can't read any job
  /// detail related to an update instance. This need at least one per jobId.
  String? taigaCreateUpdateMessageNotification({
    required List<TaigaJobUpdates> jobUpdateList,
    required TaigaProject project,
  }) {
    // Create a var to store the message, will be empty at first
    String message = '';

    // Aux list to store all the job ids related to this job update
    List<int> listOfJobId = [];

    // List to store all the jobs, will have the same amount of elements than
    // listOfJobId and will be in the same order.
    List<TaigaJob> listOfJob = [];

    // List to store all the details related to a job
    List<String> detailList = [];

    // First of all we remove all elements with id different
    jobUpdateList
        .removeWhere((element) => element.job!.projectId != project.id);

    // We sort the list based on the jobId, so we re going to have our list like
    // this:
    // [item with JobId = 1, item with JobId = 1, item with JobId = 3]
    jobUpdateList.sort(
      (a, b) => a.jobId.compareTo(b.jobId),
    );

    // For each JobUpdate inside of the list
    for (final jobUpdate in jobUpdateList) {
      // We re going to grab all the id of the job related to an update, letting
      // us an aux list
      if (!listOfJobId.contains(jobUpdate.jobId) && jobUpdate.job != null) {
        listOfJobId.add(jobUpdate.jobId);
        listOfJob.add(jobUpdate.job!);
      }
    }

    // This modifier, is to store the index of the element
    int idAuxModifier = 0;

    // This is an aux which contains a value of the id list, the idea is rotate
    // this value, every time the function doesn't match this id
    int idAux = listOfJobId[0];

    // Aux to store the details, this will be a single long string separated
    // with line breaks: '\n', that we re going to store on detailList, at the
    // moment the id doesn't match
    String detailElement = '';

    //? This will get a remain of a DetailList with all the details of an issue
    //? based on if id. Index 0, will be the first id of the id list

    // For each JobUpdate inside of the list
    for (var jobUpdate in jobUpdateList) {
      // If the id its the same as the Aux, we re going to add the details to a
      // var called detailElement
      if (jobUpdate.jobId == idAux) {
        // Add the details into the var, creating a long string
        detailElement = detailElement + jobUpdate.details + '\n';
      } else {
        // Add the var with the long string into a list with all the details
        detailList.add(detailElement);

        // Add one into idAuxModifier
        idAuxModifier = idAuxModifier + 1;

        // Modify the idAux var, to grab the next element
        idAux = listOfJobId[idAuxModifier];

        // Set the detailElement into a void the details of the new element and
        // keep going
        detailElement = jobUpdate.details + '\n';
      }
    }

    // Add the last detailElement into the list because the for loop, does't
    // handle the last one
    detailList.add(detailElement);

    // Create a for loop, which is going to generate all the information that
    // we re going to put in the message. As you can see, this is generating
    // one under the other. Generating a single string on HTML inside of the
    // message var
    for (var elementIndex = 0;
        elementIndex < listOfJob.length;
        elementIndex++) {
      // This is the job
      final job = listOfJob[elementIndex];

      // This is the details of the update the job have received in a list
      // format
      final jobUpdateDetails = detailList[elementIndex].split('\n');
      jobUpdateDetails.remove('');

      // Aux to store the detail on html format
      var detailHtml = '';

      for (var jobUpdateDetail in jobUpdateDetails) {
        detailHtml =
            detailHtml + '<p class="desktop-only"> $jobUpdateDetail</p>';
      }

      // Generate the message with the detail on it
      message = message +
          '''
                <h2 class="desktop-only"> ${job.type.toUpperCase()} N°#${job.taigaRefNumber}: ${job.title} </h2>
                <h3 class="mobile-only"> ${job.type.toUpperCase()} N°#${job.taigaRefNumber}: ${job.title} </h3>
                <div class="containerTwo">
                <h3 class="desktop-only"> Descipción:</h3>
                <h3 class="desktop-only"> ${job.description} </h3>
                <h3 class="desktop-only "> Estado: ${job.status} </h3>
                <h4 class="mobile-only"> Descipción:</h4>
                <h4 class="mobile-only"> ${job.description} </h4>
                <h4 class="mobile-only "> Estado: ${job.status} </h4>
                </div>
                <div class="dropdown">
                  <button> Ver historial de cambios (${jobUpdateDetails.length}): </button>
                      <div class="dropdown-content">
                        $detailHtml
                      </div>
                </div>
      ''';
    }

    // If the message is empty, return null. Otherwise return the message
    if (message == '') {
      return null;
    } else {
      String baseMsg = '''
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nidus Dev Automatic Message</title>
        <style>
            /* Set the image size*/
            img {
                max-width: 100%; 
                height: 15%;
                width: 15%;
                display: block; 
                margin: 0 auto; 
            }

            /* Set the body alignment into center*/
            body {
                text-align: center;
            }

            /* Create a class container, which have 3 grids, the middle one have 50% size*/
            .container {
                display: grid;
                grid-template-columns: 1fr 2fr 1fr;
                gap: 20px; 
                margin: 0 auto; 
                text-align: center;
            }

            /* Create a class container, which have 3 grids, the middle one have 50% size*/
                .containerTwo {
                display: grid;
                grid-template-columns: 1fr 3fr 1fr;
                gap: 20px; 
                margin: 0 auto; 
                text-align: center;
            }

            /* List Style */
            ul {
            list-style-type: none;
            padding: 0;
            }

            /* Manage what happen on resolution highers than 768px of width */
            @media only screen and (min-width: 768px) {
            /* Create a class which only display on screen size higher than 768px of width*/
            .mobile-only {
                display: none;
            }
            /* List element Style */
            li {
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 25px;
            }
            }

            /* Manage what happen on resolution lowers than 768px of width */
            @media only screen and (max-width: 768px) {
            /* Create a class which only display on screen size lower than 768px of width*/
            .desktop-only {
                display: none;
            }
            /* List element Style */
            li {
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 15px;
            }
            }
            
            /* Dropdown style */
            .dropdown {
            position: relative;
            display: inline-block;
            width: 100%;
            }

            /* Dropdown button style */
            .dropdown button {
            background-color: #0a74ba;
            width: 100%;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            }

            /* Dropdown button style */
            .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            width: 100%;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            }

            /* Dropdown content with <p> tag */
            .dropdown-content p {
            background-color: #0a74ba;
            color: white;
            padding: 10px;
            }

            /* Dropdown button, modify the state of the dropdown content when pressed */
            .dropdown button:focus + .dropdown-content {
            display: block;
            }
            
          </style>
    </head>
    <body>
        <img src="https://media.licdn.com/dms/image/D4D0BAQHqI1Z_2RFAxw/company-logo_200_200/0/1666121335245/nidus_dev_logo?e=1713398400&v=beta&t=W95VYfiZU_F84DFd_G2w3FgeuXeivoYG4Ktr0rA4_oU" alt="Logo de Nidus Dev">
        <div>
            <h1 class="desktop-only"> Estos son los ultimos cambios en el proyecto: ${project.title} </h1>
            <h1 class="mobile-only"> Estos son los ultimos cambios en el proyecto: ${project.title} </h1>
        </div>
        <div class="container">    
            <div></div>

            <div>
                <h2 class="desktop-only">Cambios realizados:</h2>
                <h3 class="mobile-only">Cambios realizados:</h3>
            </div>

            <div></div>

        </div>

        <div class="containerTwo">    
            <div></div>

            <div>
                $message
            </div>

            <div></div>

        </div>
    </body>
</html>
''';
      return baseMsg;
    }
  }
}
