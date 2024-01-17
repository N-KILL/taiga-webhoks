String MessageGenerator({
  required String creationDate,
  required String jobType,
  required String projectName,
  required String jobDescription,
  required String jobName,
  required String type,
}) {
  if (type == 'create') {
    final message = '''
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

            /* Create a class which only display on screen size lower than 768px*/
            @media only screen and (min-width: 768px) {
            .mobile-only {
                display: none;
            }
            }

            /* Create a class which only display on screen size higher than 768px*/
            @media only screen and (max-width: 768px) {
            .desktop-only {
                display: none;
            }
            }
          </style>
    </head>
    <body>
        <img src="https://media.licdn.com/dms/image/D4D0BAQHqI1Z_2RFAxw/company-logo_200_200/0/1666121335245/nidus_dev_logo?e=1713398400&v=beta&t=W95VYfiZU_F84DFd_G2w3FgeuXeivoYG4Ktr0rA4_oU" alt="Logo de Nidus Dev">
        <div>
            <h1 class="desktop-only">Se creo un nuevo ${jobType} en el proyecto: ${projectName}</h1>
            <h2 class="mobile-only">Se creo un nuevo ${jobType} en el proyecto: ${projectName}</h2>
            <h1 class="desktop-only">Nombre del ${jobType}: ${jobName}</h1>
            <h2 class="mobile-only">Nombre del ${jobType}: ${jobName}</h2>
        </div>
        <div class="container">    
            <div></div>

            <div>
                <h2 class="desktop-only">Descipción del ${jobType}:</h2>
                <h3 class="mobile-only">Descipción del ${jobType}:</h3>
                <p>${jobDescription}</p>
            </div>

            <div></div>

        </div>
        <p>Fecha de creacion: ${creationDate}</p>
    </body>
</html>
''';
    return message;
  }
  return '';
}
