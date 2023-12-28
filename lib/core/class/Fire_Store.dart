import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addListToFirestore(List<Map<String, dynamic>> dataList) async {
    
  try {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('House');


 await collectionReference.doc().set({
      'dataList': dataList,
    });
 print('List of maps added to Firestore.');
  } catch (error) {
    print('Error adding list to Firestore: $error');
  }
}
