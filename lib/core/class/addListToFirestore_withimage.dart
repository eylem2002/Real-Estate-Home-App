  import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addListToFirestore_withimage(
      List<Map<String, dynamic>> dataList, List<String> imageUrls,List <String>imges_home ) async {
    try {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection('House');

      await collectionReference.doc().set({
        'dataList': dataList,
        
        'imges_home':imges_home,
        'imageUrls': imageUrls,
      });

      print('List of maps and image URLs added to Firestore.');
    } catch (error) {
      print('Error adding list to Firestore: $error');
    }
  }