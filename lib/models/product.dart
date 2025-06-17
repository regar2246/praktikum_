import 'package:cloud_firestore/cloud_firestore.dart';


class Product {
  String id;
  String name;
  double price;

  Product({required this.id, required this.name, required this.price});

  factory Product.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Product(
      id: doc.id,
      name: data['name'] ?? '',
      price: data['price'] ?? 0.0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
    };
  }
}
