// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future chatViewMessage(DocumentReference servicesRef) async {
  CollectionReference chatCollection = servicesRef.collection('chat');
  // Consultar documentos que cumplen con las condiciones
  QuerySnapshot resultadoConsulta = await chatCollection
      .where('view_message', isEqualTo: false)
      .where('type_user', isEqualTo: 0)
      .get();
  // Actualizar cada documento encontrado
  for (QueryDocumentSnapshot documento in resultadoConsulta.docs) {
    // Obtener la referencia del documento en la subcolección "chat"
    DocumentReference referenciaDocumento = chatCollection.doc(documento.id);
    // Actualizar el campo 'view_message' a true
    await referenciaDocumento.update({'view_message': true});
  }
}
