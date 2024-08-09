// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  int id;
  String title;
  num price;
  String description;
  String image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });


  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ,
      title: map['title'] as String,
      price: map['price'] ,
      description: map['description'] as String,
      image: map['image'] as String,
    );
  }

}
