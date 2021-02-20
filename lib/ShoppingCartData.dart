import 'package:flutter/material.dart';
import 'package:pizza_ordering_app/ShoppingCartItem.dart';

class StateShoppingCartData extends StatefulWidget {
  final Widget child;
  final List<ShoppingCartItem> cart;

  const StateShoppingCartData({
    Key key,
    @required this.child,
    this.cart,
  }) : super(key: key);

  @override
  __StateShoppingCartDataState createState() => __StateShoppingCartDataState();
}

class __StateShoppingCartDataState extends State<StateShoppingCartData> {
  List<ShoppingCartItem> cart = [];

  getCart() {
    return cart;
  }

  void updateCart(List<ShoppingCartItem> updatedCart) {
    setState(() {
      cart = updatedCart;
    });
  }

  void addCartItem(ShoppingCartItem item) {
    setState(() => cart.add(item));
  }

  @override
  Widget build(BuildContext context) => ShoppingCartData(
      child: widget.child, cart: cart, stateShoppingCartData: this);
}

class ShoppingCartData extends InheritedWidget {
  final List<ShoppingCartItem> cart;
  final __StateShoppingCartDataState stateShoppingCartData;

  const ShoppingCartData({
    Key key,
    @required Widget child,
    @required this.cart,
    @required this.stateShoppingCartData,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ShoppingCartData oldWidget) => oldWidget.cart != cart;

  static __StateShoppingCartDataState of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<ShoppingCartData>()
      .stateShoppingCartData;
}
