void main(List<String> args) {
  List<ProductModel> listProduct = [
    ProductModel(name: "product1", prize: 100, isActive: true),
    ProductModel(name: "product2", prize: 100, isActive: true),
    ProductModel(name: "product3", prize: 300, isActive: true),
  ];

  // ProductModel? product2 = listProduct.firstWhere(
  //   (product) => product.name == "product2",
  //   // orElse: () => null,
  // );

  // if (product2 != null) {
  //   product2.isActive = false;
  // }
  for (int i = 0; i < listProduct.length; i++) {
    if (listProduct[i].name == "product2") {
      listProduct[i].isActive = false;
    }
  }
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
