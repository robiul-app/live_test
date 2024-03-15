void main() {

  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];


  void displayFruitDetails(List<Map<String, dynamic>> fruitsList) {
    for (var fruit in fruitsList) {
      print(
          "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
    }
    print("");
  }


  void applyPriceDiscount(List<Map<String, dynamic>> fruitsList, double discount) {
    for (var fruit in fruitsList) {
      double newPrice = fruit['price'] * (1 - discount / 100);
      fruit['price'] = newPrice.toStringAsFixed(2); 
    }
  }


  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);


  applyPriceDiscount(fruits, 10);


  print("Fruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}
