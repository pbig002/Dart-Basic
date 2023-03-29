void main(List<String> args) {
  List<ProductModel> listProduct = [
    ProductModel(name: "product1", prize: 100, isActive: true),
    ProductModel(name: "product2", prize: 200, isActive: true),
    ProductModel(name: "product3", prize: 300, isActive: true),
  ];

  listProduct.removeWhere((product) => product.name == "product1");

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
