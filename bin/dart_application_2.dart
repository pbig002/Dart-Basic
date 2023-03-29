void main(List<String> args) {
  List<ProductModel> listProduct = [
    ProductModel(name: "product1", prize: 100, isActive: true),
    ProductModel(name: "product2", prize: 100, isActive: true),
    ProductModel(name: "product4", prize: 400, isActive: true),
    ProductModel(name: "product3", prize: 300, isActive: true),
  ];

  Iterable<ProductModel> selectProducts =
      listProduct.where((product) => product.name != "product2");

  for (ProductModel product in selectProducts) {
    print(
        'Name: ${product.name}, Prize: ${product.prize}, IsActive: ${product.isActive}, ');
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
