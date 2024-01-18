/// This class [MessageGenerator] Is for
class MessageGenerator {
  /// [taigaCreateMessageNotification] is meant for the 'instance of creation'
  /// of Taiga, when you create something inside of a project, that notification
  /// message have to be mapped with this function
  String taigaCreateMessageNotification({
    required String creationDate,
    required String jobType,
    required String projectName,
    required String jobDescription,
    required String jobName,
    required String type,
  }) {
    var aNew = 'una  nueva';
    var of = 'de la';

    // Modify the value of the vars, to be accord to his next word
    if (jobType == 'issue') {
      aNew = 'un nuevo';
      of = 'del';
    }

    final message = '''
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nidus Dev Automatic Message</title>
        <style>
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

            /* Estilo para los elementos al pasar el ratón por encima */
            li:hover {
            background-color: #d4d4d4;
            }

            /* Manage what happen on resolution highers than 1200px of width */
            @media only screen and (min-width: 1200px) {
            /* Create a class which only display on screen size higher than 1200px of width*/
            .mobile-only {
                display: none;
            }
            /* Set the image size*/
            img {
                max-width: 100%; 
                height: 15%;
                width: 15%;
                display: block; 
                margin: 0 auto; 
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

            /* Manage what happen on resolution lowers than 1200px of width */
            @media only screen and (max-width: 1200px) {
            /* Set the image size*/
            img {
                max-width: 100%; 
                height: 25%;
                width: 25%;
                display: block; 
                margin: 0 auto; 
            }

            /* Create a class which only display on screen size lower than 1200px of width*/
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
          </style>
    </head>
    <body>
        <img src="https://media.licdn.com/dms/image/D4D0BAQHqI1Z_2RFAxw/company-logo_200_200/0/1666121335245/nidus_dev_logo?e=1713398400&v=beta&t=W95VYfiZU_F84DFd_G2w3FgeuXeivoYG4Ktr0rA4_oU" alt="Logo de Nidus Dev">
        <div>
            <h1 class="desktop-only">Se creo ${aNew} ${jobType} en el proyecto: ${projectName}</h1>
            <h2 class="mobile-only">Se creo ${aNew} ${jobType} en el proyecto: ${projectName}</h2>
            <h2 class="desktop-only">Nombre ${of} ${jobType}: ${jobName}</h2>
            <h3 class="mobile-only">Nombre ${of} ${jobType}: ${jobName}</h3>
        </div>
        <div class="container">    
            <div></div>

            <div>
                <h2 class="desktop-only">Descipción ${of} ${jobType}:</h2>
                <h3 class="mobile-only">Descipción ${of} ${jobType}:</h3>
                <p>${jobDescription}</p>
            </div>

            <div></div>

        </div>
        <p>Fecha de creación: ${creationDate}</p>
    </body>
</html>
''';
    return message;
  }

  /// [taigaUpdateMessageNotification] is meant for the 'instance of update'
  /// of Taiga, when you update something inside of a project, that notification
  /// message have to be mapped with this function
  String? taigaUpdateMessageNotification({
    required String modifiedDate,
    required String jobType,
    required String projectName,
    required String refNumber,
    required String jobName,
    required String type,
    // This are not required because not always you change all of these
    // But at least need one of them
    String? statusFrom,
    String? statusTo,
    String? nameFrom,
    String? nameTo,
    String? newDescription,
  }) {
    var the = 'la';
    var change = null;

    if (jobType == 'issue') {
      the = 'el';
    }

    /// If there is any change
    if (statusFrom != null ||
        statusTo != null ||
        nameFrom != null ||
        nameTo != null ||
        newDescription != null) {
      change = '''
<ul>
<ul>
''';
    }

    if (statusFrom != null && statusTo != null) {
      change = change +
          '''
<li> Se modifico el estado de "${statusFrom}" a "${statusTo}"</li>
''';
    }

    if (nameFrom != null && nameTo != null) {
      change = change +
          '''
<li>Se modifico el nombre de "${nameFrom}" a "${nameTo}"</li>
''';
    }

    if (newDescription != null) {
      change = change +
          '''
<li>Se modifico la descripcion a:" ${newDescription}"</li>
''';
    }

    final message = '''
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nidus Dev Automatic Message</title>
        <style>
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

            /* Estilo para los elementos al pasar el ratón por encima */
            li:hover {
            background-color: #d4d4d4;
            }

            /* Manage what happen on resolution highers than 1200px of width */
            @media only screen and (min-width: 1200px) {
            /* Create a class which only display on screen size higher than 1200px of width*/
            .mobile-only {
                display: none;
            }
            /* Set the image size*/
            img {
                max-width: 100%; 
                height: 15%;
                width: 15%;
                display: block; 
                margin: 0 auto; 
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

            /* Manage what happen on resolution lowers than 1200px of width */
            @media only screen and (max-width: 1200px) {
            /* Set the image size*/
            img {
                max-width: 100%; 
                height: 25%;
                width: 25%;
                display: block; 
                margin: 0 auto; 
            }

            /* Create a class which only display on screen size lower than 1200px of width*/
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
          </style>
    </head>
    <body>
        <img src="https://media.licdn.com/dms/image/D4D0BAQHqI1Z_2RFAxw/company-logo_200_200/0/1666121335245/nidus_dev_logo?e=1713398400&v=beta&t=W95VYfiZU_F84DFd_G2w3FgeuXeivoYG4Ktr0rA4_oU" alt="Logo de Nidus Dev">
        <div>
            <h1 class="desktop-only">Se actualizo ${the} ${jobType} n°${refNumber}, ${jobName} en el proyecto: ${projectName}</h1>
            <h2 class="mobile-only">Se actualizo ${the} ${jobType} n°${refNumber}, ${jobName} en el proyecto: ${projectName}</h2>
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
                  ${change}
            </div>

            <div></div>

        </div>
        <p>Fecha de modificación: ${modifiedDate} </p>
    </body>
</html>
''';

    // If any valuable change exist
    if (change != null) {
      // The message will have valuable values, and need to be returned
      return message;
    } else {
      // The message is doesn't have valuable values, and don't need a return
      return null;
    }
  }
}
