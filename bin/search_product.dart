import 'dart:io';

void main(List<String> args) {
  List<ProductModel> listProduct = [
    ProductModel(name: "product1", prize: 100, isActive: true),
    ProductModel(name: "product2", prize: 1000, isActive: true),
    ProductModel(name: "product3", prize: 300, isActive: true),
    ProductModel(name: "proT1pro", prize: 400, isActive: true),
  ];
  List<ProductModel> searchProduct = listProduct
      .where(
          (element) => element.name.toLowerCase().contains("t1".toLowerCase()))
      .toList();
  print(searchProduct.length);
  print(searchProduct[0].name);
  print(searchProduct[1].name);
}

class ProductModel {
  String name;
  int prize;
  bool isActive;
  ProductModel({
    required this.name,
    required this.prize,
    required this.isActive,
  });
}
