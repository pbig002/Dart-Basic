void main(List<String> args) {
  List<ProductModel> listProduct = [
    ProductModel(name: "product1", prize: 100, isActive: true),
    ProductModel(name: "product2", prize: 200, isActive: true),
    ProductModel(name: "product3", prize: 300, isActive: true),
  ];

  Iterable<ProductModel> filterResults =
      listProduct.where((element) => element.prize >= 200).toList();

  for (ProductModel product in filterResults) {
    print(
        'Name: ${product.name}, Prize: ${product.prize}, IsActive: ${product.isActive}');
  }
}

Iterable<ProductModel> filterProducts(
    List<ProductModel> products, int minPrize) {
  return products.where((product) => product.prize >= minPrize);
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
