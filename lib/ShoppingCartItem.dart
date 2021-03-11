enum PizzaType { specialty, createyourown }
enum SpecialtyType {supreme, bbqGoat}

class ShoppingCartItem {
  PizzaType pizzaType;
  String specialtyType;
  String createYourOwnDetails;
  double price;
  String size;
  String crust;
  int quantity = 1;
  bool remove = false;
}
