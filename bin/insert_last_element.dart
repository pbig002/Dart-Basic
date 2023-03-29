void main(List<String> args) {
  List<ProductModel> listProduct = [
    ProductModel(name: "prodct1", prize: 100, isActive: true),
    ProductModel(name: "prodct2", prize: 200, isActive: true),
    ProductModel(name: "prodct3", prize: 300, isActive: true),
  ];

  listProduct.add(ProductModel(name: "Product0", prize: 50, isActive: true));

  for (ProductModel product in listProduct) {
    print(
        'Name: ${product.name}, Prize: ${product.prize}, IsActive: ${product.isActive}');
  }
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
