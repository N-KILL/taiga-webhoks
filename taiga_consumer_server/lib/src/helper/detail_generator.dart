import 'package:taiga_rest_models/taiga_rest_models.dart';

/// [DetailGenerator] is used to generate the detail of a TaigaJobUpdate, when
/// a job receive an update. This will grab all the info of the TaigaChange,
/// and turn it into a usable description
String DetailGenerator({required TaigaChange data}) {
  // Var used to storage the String that we re going to return at the end of the
  // function
  var returnInfo;

  // If the comment have data
  if (data.comment != null) {
    returnInfo = returnInfo +
        'Nuevo comentario, detalles del comentario: ${data.comment}  \n';
  }

  //? Note: difference is used to storage all the diff made into a job
  // If the difference have data
  if (data.difference != null) {
    // TODO(Nacho): Ver cual de todos es requerido para el mail
    // De momento dejar funcionado los que considero necesario

    if (data.difference!.dueDate != null) {
      returnInfo = returnInfo +
          'Se modifico la fecha de vencimiento de ${data.difference!.dueDate!.oldValue} a ${data.difference!.dueDate!.newValue} \n';
    }
    if (data.difference!.status != null) {
      returnInfo = returnInfo +
          'Se modifico el estado de ${data.difference!.status!.oldValue} a ${data.difference!.status!.newValue} \n';
    }
    if (data.difference!.relatedSprint != null) {
      returnInfo = returnInfo +
          'Se modifico el sprint relacionado de ${data.difference!.relatedSprint!.oldValue} a ${data.difference!.relatedSprint!.newValue} \n';
    }
    if (data.difference!.descriptionDiff != null) {
      returnInfo = returnInfo + 'Se modifico la descripcion \n';
    }

    if (data.difference!.finishDate != null) {
      returnInfo = returnInfo +
          'Se modifico la fecha de finalizacion de ${data.difference!.finishDate!.oldValue} a ${data.difference!.finishDate!.newValue} \n';
    }
    if (data.difference!.promotedTo != null) {
      returnInfo = returnInfo +
          'Se promovio a ${data.difference!.promotedTo!.newValue} \n';
    }
  }

  return returnInfo;
}
