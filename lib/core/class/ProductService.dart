import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:new_batic/core/class/prodect.dart';

// Initialize Firestore
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// Define your collection reference
CollectionReference<Map<String, dynamic>> productsCollection =
    _firestore.collection('your_collection_name'); // Replace 'your_collection_name' with the actual name of your collection

Future<List<Product>> getProducts() async {
  try {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await productsCollection.get();

    return snapshot.docs.map((DocumentSnapshot<Map<String, dynamic>> doc) {
      Map<String, dynamic> data = doc.data()!;

      return Product(
        id: data['id'] ?? 0,
        images: List<String>.from(data['images'] ?? []),
        images2: List<String>.from(data['images2'] ?? []),
        colors: [], // You need to define colors based on your data structure
        title: data['title'] ?? '',
        price: (data['price'] ?? 0).toDouble(),
        description: data['description'] ?? '',
        bath: data['bath'] ?? 0,
        bed: data['bed'] ?? 0,
        square: (data['square'] ?? 0).toDouble(),
        // Handle nested data
        // Example:
        // nestedField: data['nested']?['nestedField'] ?? '',
        // Add other fields based on your data structure
      );
    }).toList();
  } catch (e) {
    print('Error fetching products: $e');
    return []; // Handle the error as needed
  }
}
