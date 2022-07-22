class ComputerEntity {
  //Atributos 
  String model;
  String brand;
  double price;
  int quantity;
  bool isNew;

  ComputerEntity({
    required this.model,
    required this.brand,
    required this.price,
    required this.quantity,
    required this.isNew,
  });

  bool priceIsValid() {
    if (price > 0) {
      return true;
    } else {
      return false;
    }
  }
  
}
