/// ***********************************************************************
///**NAMES: Cole DeBoer, Mary DeBoer, Jacob Doudna, Akhil Jain          ***
///**CLASS: SE 330                                                      ***
///**ASSIGNMENT: Project 1                                              ***
///**DUE DATE: 3/22/2021                                                ***
///**INSTRUCTOR: Mr. Gamradt                                            ***
///************************************************************************
///**FILE: ShoppingCartItem.dart                                        ***
///************************************************************************
///**DESCRIPTION: Saves the data of an instance.                        ***
///************************************************************************/

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
  String imageName;
}
