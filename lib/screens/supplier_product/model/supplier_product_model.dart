import 'dart:convert';

class SupplierProductRequest {
  final int id;
  final String name;
  final int categoryId;
  final int expectedPrice;
  final String location;
  final String description;
  final String preservation;
  final List<String> images;
  final List<String> certificateImages;

  SupplierProductRequest(
      {required this.id,
      required this.name,
      required this.categoryId,
      required this.expectedPrice,
      required this.location,
      required this.description,
      required this.preservation,
      required this.images,
      required this.certificateImages});

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "categoryID": categoryId,
      "expectedPrice": expectedPrice,
      "location": location,
      "description": description,
      "preservation": preservation,
      "images": images,
      "certificateImages": certificateImages
    };
  }
}
